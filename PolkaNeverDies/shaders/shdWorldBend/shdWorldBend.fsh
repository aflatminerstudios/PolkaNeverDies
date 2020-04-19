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
	
	// 1.0 in the shader is the distance from one side of the texture to the other on that axis
	// 0.0, 0.0 is the top left of the texture
	
	radius = 2.0;
	// Make the center point of the bend in the center of the texture
	circleCenter.x = 0.5;
	// Currently unused in the calculations
	circleCenter.y = 0.0;
	
	// Calculate the y distortion based on the position on the circle
	angleInRadians = acos((v_vTexcoord.x - circleCenter.x)/radius);
	
	// Use the position of the point on the circle as a way to determine how far the texture should be sheared
	// We know the x already, so find the y offset (distortion)
	distortion.x = 0.0;
	distortion.y = radius - (radius * sin(angleInRadians));
  gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord - distortion);
}



