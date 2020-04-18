//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 distortion;
	float radius;
	vec2 circleCenter;
	float angleInRadians;
	radius = 2.0;
	circleCenter.x = 0.5;
	circleCenter.y = 0.0;
	
	// Calculate the y distortion based on the position on the circle
	angleInRadians = acos((v_vTexcoord.x - circleCenter.x)/radius);
	
	distortion.x = 0;
	distortion.y = radius - (radius * sin(angleInRadians));
  gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord - distortion);
}



