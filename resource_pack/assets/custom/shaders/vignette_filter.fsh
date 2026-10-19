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
float hash21(vec2 p) {
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}
float vnoise(vec2 p) {
    vec2 i = floor(p), f = fract(p);
    f = f * f * (3.0 - 2.0 * f);
    float a = hash21(i);
    float b = hash21(i + vec2(1.0, 0.0));
    float c = hash21(i + vec2(0.0, 1.0));
    float d = hash21(i + vec2(1.0, 1.0));
    return mix(mix(a, b, f.x), mix(c, d, f.x), f.y);
}
float luma(vec3 c) { return dot(c, vec3(0.299, 0.587, 0.114)); }
void main() {
    vec2 uv = texCoord * 2.0 - 1.0;
    uv.x *= ScreenSize.x / ScreenSize.y;
    float t = GameTime;
    float cycle = fract(t * 0.9);
    float pulse  = pow(1.0 - cycle, 4.0);
    float pulse2 = pow(1.0 - fract(t * 0.9 + 0.78), 7.0);
    float ripple = sin(t * 2.2) * 0.02;
    float heartbeat = pulse * 0.20 + pulse2 * 0.08 + ripple;
    float angle = atan(uv.y, uv.x);
    float r     = length(uv);
    float tendrils = sin(angle * 5.0 + t * 1.2) * 0.07
                   + cos(angle * 8.0 - t * 1.8) * 0.04
                   + sin(angle * 13.0 + t * 0.7) * 0.02;
    float n  = (vnoise(uv * 3.5 + t * 0.4) - 0.5) * 0.05;
    float dist = r + heartbeat + tendrils + n;
    float innerR = clamp(0.42 - heartbeat * 0.28, 0.18, 0.65);
    float outerR = clamp(1.40 - heartbeat * 0.45, 0.90, 1.80);
    float v = smoothstep(innerR, outerR, dist);
    float vignette = clamp(1.0 - v, 0.02, 1.0);
    vec4  src     = texture(InSampler, texCoord);
    vec3  scene   = src.rgb;
    float lum0    = luma(scene);
    float maxC    = max(scene.r, max(scene.g, scene.b));
    float minC    = min(scene.r, min(scene.g, scene.b));
    float chroma  = maxC - minC;
    float brightMask  = smoothstep(0.55, 1.00, lum0);          
    float chromaMask  = smoothstep(0.20, 0.65, chroma);        
    float coreMask    = clamp(brightMask + chromaMask, 0.0, 1.0);
    float glitchPulse = 0.35 + heartbeat * 2.2;
    float band = step(0.86, vnoise(vec2(texCoord.y * 90.0, floor(t * 22.0))));
    float tear = band * coreMask * (0.006 + heartbeat * 0.012);
    vec2  dir   = r > 0.0001 ? uv / r : vec2(0.0);
    float split = (0.0022 + heartbeat * 0.012) * coreMask * glitchPulse;
    vec2 uvR = texCoord - dir * split + vec2( tear, 0.0);
    vec2 uvB = texCoord + dir * split - vec2( tear, 0.0);
    scene.r = mix(scene.r, texture(InSampler, uvR).r, coreMask);
    scene.b = mix(scene.b, texture(InSampler, uvB).b, coreMask);
    scene   += vec3(coreMask * heartbeat * 0.05);
    float edge = smoothstep(0.20, 1.20, r);
    float ab   = (0.005 + heartbeat * 0.018) * edge;
    scene.r = mix(scene.r, texture(InSampler, texCoord - dir * ab).r, edge);
    scene.b = mix(scene.b, texture(InSampler, texCoord + dir * ab).b, edge);
    float lum   = luma(scene);
    float pMask = smoothstep(0.62, 1.00, lum);            
    float center = 1.0 - smoothstep(0.20, 1.10, r) * 0.65;
    float boost  = 1.0 + pMask * (0.55 + heartbeat * 1.8) * center;
    scene *= boost;
    vec2 px = 1.0 / OutSize;
    float glowN = 0.0;
    glowN += smoothstep(0.70, 1.0, luma(texture(InSampler, texCoord + vec2( px.x, 0.0)).rgb));
    glowN += smoothstep(0.70, 1.0, luma(texture(InSampler, texCoord + vec2(-px.x, 0.0)).rgb));
    glowN += smoothstep(0.70, 1.0, luma(texture(InSampler, texCoord + vec2(0.0,  px.y)).rgb));
    glowN += smoothstep(0.70, 1.0, luma(texture(InSampler, texCoord + vec2(0.0, -px.y)).rgb));
    glowN *= 0.25;
    scene += scene * glowN * 0.35;
    float lR = luma(texture(InSampler, texCoord + vec2( px.x, 0.0)).rgb);
    float lL = luma(texture(InSampler, texCoord + vec2(-px.x, 0.0)).rgb);
    float lU = luma(texture(InSampler, texCoord + vec2(0.0,  px.y)).rgb);
    float lD = luma(texture(InSampler, texCoord + vec2(0.0, -px.y)).rgb);
    float localDetail = abs(lR - lL) + abs(lU - lD);
    float objectMask = smoothstep(0.30, 0.95, localDetail) * (1.0 - smoothstep(0.75, 1.0, lum));
    float shadow = 1.0 - objectMask * 0.22 * (0.9 + heartbeat * 1.2);
    scene *= clamp(shadow, 0.55, 1.0);
    float gray = luma(scene);
    vec3 abyssTint = vec3(gray * 0.80, gray * 0.82, gray * 0.98);
    float desat = 1.0 - vignette;
    vec3 color = mix(scene, abyssTint, desat * 0.85);
    color *= vignette;
    fragColor = vec4(color, src.a);
}
