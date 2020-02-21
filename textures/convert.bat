@echo off
for /r %%i in ("C:\Users\Administrator\Desktop\share-the-doom\models\props\textures") do (mogrify -flip %%i)