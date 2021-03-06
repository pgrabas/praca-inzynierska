#version 330 

//input data
in vec3 inVertexModelSpace;
in vec2 inVertexUVW;

uniform mat4 WorldMatrix;
uniform mat4 ModelMatrix;

//output data
out vec2 VertexUVW;
out vec4 VertexRawPosition;

void main() {
	VertexRawPosition = vec4(inVertexModelSpace, 1.0);
	gl_Position = WorldMatrix * VertexRawPosition;
	VertexUVW = inVertexUVW;
}	

 
