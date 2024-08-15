@echo off
setlocal enabledelayedexpansion

:: Lê o conteúdo do arquivo V.txt
set "fileContent="
for /f "delims=" %%i in (V.txt) do set "fileContent=%%i"

:: Faz o download do conteúdo do link e armazena em uma variável
set "urlContent="
for /f "delims=" %%i in ('powershell -Command "Invoke-WebRequest -Uri https://pastebin.com/raw/z1XabBeL -UseBasicParsing | Select-Object -ExpandProperty Content"') do set "urlContent=%%i"

:: Compara os conteúdos
if "!fileContent!"=="!urlContent!" (
    :: Abre o aplicativo Durk Ware.exe
    start "" "Durk Ware.exe"
) else (
    echo Os conteúdos são diferentes.
)

endlocal
pause
