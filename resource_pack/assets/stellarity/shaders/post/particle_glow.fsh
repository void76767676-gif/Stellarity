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

float glowExtract(vec3 c) {
    float l = dot(c, vec3(0.299, 0.587, 0.114));
    float mx = max(c.r, max(c.g, c.b));
    float mn = min(c.r, min(c.g, c.b));
    float sat = mx - mn;
    float lumGlow = smoothstep(0.45, 0.92, l);
    float chromaGlow = smoothstep(0.28, 0.78, mx) * smoothstep(0.10, 0.45, sat);
    return clamp(max(lumGlow, chromaGlow * 1.35), 0.0, 1.0);
}

void main() {
    vec4 baseColor = texture(InSampler, texCoord);
    vec3 scene = baseColor.rgb;
    
    vec3 brightened = pow(scene, vec3(0.78)) * 1.25;
    float lum = dot(brightened, vec3(0.299, 0.587, 0.114));
    float darkFactor = clamp(1.0 - lum * 1.6, 0.0, 1.0);
    vec3 ambientFloor = vec3(0.085, 0.075, 0.115) * darkFactor;
    scene = brightened + ambientFloor;
    
    vec2 px = 1.0 / OutSize;
    vec3 bloom = vec3(0.0);
    float offsets[4] = float[](1.5, 3.2, 5.2, 7.8);
    float weights[4] = float[](0.38, 0.28, 0.20, 0.14);
    
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
        
        vec3 tapSum = (s1 * glowExtract(s1) +
                       s2 * glowExtract(s2) +
                       s3 * glowExtract(s3) +
                       s4 * glowExtract(s4) +
                       s5 * glowExtract(s5) +
                       s6 * glowExtract(s6) +
                       s7 * glowExtract(s7) +
                       s8 * glowExtract(s8)) * 0.125;
        bloom += tapSum * w;
    }
    
    float centerMask = glowExtract(baseColor.rgb);
    vec3 pulseTint = mix(vec3(0.92, 0.72, 1.08), vec3(0.68, 0.94, 1.08), sin(GameTime * 0.6) * 0.5 + 0.5);
    vec3 finalBloom = mix(bloom * 1.85, bloom * pulseTint * 1.55, 0.35);
    
    scene += finalBloom;
    scene += scene * centerMask * 0.30;
    scene = clamp(scene / (vec3(1.0) + scene * 0.16) * 1.10, 0.0, 1.0);
    
    fragColor = vec4(scene, baseColor.a);
}
