#version 330 

//input data

in vec3 inVertexModelSpace;
in vec2 inVertexUVW;
/*
layout(location = 2) in vec3 inVertexNormal;
*/ 
uniform vec3 CameraPos;
uniform mat4 WorldMatrix;
uniform mat4 ModelMatrix;

uniform vec3 BaseColor;
uniform bool EnableTexturing;

//output data
out vec2 VertexUVW;
// out vec3 VertexNormal;
out vec4 VertexPosition;
out vec4 VertexRawPosition;
//out vec3 VertexColor;
//out vec3 VertexWorldPos;

// out vec4 RawPosition;

void main(){
	VertexRawPosition = vec4(inVertexModelSpace, 1.0);
	VertexPosition = WorldMatrix * VertexRawPosition;
	gl_Position = VertexPosition;
	
	VertexUVW = inVertexUVW;
	
	/*
	VertexNormal = (ModelMatrix * vec4(inVertexNormal, 0.0)).xyz;
	VertexWorldPos = (ModelMatrix * vec4(inVertexModelSpace, 1.0)).xyz;
	*/
}	

 
