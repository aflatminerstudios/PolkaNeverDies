//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vNormal;

//texture samplers
uniform sampler2D u_texture; //diffuse map
uniform sampler2D u_normals; //normal map

void main()
{
		vec3 dir = vec3( 0.0, 32.0, -96.0) - v_vPosition;//Light direction
    float rad = 128.0;//Light radius
    vec3 col = vec3( 0.5, 0.8, 1.0);//Light color
    float attenuation = max( 1.0 - length(dir)/rad, 0.0);//Calculate brightness
    float lighting = (dot( normalize(v_vNormal), normalize(dir)) * 0.5 + 0.5) * attenuation;//Calculate lighting
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord) * vec4( lighting * col, 1.0);
}

