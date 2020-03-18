vec4 Process(vec4 color)
{
    vec3 lightDir = vec3(0.75,-1.0,0.5);

    vec2 texCoord = gl_TexCoord[0].st;
    vec3 l = normalize(lightDir);
    vec3 n = normalize(vWorldNormal.xyz);

    float lightLevel = acos(dot(l,n)) / 3.14159265359;

    return getTexel(texCoord) * vec4(color.rgb * lightLevel, color.a);
}