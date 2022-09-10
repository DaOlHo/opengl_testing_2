#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoord;
layout (std140) uniform Matrices {
    mat4 projection;
    mat4 view;
};

out vec3 ourColor;
out vec2 texCoord;
out vec3 Normal;
out vec3 fragPos;

uniform mat4 model;

void main() {
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    texCoord = aTexCoord;
    Normal = mat3(transpose(inverse(model))) * aNormal;
    fragPos = vec3(model * vec4(aPos, 1.0));
}