#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 5) in mat4 model;

void main() {
    gl_Position = model * vec4(aPos, 1.0);
}