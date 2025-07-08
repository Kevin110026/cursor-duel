//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float gray_start; // 0.0 ~ 1.0
uniform bool grayer;
uniform vec4 u_texture_bounds; // (left, top, right, bottom)


void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	
	if (grayer)
	{
		gl_FragColor[0] *= 0.5;
		gl_FragColor[1] *= 0.5;
		gl_FragColor[2] *= 0.5;
	}
	
	
	if (1.0 - (v_vTexcoord.y - u_texture_bounds[1]) / (u_texture_bounds[3] - u_texture_bounds[1]) < gray_start)
	{
		gl_FragColor[0] *= 0.75;
		gl_FragColor[1] *= 0.75;
		gl_FragColor[2] *= 0.75;
	}
}
