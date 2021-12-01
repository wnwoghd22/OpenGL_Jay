#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec4 colorVec;
out vec4 posVec;

uniform float hOffset;

void main()
{
   gl_Position = vec4(aPos, 1.0);
   //exercise1
   //gl_Position = vec4(aPos.x, -aPos.y, aPos.z, 1.0);
   //exercise2
   //gl_Position = vec4(aPos.x + hOffset, aPos.y, aPos.z, 1.0);
   colorVec = vec4(aColor, 0.3f);
   posVec = vec4(aPos, 1.0);
}