#version 330 core

layout (location = 0) in vec3 aPos;
// layout (location = 1) in vec3 aColor;
layout (location = 1) in vec2 aTexCoord;
layout (location = 2) in vec3 aNormal;

out vec3 ourColor;
out vec2 texCoord;
out vec3 Normal;
out vec3 fragPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

// uniform mat4 transform;

void main() {
    // gl_Position = transform * vec4(aPos, 1.0);
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    // ourColor = aColor;
    texCoord = aTexCoord;
    Normal = aNormal;
    fragPos = vec3(model * vec4(aPos, 1.0));
}