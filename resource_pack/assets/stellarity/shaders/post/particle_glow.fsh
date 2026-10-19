#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform Globals {
    ivec3 CameraBlockPos;
    vec3 CameraOffset;
    vec2 ScreenSize;
    float GlintAlpha;
    float GameTime;
    int MenuBlurRadius;
    int UseRgss;
};

float luma(vec3 c) {
    return dot(c, vec3(0.299, 0.587, 0.114));
}

void main() {
    vec4 baseColor = texture(InSampler, texCoord);
    vec3 scene = baseColor.rgb;
    
    vec2 px = 1.0 / OutSize;
    
    float centerLum = luma(scene);
    float glowMask = smoothstep(0.68, 1.0, centerLum);
    
    vec3 bloom = vec3(0.0);
    float offsets[4] = float[](1.5, 3.2, 5.0, 7.5);
    float weights[4] = float[](0.40, 0.28, 0.18, 0.14);
    
    for (int i = 0; i < 4; ++i) {
        float d = offsets[i];
        float w = weights[i];
        
        vec3 s1 = texture(InSampler, texCoord + vec2(px.x * d, px.y * d)).rgb;
        vec3 s2 = texture(InSampler, texCoord + vec2(-px.x * d, px.y * d)).rgb;
        vec3 s3 = texture(InSampler, texCoord + vec2(px.x * d, -px.y * d)).rgb;
        vec3 s4 = texture(InSampler, texCoord + vec2(-px.x * d, -px.y * d)).rgb;
        
        vec3 s5 = texture(InSampler, texCoord + vec2(px.x * d * 1.4, 0.0)).rgb;
        vec3 s6 = texture(InSampler, texCoord + vec2(-px.x * d * 1.4, 0.0)).rgb;
        vec3 s7 = texture(InSampler, texCoord + vec2(0.0, px.y * d * 1.4)).rgb;
        vec3 s8 = texture(InSampler, texCoord + vec2(0.0, -px.y * d * 1.4)).rgb;
        
        float m1 = smoothstep(0.65, 1.0, luma(s1));
        float m2 = smoothstep(0.65, 1.0, luma(s2));
        float m3 = smoothstep(0.65, 1.0, luma(s3));
        float m4 = smoothstep(0.65, 1.0, luma(s4));
        float m5 = smoothstep(0.65, 1.0, luma(s5));
        float m6 = smoothstep(0.65, 1.0, luma(s6));
        float m7 = smoothstep(0.65, 1.0, luma(s7));
        float m8 = smoothstep(0.65, 1.0, luma(s8));
        
        vec3 tapSum = (s1 * m1 + s2 * m2 + s3 * m3 + s4 * m4 + s5 * m5 + s6 * m6 + s7 * m7 + s8 * m8) * 0.125;
        bloom += tapSum * w;
    }
    
    vec3 glowTint = mix(vec3(0.85, 0.65, 1.0), vec3(0.55, 0.90, 1.0), sin(GameTime * 0.5) * 0.5 + 0.5);
    scene += bloom * glowTint * 1.45;
    scene += scene * glowMask * 0.25;
    
    fragColor = vec4(scene, baseColor.a);
}
