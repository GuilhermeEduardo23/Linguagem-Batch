@echo off
title Limpeza e Manutencao do Computador
echo Ola %username%! Seja Bem-Vindo(a).
echo.
echo %date%
echo %time%
echo.
echo Esta aplicacao possui o objetivo de realizar limpezas de arquivos temporarios e manutencao na maquina.
echo.
echo **Obs.: Para que os comandos sejam executados corretamente, e necessario antes iniciar a aplicacao em modo de Administrador.**
echo.

:menu
echo ******************************************
echo *                                        *
echo *            AREA DE OPCOES              *  
echo *                                        *
echo ******************************************

echo.
echo 1 - Excluir Arquivos da Pasta TEMP
echo 2 - Abrir Pasta PREFETCH
echo 3 - Abrir Pasta RECENT
echo 4 - Abrir Limpeza de Disco
echo 5 - Executar Verificacao de Arquivos
echo 6 - Executar Verificacao de Erros no Sistema
echo 7 - Sair

echo.

choice /c 1234567 /m "Quais das opcoes deseja executar?"
if errorlevel == 7 goto sair
if errorlevel == 6 goto verificaerrossistema
if errorlevel == 5 goto verificaarquivos
if errorlevel == 4 goto limpezadedisco
if errorlevel == 3 goto pastarecent
if errorlevel == 2 goto pastaprefetch
if errorlevel == 1 goto pastatemp

:pastatemp
echo.
echo ***ATENCAO*** Para exclusao dos arquivos temporarios com maior eficiencia, e recomendado fechar todos os seus arquivos e aplicativos abertos. Caso estiver com algum documento ou aplicacao aberto, feche antes para que o processo possa comecar.
echo.
pause
goto excluirarquivos

:excluirarquivos
echo.
echo Deletando arquivos!
echo.
del /q/f/s %temp%\*
echo.
pause
cls
goto menu

:pastaprefetch
echo.
echo Abrindo pasta PREFETCH
echo.
echo Esta pasta contem arquivos temporarios de sua maquina, onde voce podera deletar todos que ira liberar espaco no armazenamento e ajudara a melhorar no desempenho.
echo.
start C:\Windows\Prefetch
pause
cls
goto menu

:limpezadedisco
echo.
echo Abrindo Limpeza de Disco
echo.
echo Esta funcao permite que a ferramenta faca uma varredura no sistema operacional e te informar em quais locais voce podera estar realizando a limpeza. **Obs.: Caso aparecer uma janela informando alguma particao (letra), selecionar C: e OK.**
echo.
start cleanmgr
pause
cls
goto menu

:verificaarquivos
echo.
sfc /scannow
echo.
pause
cls
goto menu

:verificaerrossistema
echo.
DISM /Online /Cleanup-image /Scanhealth
echo.
pause
cls
goto menu

:pastarecent
echo.
echo Esta pasta contem arquivos temporarios de sua maquina, onde voce podera deletar todos que ira liberar espaco no armazenamento e ajudara a melhorar no desempenho.
start %userprofile%\recent
echo.
pause
cls
goto menu

:sair
exit