
@rem bin\windows\bat
@rem Autor Luishiño Pericena Choque
@rem Informacion:
@rem Sigueme en las redes Sociales:
@rem Blogger          https://lpericena.blogspot.com/
@rem Github            https://github.com/Pericena
@rem youtube.com  https://www.youtube.com/channel/UCELx1m-NeAdBn7mCuQ86kcw
@rem pinterest        https://es.pinterest.com/lushiopericena/
@rem twitter             https://twitter.com/LPericena
@rem linkedin         https://www.linkedin.com/in/lpericena/
@rem facebook       https://www.facebook.com/profile.php?id=100009309755063
@rem pagina facebook  https://www.facebook.com/lpericena
@rem sitio web        https://pericena.wordpress.com/
@rem vimeo         https://vimeo.com/lpericena
@rem instagram      https://www.instagram.com/lpericena/
@rem remote      https://remote.com/luishinopericena-choque
@rem google+   https://plus.google.com/u/0/114054031405340478901
@rem kiwi       https://kiwi.qa/LuishinoC
@rem App    https://apps.facebook.com/167466933725219
@rem Grupo    https://www.facebook.com/groups/122223121705126/?source_id=1506435219407506
@rem socialtools https://www.socialtools.me/index?action=demoApps&preview=1&app_id=406101
@rem teachlr    https://teachlr.com/lpericena
@rem wikipedia  https://es.wikipedia.org/wiki/Usuario:Luishi%C3%B1o_Pericena_Choque
@rem ask          https://ask.fm/Lpericena
@rem stackoverflow  https://stackoverflow.com/users/6506592/luishi%C3%B1o-pericena-choque
@rem wix https://lpericena.wixsite.com/curriculumvitae


@echo off
TITLE ApkªDcx
MODE con: cols=125 lines=38
COLOR 0C

copy App.apk aplicacion.apk
mkdir .\Tools\Proyecto-apk
mkdir .\Tools\Proyectos
move aplicacion.apk ./Tools/Proyecto-apk

:MENU
cd .\Tools
:VARIABLES
set usrc=9
set dec=0
set capp=None
set heapy=0
set jar=0
:VERSION
set ADroid=ApkªDcx:v2.0
set Autor=Autor:Lushiño Pericena Choque
set Zip=[7-Zip:v.4.65]
set apk=[apktool:v1.1.1.]
set apk1=[apktool:v2.3.3.]
set Superuser=v3.0.7(41)
set web=https://lpericena.blogspot.com/
CLS

goto extraer
:extraer

setlocal enabledelayedexpansion
if (%1)==(0) goto VARIABLES
set /A count=0
FOR %%F IN (Proyecto-apk/*.apk) DO (
set /A count+=1
set tmpstore=%%~nF%%~xF)
if %count%==1 (set capp=%tmpstore%)

echo.
TIMEOUT /T 0 /nobreak>NUL
echo.                                                   %Autor%
TIMEOUT /T 0 /nobreak>NUL
echo.                             .----------------.  .----------------.  .----------------.
TIMEOUT /T 0 /nobreak>NUL
echo.                            : .--------------. :: .--------------. :: .--------------. :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :      __      : :: :   ______     : :: :  ___  ____   : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :     /  \     : :: :  :_   __ \   : :: : :_  ::_  _:  : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :    / /\ \    : :: :    : :__) :  : :: :   : :_/ /    : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :   / ____ \   : :: :    :  ___/   : :: :   :  __'.    : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : : _/ /    \ \_ : :: :   _: :_      : :: :  _: :  \ \_  : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : ::____:  :____:: :: :  :_____:     : :: : :____::____: : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :              : :: :%ADroid% : :: :              : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : '--------------' :: '--------------' :: '--------------' :
echo.                              '----------------'  '----------------'  '----------------'
TIMEOUT /T 0 /nobreak>NUL
echo.        [%ADroid%] %Zip% %apk% %apk1%  %web%
echo.Se decompilara la aplicacion
Setlocal EnableDelayedExpansion

TIMEOUT /T 0 /nobreak>NUL
echo.Max size for java heap space in megabytes enter(ejemplo: 5122) 
set /P INPUT=[*]%=%
set heapy=%INPUT%



set level=0;0;1;2;3;4;5;6;7;8;9;0;4;5;6;7;8;9;5;6;
set Decompile=1;2;3;1;2;3;2;3;2;1;3;3;1;2;3;1;2;2;1;3;
echo.Compression Level enter (0-9)
set /p leve=[+]
set usrc=%leve%

if %leve%==%level% goto si-level

:si-level
set id=1
:U
for /f "delims=; tokens=%id%" %%U in ("%level%") do (
if "%%U"=="%leve%" goto decompilar
set /a id=%id% + 1 && goto U
 )

goto salir
:decompilar
echo ^|----^>[*] max size for java %heapy% Compression Level %leve% 
echo.                              [1] Sources and Resources
echo.                              [2] Sources
echo.                              [3] Resources
echo.Decompile enter (1-3)
set pcont=1
:contador
set /p decompila=[+]
set /a dec=%decompila%
if %dec%==1 (set decs=Sources and Resources)
if %dec%==2 (set decs=Sources)
if %dec%==3 (set decs=Resources)
if %dec% GTR 4 goto error420

for /f "delims=; tokens=%id%" %%P in ("%Decompile%") do (
::::::::::::::::::::::::::::::::::: si es correcta ir a OK
if "%%P"=="%decompila%" goto proyecto
if "%pcont%" GEQ "3" goto error
echo ^|-----^>[*]Incorrecto Decompile "%decs%" para Compression Level "%leve%"
set /a pcont=%pcont% + 1 && goto contador
)
:error
goto error420


:proyecto
echo ^|-----^>[*]Decompile "%decs%" para Compression Level "%leve%"
echo. %decs%
echo.Opcion Proyecto-apk..
echo.
set /A count=0
FOR %%F IN (Proyecto-apk/*.apk) DO (
set /A count+=1
set a!count!=%%F
if /I !count! LEQ 9 (echo ^                              [!count!] %%F)
if /I !count! GTR 10 (echo ^                             [!count!] %%F)
)
echo Se decompilara la aplicacion en la carpeta Proyectos...
set /P INPUT=Selecione un numero: %=%
if /I %INPUT% GTR !count! (goto chc)
if /I %INPUT% LSS 1 (goto chc)
set capp=!a%INPUT%!


cd Other

echo.                                                      %Autor% >>_Android.inf
echo.                             .----------------.  .----------------.  .----------------. >>_Android.inf
echo.                            : .--------------. :: .--------------. :: .--------------. : >>_Android.inf
echo.                            : :      __      : :: :   ______     : :: :  ___  ____   : : >>_Android.inf
echo.                            : :     /  \     : :: :  :_   __ \   : :: : :_  ::_  _:  : : >>_Android.inf
echo.                            : :    / /\ \    : :: :    : :__) :  : :: :   : :_/ /    : : >>_Android.inf
echo.                            : :   / ____ \   : :: :    :  ___/   : :: :   :  __'.    : : >>_Android.inf
echo.                            : : _/ /    \ \_ : :: :   _: :_      : :: :  _: :  \ \_  : : >>_Android.inf
echo.                            : ::____:  :____:: :: :  :_____:     : :: : :____::____: : : >>_Android.inf
echo.                            : :              : :: :              : :: :              : : >>_Android.inf
echo.                            : '--------------' :: '--------------' :: '--------------' : >>_Android.inf
echo.                              '----------------'  '----------------'  '----------------' >>_Android.inf

set counter=0
set counterb=000
set core=App:%capp%::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set "valuecore=                                                 "
setLocal EnableDelayedExpansion
:start>null
CLS
type _Android.inf

echo.                                ___________________________________________________________
echo.                                :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.                                [%valuecore:~0,50%] %counterb:~0,-2%%% %msg% 
echo.                                ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.                                __Decompile:%decs%__%DATE%___%TIME%__
if %counter% GEQ 50 set msg=complete& set counterb=10000& goto exit
rem echo. %counterb:~0,-2%%%
set /a counter=counter+1
set /a counterb=counterb+200
set "valuecore=!core:~0,%counter%!                                                  "
set delay=0
:delay
if %delay%==200 goto start
set /a delay=delay+5
goto delay
:exit
ENDLOCAL

IF EXIST "../Proyectos/%capp%" (rmdir /S /Q "../Proyectos/%capp%")

7za x -o"../Proyectos/%capp%" "../Proyecto-apk/%capp%"
::java -jar apktool.jar d "../Proyectos/%capp%" "../Proyecto-apk/%capp%"
::java -jar apktool_2.3.3.jar d "../Proyectos/%capp%" "../Proyecto-apk/%capp%"

if errorlevel 1 (
echo "An Error Occured, Please Check The Log (option [!count!] %%F )"
)

java -jar -Duser.language=en -Dfile.encoding=UTF8 "%~dp0\apktool_2.3.3.jar" %*
java -jar -Duser.language=en -Dfile.encoding=UTF8 "%~dp0\apktool.jar" %*
TIMEOUT /T 2 /nobreak>NUL
CLS
TIMEOUT /T 0 /nobreak>NUL
echo.
echo.                                                      %Autor%
TIMEOUT /T 0 /nobreak>NUL
echo.                             .----------------.  .----------------.  .----------------.
TIMEOUT /T 0 /nobreak>NUL
echo.                            : .--------------. :: .--------------. :: .--------------. :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :      __      : :: :   ______     : :: :  ___  ____   : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :     /  \     : :: :  :_   __ \   : :: : :_  ::_  _:  : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :    / /\ \    : :: :    : :__) :  : :: :   : :_/ /    : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :   / ____ \   : :: :    :  ___/   : :: :   :  __'.    : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : : _/ /    \ \_ : :: :   _: :_      : :: :  _: :  \ \_  : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : ::____:  :____:: :: :  :_____:     : :: : :____::____: : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : :              : :: :              : :: :              : :
TIMEOUT /T 0 /nobreak>NUL
echo.                            : '--------------' :: '--------------' :: '--------------' :
echo.                              '----------------'  '----------------'  '----------------'

TIMEOUT /T 1 /nobreak>NUL
echo.                            [%ADroid%] %Zip% %apk% %apk1%
TIMEOUT /T 1 /nobreak>NUL
echo.                               %web%
TIMEOUT /T 1 /nobreak>NUL
::type _Android.inf
TIMEOUT /T 1 /nobreak>NUL
echo. [-]Folder:.............................................. .\Tools\Proyectos\%capp%
TIMEOUT /T 1 /nobreak>NUL
echo. [-]Compression-Level: .................................. %usrc%
TIMEOUT /T 1 /nobreak>NUL
echo. [-]Heap Size:........................................... %heapy%mb
TIMEOUT /T 1 /nobreak>NUL
echo. [-]Decompile :.......................................... %decs%
TIMEOUT /T 1 /nobreak>NUL
echo. [-]App:................................................. %capp%
echo. [-]Lineas totales almacenadas [!num!]
del /f _Android.inf
cd ..
TIMEOUT /T 1 /nobreak>NUL

FOR %%x in (.\Proyecto-apk\*.apk) DO echo.-------------------------^> [%%x]%heapy%mb 
TIMEOUT /T 0 /nobreak>NUL
::echo Directorio Actual: %CD%
set /p Android=%folder% Seleccione Enter [+]
:chc
set capp=None
goto MENU


:error420
CLS
echo.
echo ^|-----^>[*]Incorrecto Decompile "%decs%" para Compression Level "%leve%"
echo                 "Error dato al ingresar %leve%"
echo.    ___________                               _____ _______________   
echo.    \_   _____/_____________  ___________    /  ^|  ^|\_____  \   _  \  
echo.     ^|    __)_\_  __ \_  __ \/  _ \_  __ \  /   ^|  ^|_/  ____/  /_\  \ 
echo.     ^|        \^|  ^| \/^|  ^| \(  ^<_^> )  ^| \/ /    ^   /       \  \_/   \
echo.    /_______  /^|__^|   ^|__^|   \____/^|__^|    \____   ^|\_______ \_____  /
echo.            \/                                  ^|__^|        \/     \/ 
echo.                                 %leve%    %decs%
pause
goto MENU