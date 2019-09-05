class PostDudeHead expands Actor;

#exec MESH IMPORT MESH=PostDudeHead ANIVFILE=MODELS\PostDudeHead_a.3d DATAFILE=MODELS\PostDudeHead_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=PostDudeHead X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=PostDudeHead SEQ=All STARTFRAME=0 NUMFRAMES=258
//#exec MESH SEQUENCE MESH=PostDudeHead SEQ=??? STARTFRAME=0 NUMFRAMES=258

#exec MESHMAP NEW MESHMAP=PostDudeHead MESH=PostDudeHead
#exec MESHMAP SCALE MESHMAP=PostDudeHead X=0.1 Y=0.1 Z=0.2

#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins PALETTE=Jtex1
#exec MESHMAP SETTEXTURE MESHMAP=PostDudeHead NUM=1 TEXTURE=Jtex1

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=PostDudeHead
}
