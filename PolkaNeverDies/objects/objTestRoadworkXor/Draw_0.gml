/// Normal-mapping light based on https://www.reddit.com/r/gamemaker/comments/734uvc/lighting_with_shaders/


shader_set(shdRoadLightingXor);

var diffuse = sprite_get_texture(sprRoadwork, 0);
var normal = sprite_get_texture(sprRoadworkNormalMap, 0);

var shaderCur = shader_current();
//normalize mouse cords
//var mx = mouse_x / camera_get_view_width(view_camera[view_current]);
//var my = mouse_y / camera_get_view_height(view_camera[view_current]);

var mx = (mouse_x - x)/sprite_get_width(sprRoadwork);
var my = (mouse_y - y)/sprite_get_height(sprRoadwork);

//var LIGHT_COLOR = [1.0, 0.8, 0.6, 1.0];
//var AMBIENT_COLOR = [0.7, 0.7, 1.0, 0.2];
//var FALLOFF = [0.5, 0.5, 10.0];

//var RESOLUTION = [window_get_width(), window_get_height()];
//var LIGHT_POS = [mx, my, 0.06];

////shader uniforms
//res = shader_get_uniform(shaderCur, "Resolution");
//lightP = shader_get_uniform(shaderCur, "LightPos");
//lightC = shader_get_uniform(shaderCur, "LightColor");
//ambientC = shader_get_uniform(shaderCur, "AmbientColor");
//falloff = shader_get_uniform(shaderCur, "Falloff");

////shader_set(normal_map_lighting);
////set shader algorithm values
//shader_set_uniform_f_array(res, RESOLUTION);
//shader_set_uniform_f_array(lightP, LIGHT_POS);
//shader_set_uniform_f_array(lightC, LIGHT_COLOR);
//shader_set_uniform_f_array(ambientC, AMBIENT_COLOR);
//shader_set_uniform_f_array(falloff, FALLOFF);

//shader sampler textures
diffuseSampler = shader_get_sampler_index(shaderCur, "u_texture");
normalSampler = shader_get_sampler_index(shaderCur, "u_normals");

//set shader texture samplers
texture_set_stage(diffuseSampler, diffuse);
texture_set_stage(normalSampler, normal);

draw_self();
shader_reset();