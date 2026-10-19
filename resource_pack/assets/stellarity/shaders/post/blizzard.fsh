#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec4 src = texture(InSampler, texCoord);
    vec3 col = src.rgb;
    
    vec2 uv = texCoord - 0.5;
    float dist = length(uv);
    float vignette = smoothstep(0.35, 0.78, dist);
    
    vec3 frostTint = vec3(0.90, 1.04, 1.18);
    vec3 snowHaze = vec3(0.86, 0.93, 1.0);
    
    col = mix(col * frostTint, snowHaze, 0.18);
    col = mix(col, vec3(0.90, 0.95, 1.0), vignette * 0.36);
    
    fragColor = vec4(col, src.a);
}
