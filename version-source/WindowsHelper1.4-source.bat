@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=C:\Users\qwert.ASUSX550\Desktop\All\adv-bat\ab2econv291pro\icons\icon9.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.4.0.0
REM BFCPEVERPRODUCT=Windows Helper
REM BFCPEVERDESC=Windows Helper
REM BFCPEVERCOMPANY=nez3r
REM BFCPEVERCOPYRIGHT=nez3r 2025
REM BFCPEOPTIONEND
@ECHO ON
@echo off
color a
title 
echo à®¢¥àª  ­ «¨ç¨ï ¯ ¯ª¨ data...
timeout /t 0 /NOBREAK > nul
if not exist "data" (
    echo Žâáãâáâ¢ã¥â ¯ ¯ª  "Data" á ¤ ­­ë¬¨. Error 0x1.
    pause
    exit /b
)

rem tasklist /fi "imagename eq RE3COV3RY.exe" 2>NUL | findstr /i "RE3COV3RY.exe" >NUL


:main_menu
:: „®¡à® ¯®¦ à¥­®
cls
color b
title Windows Helper 1.4
echo Ver 1.4: t.me/Nez3rAll
echo.
echo „®¡à® ¯®¦ «®¢ âì ¢ ¢®ááâ ­®¢«¥­¨¥ Windows ®â Windows Helper by Nez3r!
echo —â®¡ë ¢ë¡à âì à §¤¥« ¨«¨ ¢ë¡à âì ¤¥©áâ¢¨¥, ¢¢¥¤¨â¥ ­®¬¥à ¤¥©áâ¢¨ï.
echo.

echo 1 - „¨á¯¥âç¥àë § ¤ ç
echo 2 - ‘¨áâ¥¬­ë¥ ¤¥©áâ¢¨ï
echo 3 - à®£à ¬¬ë
echo 6 - ’¥«¥£ 
echo 7 - Changelogs
echo 8 - ˆ­ä  ® à¥¥áâà¥
echo 9 - “¤ «¨âì Windows Helper
echo 0 - ‚ëå®¤
echo.
set /p option="®¬¥à="

if "%option%"=="1" goto page1
if "%option%"=="2" goto page2
if "%option%"=="3" goto page3
if "%option%"=="6" start http://t.me/Nez3rAll
if "%option%"=="7" start changelogs.txt
if "%option%"=="8" goto regedit_info
if "%option%"=="9" start Uninstall.exe & exit
if "%option%"=="0" exit

goto main_menu


:regedit_info
echo  [1] AppInit_DLLs §­ ç¥­¨ï:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v AppInit_DLLs 2>nul
if %errorlevel% neq 0 (
    echo ¥ ã¤ «®áì ­ ©â¨ §­ ç¥­¨¥ AppInit_DLLs
)


echo  [2] AppInit_DLLs (Wow6432Node) §­ ç¥­¨ï:
reg query "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Windows" /v AppInit_DLLs 2>nul
if %errorlevel% neq 0 (
    echo ¥ ã¤ «®áì ­ ©â¨ §­ ç¥­¨¥ AppInit_DLLs ¢ Wow6432Node
)


echo  [3] Userinit §­ ç¥­¨ï:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit 2>nul
if %errorlevel% neq 0 (
    echo ¥ ã¤ «®áì ­ ©â¨ §­ ç¥­¨¥ Userinit
)


echo  [4] Shell §­ ç¥­¨ï:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell 2>nul
if %errorlevel% neq 0 (
    echo ¥ ã¤ «®áì ­ ©â¨ §­ ç¥­¨¥ Shell
)


echo ===============================================
echo „®¯®«­¨â¥«ì­ ï ¨­ä®à¬ æ¨ï:

echo AppInit_DLLs - ¡¨¡«¨®â¥ª¨, § £àã¦ ¥¬ë¥ ¯à¨ § ¯ãáª¥ ¯à¨«®¦¥­¨©
echo Userinit - ¯à®æ¥áá, § ¯ãáª ¥¬ë© ¯à¨ ¢å®¤¥ ¯®«ì§®¢ â¥«ï
echo Shell - ®¡®«®çª  Windows (®¡ëç­® explorer.exe)
echo ===============================================


echo  ¦¬¨â¥ «î¡ãî ª« ¢¨èã ¤«ï ¢ëå®¤  ¢ ¬¥­î...
pause>nul
goto main_menu


:page1
cls
echo ‘âà ­¨æ  1. „¨á¯¥âç¥àë § ¤ ç
echo.
echo 1 - Žà¨£¨­ «ì­ë© ¤¨á¯¥âç¥à § ¤ ç
echo 2 - ‘â àë© ¤¨á¯¥âç¥à § ¤ ç (XP)
echo 3 - AnVir Task Manager (Launcher)
echo 4 - Process Hacker
echo 5 - Process Hacker x32\x86
echo 6 - Process Hacker Extreme
echo 7 - System Informer
echo 8 - Process Explorer
echo 0 - ‚¥à­ãâìáï ¢ £« ¢­®¥ ¬¥­î
echo.
set /p option="®¬¥à="
if "%option%"=="1" start c:\Windows\system32\taskmgr.exe
if "%option%"=="2" start uAGJcqGpuNpQTx55E6B1v2pCCKVAH6Ah.exe
if "%option%"=="3" start AnVirTaskMGR\eSJ6jMpURF4q6G8.exe
if "%option%"=="4" start ProcessHacker\WUjNNLgth8oSJllJ8jkCOvgZnFnezIMy.exe
if "%option%"=="5" start ProcessHacker\x86\aK2Ii5N745ByNIilHcbvGiTmXsUzEhMO.exe
if "%option%"=="6" start simpleunlocker_release\othersoftware\ProcessHacker\x64\gew48rre.exe
if "%option%"=="7" goto sysinformer
if "%option%"=="8" data\Programs\ProcessExplorer\select.exe
if "%option%"=="0" goto main_menu
goto page1

:page2
cls
echo ‘âà ­¨æ  2. ‘¨áâ¥¬­ë¥ ¤¥©áâ¢¨ï
echo 1 - ‚ëå®¤ ¨§ á¨áâ¥¬ë
echo 2 - ¥à¥§ £àã§ª  á¨áâ¥¬ë
echo 3 - ‚ëª«îç¨âì Š
echo 4 -  §¡«®ª¨à®¢ âì ¢áî á¨áâ¥¬ã (â®«ìª® ¯à¨ à §¡«®ª¨à®¢ ­­®¬ à¥¥áâà¥)
echo 5 - Žç¨áâ¨âì Debugger (â®«ìª® ¯à¨ à §¡«®ª¨à®¢ ­­®¬ à¥¥áâà¥)
echo 6 - ‡ ¬¥­¨âì sethc.exe ¨ utilman.exe ­  ª®¬ ­¤­ãî áâà®ªã (â®«ìª® ¯à¨ à §¡«®ª¨à®¢ ­­®¬ à¥¥áâà¥)
echo 66 - ‚¥à­ãâì sethc.exe ¨ utilman.exe (â®«ìª® ¯à¨ à §¡«®ª¨à®¢ ­­®¬ à¥¥áâà¥)
echo 7 - ‡ ¯ãáâ¨âì ¬¥­î ¢ë¯®«­¨âì
echo 8 - ¥áâ ­¤ àâ­ ï ¯ áå «ª 
echo 0 - ‚¥à­ãâìáï ¢ £« ¢­®¥ ¬¥­î
echo.
set /p option="®¬¥à="
if "%option%"=="1" logoff
if "%option%"=="2" shutdown /r /t 0
if "%option%"=="3" shutdown /s /t 0
if "%option%"=="4" start Data\6ciCiNlALoLcGRlIEarzI19qAgjo6pKR.exe
if "%option%"=="5" start \Debbuger\9gKcLWS2kK9A0JHFX5hz2BGrbOm3I0h2.exe && reg import \Debbuger\Debbuger.reg
if "%option%"=="6" start reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\Windows\system32\cmd.exe" /f&&start reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "C:\Windows\system32\cmd.exe" /f
if "%option%"=="7" start data\XSoKPZEtpIttYXNMTA266Vrv3tZ35Jcz.exe
if "%option%"=="8" (
    echo ã à¥ «ì­® ­¥ ¯à¨¤ã¬ «, ¢®â â ª ï ¯ áå «ª   å å  - t.me/Nez3rAll
    pause
)
if "%option%"=="0" goto main_menu
if "%option%"=="66" reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /f && reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /f
goto page2

:: ‘âà ­¨æ  3: à®£à ¬¬ë
:page3
cls
echo ‘âà ­¨æ  3. à®£à ¬¬ë
echo 1 - €­«®ª¥àë („«ï ®ç¨áâª¨ ¢á¥£® ¯ª, ¨«¨ ¤«ï ã¤ «¥­¨ï ¢¨àãá®¢)
echo 2 - Š«¨­¥àë („«ï ®ç¨áâª¨ ¯ª ®â ¬ãá®à )
echo 3 - ” ©«®¢ë¥ ¬¥­¥¤¦¥àë
echo 0 - ‚ëå®¤ ¢ £« ¢­®¥ ¬¥­î
echo.
set /p option="®¬¥à="
if "%option%"=="1" (goto page3_unlockers)
if "%option%"=="2" (goto page3_cleaners)
if "%option%"=="3" (goto page3_filemanagers)
if "%option%"=="0" goto main_menu
goto page3



:page3_unlockers
cls
echo ‘âà ­¨æ  3.1. €­«®ª¥àë
echo 1 - SimpleUnlocker (SU)
echo 2 - Autoruns (¯à®£à ¬¬  ¤«ï â®â «ì­®© ®ç¨áâª¨  ¢â®§ £àã§ª¨)
echo 3 - RegAlyzer ( «ìâ¥à­ â¨¢  regedit, à ¡®â ¥â ¤ ¦¥ á § ¡«®ª¨à®¢ ­ë¬ à¥¥áâà®¬)
echo 0 - ‚¥à­ãâìáï ¢ ¬¥­î ¯à®£à ¬¬
echo.
if "%option%" GTR 13 echo lol
set /p option="®¬¥à="
if "%option%"=="1" (start simpleunlocker_release\zXM2wr1596vA6sKO2rCkHABToKBPDwRN.exe)
if "%option%"=="2" (start Data\Programs\Autoruns\274892095820950.exe)
if "%option%"=="3" (start data\Programs\RegAlyzer\mSt6XDgnGh6n8f6kq9eYcQ.exe)
if "%option%"=="0" goto page3
goto page3


:page3_cleaners
cls
echo ‘âà ­¨æ  3.2. Š«¨­¥àë
echo 1 - ATFCleaner
echo 2 - TempCleaner
echo 0 - ‚¥à­ãâìáï ¢ ¬¥­î ¯à®£à ¬¬
echo.
set /p option="®¬¥à="
if "%option%"=="1" (start data\Programs\QaZmYgRDetR4sWsxTbE2i85JtkaSpEkG.exe)
if "%option%"=="2" (start data\Programs\TempCleaner\TempCleaner.exe)
if "%option%"=="0" goto page3
goto page3


:page3_filemanagers
cls
echo ‘âà ­¨æ  3.3. ” ©«®¢ë¥ ¬¥­¥¤¦¥àë
echo 1 - Explorer++ (RUS + custom config)
echo 2 - Far Manager v3.0 build 6575
echo 0 - ‚¥à­ãâìáï ¢ ¬¥­î ¯à®£à ¬¬
echo.
set /p option="®¬¥à="
if "%option%"=="1" (start data\Expl++\0ezuGcQHqijp1H3xPI.exe)
if "%option%"=="2" (start data\FAR\yvrP29YN8p9fzroP0n.exe)
if "%option%"=="0" goto page3
goto page3



:page3_backup
cls
echo ‘âà ­¨æ  3. à®£à ¬¬ë
echo  €­«®ª¥àë:
echo 1 - SimpleUnlocker (SU)
echo  Š«¨­¥àë:
echo 2 - ATFCleaner
echo 3 - TempCleaner
echo  „àã£®¥:
echo 4 - Autoruns (¯à®£à ¬¬  ¤«ï â®â «ì­®© ®ç¨áâª¨  ¢â®§ £àã§ª¨)
echo 5 - Œ®­¨â®à à¥áãàá®¢
echo 6 - ColorConsole x64 (ª®¬ ­¤­ ï áâà®ª  á ¨­â¥àä¥©á®¬)
echo 7 - RegAlyzer ( «ìâ¥à­ â¨¢  regedit, à ¡®â ¥â ¤ ¦¥ á § ¡«®ª¨à®¢ ­ë¬ à¥¥áâà®¬
echo 8 - Defender Killer (¯à®£à ¬¬  ¤«ï ã¤ «¥­¨ï windows defender)
echo 9 - Run-Command (¯à®£à ¬¬  ¤«ï § ¯ãáª  ¤àã£¨å ¯à®£à ¬¬)
echo 10 - Qm (¯®çâ )
echo 11 - Clock (ç áë ¯®¤ ªãàá®à®¬)
echo 12 - WSMaster (¬ áâ¥à ¤à ©¢¥à®¢ ¨ á¥à¢¨á®¢)
echo 0 - ‚¥à­ãâìáï ¢ £« ¢­®¥ ¬¥­î
echo.
if "%option%" GTR 13 echo lol
set /p option="®¬¥à="
if "%option%"=="1" (start simpleunlocker_release\zXM2wr1596vA6sKO2rCkHABToKBPDwRN.exe)
if "%option%"=="2" (data\Programs\QaZmYgRDetR4sWsxTbE2i85JtkaSpEkG.exe)
if "%option%"=="3" (data\Programs\TempCleaner\TempCleaner.exe)
if "%option%"=="4" (start Data\Programs\Autoruns\274892095820950.exe)
if "%option%"=="5" (start resmon.exe)
if "%option%"=="6" (start data\Programs\kcElVB7yrQB0W1Q9mCBHbnSKrwlBdOyW.exe)
if "%option%"=="7" (start data\Programs\RegAlyzer\mSt6XDgnGh6n8f6kq9eYcQ.exe)
if "%option%"=="8" (start data\Programs\killer\DEFEND~1.exe)
if "%option%"=="9" (start data\Programs\IUVmJzBP2Mdxn9nmEN5tN5RkGAe7XvdW.exe)
if "%option%"=="10" (start data\Programs\vBanDfMuYq1dP2f9TPi6f19NvqgB2ThR.exe)
if "%option%"=="11" (start data\Programs\KHRKcpOGCwgTfYYDjkfFzIJ4GTM0WyAb.exe)
if "%option%"=="12" (start data\Programs\hauCFbg4GwhOTwiavcuzHL17ozwAUo97.exe)
if "%option%"=="0" goto main_menu
goto page3



:sysinformer
echo Ž¯à¥¤¥«¥­¨¥  àå¨â¥ªâãàë á¨áâ¥¬ë:
echo %PROCESSOR_ARCHITECTURE%
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    start Data\Programs\SystemInformer\amd64\SystemInformer.exe
) else (
	start Data\Programs\SystemInformer\I386\SystemInformer.exe
)
echo %PROCESSOR_ARCHITECTURE%

goto page1
