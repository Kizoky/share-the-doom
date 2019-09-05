void main()
{
	vec4 tinted = texture(InputTexture,TexCoord);
	vec2 nc;
	vec2 sz = textureSize(InputTexture,0);
	vec2 px = 1.0/vec2(1920.0);
	px.y *= sz.x/sz.y;
	float cnt = 1.0;
	for ( int j=-5; j<=5; j++ ) for ( int i=-5; i<=5; i++ )
	{
		nc = TexCoord+px*vec2(i,j);
		tinted += texture(InputTexture,nc);
		cnt += 1.0;
	}
	tinted /= cnt;
	vec2 coord = TexCoord;
	coord *= 4.0;
	coord.y *= px.x/px.y;
	vec2 tc;
	tc.x = coord.x*cos(Timer)-coord.y*sin(Timer);
	tc.y = coord.x*sin(Timer)+coord.y*cos(Timer);
	tinted = mix(tinted,texture(StaticTexture,tc),0.1);
	tinted = pow(tinted,vec4(0.7,1.1,1.3,1.0));
	tinted *= vec4(1.2,0.6,0.5,1.0);
	FragColor = tinted;
}
