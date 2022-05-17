@echo off

title Calculadora

set /p num1= Insira o primeiro valor: 
echo.
set /p num2= Insira o segundo valor: 

echo.

echo A - Soma
echo B - Subtracao
echo C - Multiplicacao
echo D - Divisao

echo.
choice /c abcd /m "Qual das operacoes"

if errorlevel==4 goto divisao
if errorlevel==3 goto multiplicacao
if errorlevel==2 goto subtracao
if errorlevel==1 goto soma

:soma
set /a result= %num1%+%num2%
goto resultado

:subtracao
set /a result= %num1% - %num2%
goto resultado

:multiplicacao
set /a result= %num1% * %num2%
goto resultado

:divisao
set /a result= %num1% / %num2%
goto resultado

:resultado
echo.
echo O resultado e igual a %result%
echo.

set /p a= Insira o numero 2.
if %a% equ 2 (echo Certo) else (echo Errado)

pause