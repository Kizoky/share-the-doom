@echo off
for /r %%i in (*) do (mogrify -format png %%i.tga)