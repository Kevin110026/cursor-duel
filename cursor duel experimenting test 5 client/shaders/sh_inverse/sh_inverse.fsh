//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor[0] = 1.0 - gl_FragColor[0];
	gl_FragColor[1] = 1.0 - gl_FragColor[1];
	gl_FragColor[2] = 1.0 - gl_FragColor[2];
}
