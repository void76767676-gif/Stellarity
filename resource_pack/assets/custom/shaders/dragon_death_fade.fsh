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
    vec2 center = vec2(0.5);
    vec2 delta = texCoord - center;
    vec2 aspectDelta = delta;
    aspectDelta.x *= ScreenSize.x / ScreenSize.y;
    float dist = length(aspectDelta);

    vec4 src = texture(InSampler, texCoord);
    vec3 astralTint = vec3(1.10, 0.95, 1.20);
    float vignette = 0.35 * (1.0 - smoothstep(0.2, 1.4, dist));
    vec3 result = mix(src.rgb, src.rgb * astralTint, vignette);
    result += vec3(0.18, 0.12, 0.22) * vignette;

    fragColor = vec4(result, src.a);
}
