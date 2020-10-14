//thanks to axetion for the help
const float pi = 3.14159265359;
void main()
{
	vec4 tex = texture(InputTexture, TexCoord);
	vec2 texSize = textureSize(InputTexture, 0);
	vec4 c = vec4(1.0, 1.0, 1.0, 1.0);
	
	if(hurtValue > 0)
	{
		float x = TexCoord.x;
		float y = TexCoord.y;
		int doTint = 0;
		float hvdouble = hurtValue * 2;
		
		float dis = 1.0 - sqrt(pow((0.5 - x), 2) + pow((0.5 - y), 2));
		
		float dis2 = dis - (0.9 - dis);
		
		
		if (dis2 < hurtValue) 
		//if (dis < hurtValue + ((1.0 - hurtValue) * 0.5)) 
		{
			doTint = 1;
		} 
		doTint = 1;
		
		float fade = clamp(dis2 / hurtValue,0.0,1.0);
		c = vec4
		(
			doTint == 1 ? fade * (1.0 - tintColor.r) + tintColor.r : 1.0,
			doTint == 1 ? fade * (1.0 - tintColor.g) + tintColor.g : 1.0,
			doTint == 1 ? fade * (1.0 - tintColor.b) + tintColor.b : 1.0,
			1.0
		);
	}
	FragColor = (tex * c);
}
