#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    // 1. Экранные координаты с коррекцией соотношения сторон
    vec2 uv = texCoord * 2.0 - 1.0;
    uv.x *= ScreenSize.x / ScreenSize.y;
    
    // 2. Двойная органическая пульсация бездны (сердцебиение Бездны)
    float time = GameTime * 2.2;
    float heartbeat = sin(time) * 0.15 + sin(time * 2.0 + 0.5) * 0.08;
    
    // 3. Угловые щупальца Пустоты (Hollow Knight Void Tendrils)
    float angle = atan(uv.y, uv.x);
    float tendrils = sin(angle * 5.0 + time * 1.2) * 0.07 
                   + cos(angle * 8.0 - time * 1.8) * 0.04;
    
    float distance = length(uv) + heartbeat + tendrils;
    
    // 4. Динамическое смыкание виньетки
    float innerRadius = clamp(0.40 - heartbeat * 0.22, 0.20, 0.60);
    float outerRadius = clamp(1.30 - heartbeat * 0.30, 0.85, 1.60);
    
    float vignette = smoothstep(innerRadius, outerRadius, distance);
    vignette = 1.0 - vignette;
    vignette = clamp(vignette, 0.01, 1.0);
    
    // 5. Пульсирующая хроматическая аберрация по краям
    float aberrIntensity = 0.007 + clamp(heartbeat + 0.15, 0.0, 0.35) * 0.016;
    float distortionPower = smoothstep(0.25, 1.2, length(uv)) * aberrIntensity;
    
    vec2 centerOffset = texCoord - 0.5;
    float centerDist = length(centerOffset);
    vec2 distortDir = centerDist > 0.0001 ? centerOffset / centerDist : vec2(0.0);
    vec2 redUV  = texCoord - distortDir * distortionPower;
    vec2 blueUV = texCoord + distortDir * distortionPower;
    
    float r = texture(InSampler, redUV).r;
    float g = texture(InSampler, texCoord).g;
    float b = texture(InSampler, blueUV).b;
    vec4 sceneColor = vec4(r, g, b, 1.0);
    
    // 6. Обесцвечивание и поглощение света бездной
    float gray = dot(sceneColor.rgb, vec3(0.299, 0.587, 0.114));
    vec3 abyssalColor = mix(sceneColor.rgb, vec3(gray * 0.85, gray * 0.85, gray * 0.95), 1.0 - vignette);
    
    // Финальный цвет с затемнением
    fragColor = vec4(abyssalColor * vignette, sceneColor.a);
}
