const float pi = 3.14159265359;
vec4 Process(vec4 color)
{
	vec3 lightDir = vec3(-1,-4, 1);

	vec2 texCoord = gl_TexCoord[0].st;
	vec3 l = lightDir;
	vec3 n = normalize(vWorldNormal.xyz);
	float angle = acos
	(
		(l.x*n.x + l.y*n.y + l.z * n.z) 
		/ 
		(
			(	
				sqrt
				(
					(l.x*l.x)+(l.y*l.y)+(l.z*l.z)
				) 
				* 
				sqrt
				(
					(n.x*n.x) + (n.y*n.y) + (n.z*n.z)
				)
			)
		)
	);
	float lightLevel = angle;
	lightLevel /= pi;
	return getTexel(texCoord) * color * vec4(lightLevel,lightLevel,lightLevel,1.0);
}