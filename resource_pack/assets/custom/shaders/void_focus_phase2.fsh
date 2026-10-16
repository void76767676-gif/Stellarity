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
    vec4 src = texture(InSampler, texCoord);
    vec2 uv = (texCoord - 0.5) * 2.0;
    uv.x *= ScreenSize.x / ScreenSize.y;
    float dist = length(uv);

    // Умеренное затемнение и лёгкая хроматическая аберрация (2-я фаза)
    float pulse = 0.08 * sin(GameTime * 3.5);
    float vignette = smoothstep(1.15 + pulse, 0.35, dist);
    vignette = clamp(vignette, 0.25, 1.0);

    vec2 dir = dist > 0.001 ? uv / dist : vec2(0.0);
    float r = texture(InSampler, texCoord + dir * 0.003).r;
    float g = src.g;
    float b = texture(InSampler, texCoord - dir * 0.003).b;

    vec3 color = vec3(r, g, b) * vignette;
    fragColor = vec4(color, src.a);
}
