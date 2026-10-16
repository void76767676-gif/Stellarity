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

    // Спад: мягкая рассеивающаяся тень
    float vignette = smoothstep(1.5, 0.65, dist);
    vignette = clamp(vignette, 0.65, 1.0);

    vec3 color = src.rgb * vignette;
    fragColor = vec4(color, src.a);
}
