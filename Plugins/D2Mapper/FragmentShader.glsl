#version 330 

in vec2 VertexUVW;

out vec4 gl_FragColor;
uniform vec3 BaseColor;

uniform uvec3 CubeSize;
uniform sampler2D Texture0;
 
void main() { 
	gl_FragColor.rgb = texture(Texture0, VertexUVW, 0).rgb;
	
	gl_FragColor.r *= BaseColor.r;
	gl_FragColor.g *= BaseColor.g;
	gl_FragColor.b *= BaseColor.b;
	gl_FragColor.a = 1.0f;
}
 
 
 