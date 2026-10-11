#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>

uniform sampler2D In;
uniform sampler2D Glow;

uniform float Time;
uniform float Progress;    // 0..1 — появление → затухание
uniform float Intensity;   // 0..1 — общая сила
uniform vec3  GlowColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec4 scene = texture(In, texCoord);

    // Лёгкая пульсация и центрирование спрайта
    vec2 uv = texCoord - 0.5;
    float pulse = 1.0 + sin(Time * 4.0) * 0.04;
    uv /= pulse;
    uv += 0.5;

    // 0 → 1 → 0
    float fade = sin(clamp(Progress, 0.0, 1.0) * 3.14159265);

    vec4 glow = texture(Glow, uv);
    vec3 add  = glow.rgb * GlowColor * Intensity * fade;

    // Аддитивно
    vec3 color = scene.rgb + add * glow.a;

    fragColor = vec4(color, scene.a);
}