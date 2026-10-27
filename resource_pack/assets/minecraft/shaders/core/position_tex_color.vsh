#version 330
#extension GL_ARB_separate_shader_objects : require

layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};
layout(std140) uniform Projection {
    mat4 ProjMat;
};

layout(location = 0) in vec3 Position;
layout(location = 1) in vec2 UV0;
layout(location = 2) in vec4 Color;

layout(location = 0) out vec2 texCoord0;
layout(location = 1) out vec4 vertexColor;
layout(location = 2) out vec3 worldPos;
layout(location = 3) flat out int isEndSky;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vertexColor = Color;
    worldPos = Position;

    if (ProjMat[3][3] == 0.0 && abs(Position.x) > 50.0 && abs(Position.y) > 50.0 && abs(Position.z) > 50.0) {
        isEndSky = 1;
        if (UV0.x < 1.0 && UV0.y < 1.0) {
            texCoord0 = vec2(1.0, 0.0);
        } else if (UV0.x < 1.0 && UV0.y > 15.0) {
            texCoord0 = vec2(1.0, 1.0);
        } else if (UV0.x > 15.0 && UV0.y > 15.0) {
            texCoord0 = vec2(0.0, 1.0);
        } else {
            texCoord0 = vec2(0.0, 0.0);
        }
    } else {
        isEndSky = 0;
        texCoord0 = UV0;
    }
}
