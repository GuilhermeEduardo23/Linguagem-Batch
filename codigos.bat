@echo off
:: Expressão utilizada para não mostrar o código no terminarl.

title Menu de Aplicativos
:: Nomeia o arquivo na barra de título do terminal.

echo Ola! Seja Bem-Vindo.
echo Computador de %computername%
echo %date%
:: Imprime a mensagem no terminal

echo.

:menu
echo                *   *   *   *   *   *   *   *   *   *
echo                *    A - Calculadora                *
echo                *    B - Bloco de Notas             *
echo                *    C - Paint                      *
echo                *    D - Microsoft Edge             *
echo                *    E - Explorador de Arquivos     *
echo                *   *   *   *   *   *   *   *   *   *

echo.

choice /c abcde /m "O que deseja executar"

echo.

IF errorlevel==5 goto arquivos
IF errorlevel==4 goto edge
IF errorlevel==3 goto paint
IF errorlevel==2 goto bloco
IF errorlevel==1 goto calc

:calc
start calc
echo Abrindo Calculadora!
echo.
cls
goto menu

:bloco
start notepad
echo Abrindo Bloco de Notas!
echo.
cls
goto menu

:paint
start mspaint
echo Abrindo Paint!
echo.
cls
goto menu

:edge
start msedge
echo Abrindo Microsoft Edge!
echo.
cls
goto menu

:arquivos
start explorer
echo Abrindo Explorador de Arquivos!
echo.
cls
goto menu

echo.
:: Usado para saltar uma linha.

pause
::Usado para parar a tela quando terminar de executar o codigo.