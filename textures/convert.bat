@echo off
for /r %%i in (*) do (mogrify -flip -format png %%i)