vec4 Process(vec4 color)
{
    //vec3 lightDir = vec3(-18,5, 1);
	vec3 lightDir = vec3(-1,-4,1);
	
    vec2 texCoord = gl_TexCoord[0].st;
    vec3 l = normalize(lightDir);
    vec3 n = normalize(vWorldNormal.xyz);
	
	float lightLevel = acos(dot(l,n)) / 3.14159265359;
	
	//float lightLevel = clamp(dot(l,n), 0.72, 1.0);
	//lightLevel = clamp(lightLevel, 0.72, 1.0);
	
    return getTexel(texCoord) * vec4(color.rgb * lightLevel, color.a);
}