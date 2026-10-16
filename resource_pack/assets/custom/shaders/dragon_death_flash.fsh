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

    float shift = 0.008 * (1.0 + dist * 1.5);
    float r = texture(InSampler, texCoord + delta * shift * 20.0).r;
    float g = texture(InSampler, texCoord).g;
    float b = texture(InSampler, texCoord - delta * shift * 20.0).b;
    float a = texture(InSampler, texCoord).a;
    vec3 chromatic = vec3(r, g, b);

    vec3 flashColor = vec3(1.25, 1.18, 1.40);
    float intensity = 0.85 + 0.15 * (1.0 - smoothstep(0.0, 1.2, dist));
    vec3 result = mix(chromatic, flashColor, intensity);

    fragColor = vec4(result, a);
}
