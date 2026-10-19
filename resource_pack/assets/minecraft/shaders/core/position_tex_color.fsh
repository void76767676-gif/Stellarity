#version 330
#extension GL_ARB_separate_shader_objects : require

layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};

uniform sampler2D Sampler0;

layout(location = 0) in vec2 texCoord0;
layout(location = 1) in vec4 vertexColor;
layout(location = 2) in vec3 worldPos;
layout(location = 3) flat in int isEndSky;

layout(location = 0) out vec4 fragColor;

const float PI = 3.14159265358979323846;

vec2 rotateUV(vec2 v, float angle) {
    float s = sin(angle);
    float c = cos(angle);
    return vec2(v.x * c - v.y * s, v.x * s + v.y * c);
}

void main() {
    vec2 uv = texCoord0;
    vec4 vc = vertexColor;
    if (isEndSky == 1) {
        ivec2 texsize = textureSize(Sampler0, 0);
        if (texsize.x != texsize.y) {
            vec3 dpos = normalize(cross(dFdx(worldPos), dFdy(worldPos))) * -1.0;
            if (dpos.z > 0.9) {
                uv.x = (uv.x + 2.0) / 3.0;
                uv.y = (-uv.y + 1.0) / 2.0;
            } else if (dpos.z < -0.9) {
                uv.x = (-uv.x + 3.0) / 3.0;
                uv.y = (uv.y + 1.0) / 2.0;
            } else if (dpos.x > 0.9) {
                uv = rotateUV(uv, PI / 2.0);
                uv.x = (-uv.x) / 3.0;
                uv.y = (uv.y) / 2.0;
            } else if (dpos.x < -0.9) {
                uv = rotateUV(uv, PI / 2.0);
                uv.x = (uv.x + 1.0) / 3.0;
                uv.y = (-uv.y + 2.0) / 2.0;
            } else if (dpos.y > 0.9) {
                uv.x = (uv.x + 1.0) / 3.0;
                uv.y = (-uv.y + 1.0) / 2.0;
            } else if (dpos.y < -0.9) {
                uv.x = (uv.x + 1.0) / 3.0;
                uv.y = (-uv.y + 2.0) / 2.0;
            }
            vc = vec4(1.22, 1.12, 1.35, 1.0);
        }
    }
    vec4 color = texture(Sampler0, uv) * vc;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
}
