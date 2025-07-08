//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_texture_bounds; // (left, top, right, bottom)

uniform float proc; // 0.0 ~ 1.0+

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor[3] = gl_FragColor[3] * max(0.0, min(1.0, 7.0 * (proc - (v_vTexcoord.x - u_texture_bounds[0]) / (u_texture_bounds[2] - u_texture_bounds[0]))));
}
