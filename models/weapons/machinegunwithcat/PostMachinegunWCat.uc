class PostMachinegunWCat expands Actor;

#exec MESH IMPORT MESH=PostMachinegunWCat ANIVFILE=MODELS\PostMachinegunWCat_a.3d DATAFILE=MODELS\PostMachinegunWCat_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=PostMachinegunWCat X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=PostMachinegunWCat SEQ=All STARTFRAME=0 NUMFRAMES=123
//#exec MESH SEQUENCE MESH=PostMachinegunWCat SEQ=??? STARTFRAME=0 NUMFRAMES=123

#exec MESHMAP NEW MESHMAP=PostMachinegunWCat MESH=PostMachinegunWCat
#exec MESHMAP SCALE MESHMAP=PostMachinegunWCat X=0.1 Y=0.1 Z=0.2

#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins PALETTE=Jtex1
#exec MESHMAP SETTEXTURE MESHMAP=PostMachinegunWCat NUM=1 TEXTURE=Jtex1

#exec TEXTURE IMPORT NAME=Jtex2 FILE=texture2.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex2 FILE=texture2.pcx GROUP=Skins PALETTE=Jtex2
#exec MESHMAP SETTEXTURE MESHMAP=PostMachinegunWCat NUM=2 TEXTURE=Jtex2

#exec TEXTURE IMPORT NAME=Jtex3 FILE=texture3.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex3 FILE=texture3.pcx GROUP=Skins PALETTE=Jtex3
#exec MESHMAP SETTEXTURE MESHMAP=PostMachinegunWCat NUM=3 TEXTURE=Jtex3

#exec TEXTURE IMPORT NAME=Jtex4 FILE=texture4.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex4 FILE=texture4.pcx GROUP=Skins PALETTE=Jtex4
#exec MESHMAP SETTEXTURE MESHMAP=PostMachinegunWCat NUM=4 TEXTURE=Jtex4

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=PostMachinegunWCat
}
