#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>

uniform sampler2D In;
uniform sampler2D Glow;

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
    float pulse = 1.0 + sin(GameTime * 5.0) * 0.03;
    uv /= pulse;
    uv += 0.5;

    // Вспышка сияния
    vec4 glowTex = texture(Glow, uv);
    vec3 glowColor = vec3(1.0, 0.88, 0.60);
    float wave = 0.5 + 0.5 * sin(GameTime * 6.0);
    vec3 add = glowTex.rgb * glowColor * wave * 0.65;

    // Аддитивно
    vec3 color = scene.rgb + add * glowTex.a;

    fragColor = vec4(color, scene.a);
}