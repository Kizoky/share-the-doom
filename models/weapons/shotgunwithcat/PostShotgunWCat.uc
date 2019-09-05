class PostShotgunWCat expands Actor;

#exec MESH IMPORT MESH=PostShotgunWCat ANIVFILE=MODELS\PostShotgunWCat_a.3d DATAFILE=MODELS\PostShotgunWCat_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=PostShotgunWCat X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=PostShotgunWCat SEQ=All STARTFRAME=0 NUMFRAMES=167
//#exec MESH SEQUENCE MESH=PostShotgunWCat SEQ=??? STARTFRAME=0 NUMFRAMES=167

#exec MESHMAP NEW MESHMAP=PostShotgunWCat MESH=PostShotgunWCat
#exec MESHMAP SCALE MESHMAP=PostShotgunWCat X=0.1 Y=0.1 Z=0.2

#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins PALETTE=Jtex1
#exec MESHMAP SETTEXTURE MESHMAP=PostShotgunWCat NUM=1 TEXTURE=Jtex1

#exec TEXTURE IMPORT NAME=Jtex2 FILE=texture2.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex2 FILE=texture2.pcx GROUP=Skins PALETTE=Jtex2
#exec MESHMAP SETTEXTURE MESHMAP=PostShotgunWCat NUM=2 TEXTURE=Jtex2

#exec TEXTURE IMPORT NAME=Jtex3 FILE=texture3.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex3 FILE=texture3.pcx GROUP=Skins PALETTE=Jtex3
#exec MESHMAP SETTEXTURE MESHMAP=PostShotgunWCat NUM=3 TEXTURE=Jtex3

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=PostShotgunWCat
}
