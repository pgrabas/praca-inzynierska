#version 330 

//input data from vertex shader
in vec2 VertexUVW;

// Ouput data
out vec4 FragColor;
 
uniform vec3 BaseColor;

uniform bool EnableTexturing;
uniform sampler2D Texture0;

void main() {
	if(EnableTexturing) {
		FragColor.rgb = texture2D(Texture0, VertexUVW).rgb;
		FragColor.r *= BaseColor.r;
		FragColor.g *= BaseColor.g;
		FragColor.b *= BaseColor.b;
		FragColor.a = 1;
	} else {
		FragColor.rgb = BaseColor;
		FragColor.a = 1;
	}
}

 
