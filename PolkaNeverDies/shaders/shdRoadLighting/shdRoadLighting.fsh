/// Normal-mapping light based on https://www.reddit.com/r/gamemaker/comments/734uvc/lighting_with_shaders/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 Fragcoord;

//texture samplers
uniform sampler2D u_texture; //diffuse map
uniform sampler2D u_normals; //normal map

//shader algorithm values
uniform vec2 Resolution;	//screen resolution
uniform vec3 LightPos;		//light postion, normalized
uniform vec4 LightColor;	//light RGBA -- alpha is intensity
uniform vec4 AmbientColor;	//Ambient RGBA -- alpha is intenisty
uniform vec3 Falloff;

vec4 LightCalc (sampler2D diffuseMap, sampler2D normalMap) {
  vec4 DiffuseColor = texture2D(diffuseMap, v_vTexcoord);
  vec3 NormalMap = texture2D(normalMap, v_vTexcoord).rgb;	
  NormalMap.g = 1.0 - NormalMap.g;
  vec3 LightDir = vec3(LightPos.xy - (Fragcoord.xy / Resolution.xy), LightPos.z);	
	//vec3 LightDir = vec3(0.0, 1.0, 1.0);	
  LightDir.x *= Resolution.x / Resolution.y;
	
  float D = length(LightDir);
  vec3 N = normalize(NormalMap * 2.0 - 1.0);
  vec3 L = normalize(LightDir);
	
  vec3 Diffuse = (LightColor.rgb * LightColor.a) * max(dot(N , L), 0.0);
  vec3 Ambient = AmbientColor.rgb* AmbientColor.a;
	
  float Attenuation = 1.0 / (Falloff.x + (Falloff.y*D) + (Falloff.z*D*D) );
	
  vec3 Intensity = Ambient + Diffuse * Attenuation;
  vec3 Color = DiffuseColor.rgb * Intensity;
  vec4 FinalColor = vec4(Color, DiffuseColor.a);
  return FinalColor;
}

void main()
{	
	
    vec4 FinalColor = LightCalc(u_texture, u_normals);	
    gl_FragColor = FinalColor;			
}