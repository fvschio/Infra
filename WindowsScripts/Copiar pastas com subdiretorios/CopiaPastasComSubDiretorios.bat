@echo off

::COPIAR PASTA DE UM LOCAL PARA OUTRO MANTENDO AS PERMISSÕES

::Nome das Pastas Selecionadas para Cópia

set d1=
set d2=
set d3=

set po1=%d1%
set po2=%d2%
set po3=%d3%

for /F "delims=" %%x in (arquivo.txt) do (
echo copiando para dentro das pastas: %%x
robocopy /IS /SEC /E "%po1%" %%x\%d1%
robocopy /IS /SEC /E "%po2%" %%x\%d2%
robocopy /IS /SEC /E "%po3%" %%x\%d3%
)

pause