mat3 GetTBN(float res);	
vec3 GetBumpedNormal(mat3 tbn, vec2 texcoord, int channel);
vec2 ParallaxMap(mat3 tbn);


float contrast(float mValue, float mScale, float mMidPoint) {
	return clamp( (mValue - mMidPoint) * mScale + mMidPoint, 0.0, 1.0);
}

float contrast(float mValue, float mScale) {
	return contrast(mValue,  mScale, .5);
}

vec3 contrast(vec3 mValue, float mScale, float mMidPoint) {
	return vec3( contrast(mValue.r, mScale, mMidPoint), contrast(mValue.g, mScale, mMidPoint), contrast(mValue.b, mScale, mMidPoint) );
}

vec3 contrast(vec3 mValue, float mScale) {
	return contrast(mValue, mScale, .5);
}


Material ProcessMaterial()
{
    mat3 tbn = GetTBN(1.0);
	vec2 texCoord = vTexCoord.st;
	vec4 mask = getTexel(texCoord);
	mask.a = 1.0-mask.a;
	vec4 col;
	
	col += texture(tex_in1, texCoord*64)*mask.r;
	col += texture(tex_in2, texCoord*64)*mask.g;
	col += texture(tex_in3, texCoord*64)*mask.b;
	
	if(col.r + col.g + col.b == 0) { col = getTexel(texCoord); }
	else {	col = normalize(col); }
	
	Material material;
    material.Base = col;
	tbn = GetTBN(128.0);
    material.Normal = vWorldNormal.xyz;
	//tbn = GetTBN(1.0);
    material.Specular.r = 0;
	material.Specular.g = material.Specular.r;
	material.Specular.b = material.Specular.r;
	material.Specular *= 0.35;
	
    material.Glossiness = uSpecularMaterial.x;
    material.SpecularLevel = uSpecularMaterial.y;
	
#if defined(PBR)
    material.Metallic = texture(metallictexture, texCoord).r;
    material.Roughness = texture(roughnesstexture, texCoord).r;
    material.AO = texture(aotexture, texCoord).r;
#endif
#if defined(BRIGHTMAP)
    material.Bright = texture(brighttexture, texCoord);
#endif
    return material;
}

// Tangent/bitangent/normal space to world space transform matrix
mat3 GetTBN(float res)
{
    vec3 n = normalize(vWorldNormal.xyz);
    vec3 p = pixelpos.xyz;
    vec2 uv = vTexCoord.st*res;

    // get edge vectors of the pixel triangle
    vec3 dp1 = dFdx(p);
    vec3 dp2 = dFdy(p);
    vec2 duv1 = dFdx(uv);
    vec2 duv2 = dFdy(uv);

    // solve the linear system
    vec3 dp2perp = cross(n, dp2); // cross(dp2, n);
    vec3 dp1perp = cross(dp1, n); // cross(n, dp1);
    vec3 t = dp2perp * duv1.x + dp1perp * duv2.x;
    vec3 b = dp2perp * duv1.y + dp1perp * duv2.y;

    // construct a scale-invariant frame
    float invmax = inversesqrt(max(dot(t,t), dot(b,b)));
    return mat3(t * invmax, b * invmax, n);
}



vec3 GetBumpedNormal(mat3 tbn, vec2 texcoord, int channel)
{
	vec3 map;
	
	if(channel == 0)
		{	map = normalize(vec3(1.0)-texture(tex_in1, texcoord).xyz);	}
	if(channel == 1)
		{	map = normalize(vec3(1.0)-texture(tex_in2, texcoord).xyz);	}
	if(channel == 2)
		{	map = normalize(vec3(1.0)-texture(tex_in3, texcoord).xyz);	}
    map = map * 255./127. - 128./127.; // Math so "odd" because 0.5 cannot be precisely described in an unsigned format
    map.y = -map.y;
    return normalize(tbn * map);

    return normalize(vWorldNormal.xyz);
}
