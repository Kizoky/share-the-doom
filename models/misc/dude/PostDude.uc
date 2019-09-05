class PostDude expands Actor;

#exec MESH IMPORT MESH=PostDude ANIVFILE=MODELS\PostDude_a.3d DATAFILE=MODELS\PostDude_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=PostDude X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=PostDude SEQ=All STARTFRAME=0 NUMFRAMES=609
//#exec MESH SEQUENCE MESH=PostDude SEQ=??? STARTFRAME=0 NUMFRAMES=609

#exec MESHMAP NEW MESHMAP=PostDude MESH=PostDude
#exec MESHMAP SCALE MESHMAP=PostDude X=0.1 Y=0.1 Z=0.2

#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins PALETTE=Jtex1
#exec MESHMAP SETTEXTURE MESHMAP=PostDude NUM=1 TEXTURE=Jtex1

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=PostDude
}
