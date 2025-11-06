@ECHO OFF
chcp 1451
color a
title 
echo Проверка наличия папки data...
timeout /t 0 /NOBREAK > nul
if not exist "data" (
    echo Отсутствует папка "Data" с данными. Error 0x1.
    pause
    exit /b
)

rem tasklist /fi "imagename eq RE3COV3RY.exe" 2>NUL | findstr /i "RE3COV3RY.exe" >NUL


:main_menu
:: Добро пожарено
cls
color b
title Windows Helper 1.4
echo Ver 1.4: t.me/Nez3rAll
echo.
echo Добро пожаловать в восстановление Windows от Windows Helper by Nez3r!
echo Чтобы выбрать раздел или выбрать действие, введите номер действия.
echo.

echo 1 - Диспетчеры задач
echo 2 - Системные действия
echo 3 - Программы
echo 6 - Телега
echo 7 - Changelogs
echo 8 - Инфа о реестре
echo 9 - Удалить Windows Helper
echo 0 - Выход
echo.
set /p option="Номер="

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
echo  [1] AppInit_DLLs значения:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v AppInit_DLLs 2>nul
if %errorlevel% neq 0 (
    echo Не удалось найти значение AppInit_DLLs
)


echo  [2] AppInit_DLLs (Wow6432Node) значения:
reg query "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Windows" /v AppInit_DLLs 2>nul
if %errorlevel% neq 0 (
    echo Не удалось найти значение AppInit_DLLs в Wow6432Node
)


echo  [3] Userinit значения:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit 2>nul
if %errorlevel% neq 0 (
    echo Не удалось найти значение Userinit
)


echo  [4] Shell значения:
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell 2>nul
if %errorlevel% neq 0 (
    echo Не удалось найти значение Shell
)


echo ===============================================
echo Дополнительная информация:

echo AppInit_DLLs - библиотеки, загружаемые при запуске приложений
echo Userinit - процесс, запускаемый при входе пользователя
echo Shell - оболочка Windows (обычно explorer.exe)
echo ===============================================


echo Нажмите любую клавишу для выхода в меню...
pause>nul
goto main_menu


:page1
cls
echo Страница 1. Диспетчеры задач
echo.
echo 1 - Оригинальный диспетчер задач
echo 2 - Старый диспетчер задач (XP)
echo 3 - AnVir Task Manager (Launcher)
echo 4 - Process Hacker
echo 5 - Process Hacker x32\x86
echo 6 - Process Hacker Extreme
echo 7 - System Informer
echo 8 - Process Explorer
echo 0 - Вернуться в главное меню
echo.
set /p option="Номер="
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
echo Страница 2. Системные действия
echo 1 - Выход из системы
echo 2 - Перезагрузка системы
echo 3 - Выключить ПК
echo 4 - Разблокировать всю систему (только при разблокированном реестре)
echo 5 - Очистить Debugger (только при разблокированном реестре)
echo 6 - Заменить sethc.exe и utilman.exe на командную строку (только при разблокированном реестре)
echo 66 - Вернуть sethc.exe и utilman.exe (только при разблокированном реестре)
echo 7 - Запустить меню выполнить
echo 8 - Нестандартная пасхалка
echo 0 - Вернуться в главное меню
echo.
set /p option="Номер="
if "%option%"=="1" logoff
if "%option%"=="2" shutdown /r /t 0
if "%option%"=="3" shutdown /s /t 0
if "%option%"=="4" start Data\6ciCiNlALoLcGRlIEarzI19qAgjo6pKR.exe
if "%option%"=="5" start \Debbuger\9gKcLWS2kK9A0JHFX5hz2BGrbOm3I0h2.exe && reg import \Debbuger\Debbuger.reg
if "%option%"=="6" start reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\Windows\system32\cmd.exe" /f&&start reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "C:\Windows\system32\cmd.exe" /f
if "%option%"=="7" start data\XSoKPZEtpIttYXNMTA266Vrv3tZ35Jcz.exe
if "%option%"=="8" (
    echo Ну реально не придумал, вот такая пасхалка ахаха - t.me/Nez3rAll
    pause
)
if "%option%"=="0" goto main_menu
if "%option%"=="66" reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /f && reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /f
goto page2

:: Страница 3: Программы
:page3
cls
echo Страница 3. Программы
echo 1 - Анлокеры (Для очистки всего пк, или для удаления вирусов)
echo 2 - Клинеры (Для очистки пк от мусора)
echo 3 - Файловые менеджеры
echo 0 - Выход в главное меню
echo.
set /p option="Номер="
if "%option%"=="1" (goto page3_unlockers)
if "%option%"=="2" (goto page3_cleaners)
if "%option%"=="3" (goto page3_filemanagers)
if "%option%"=="0" goto main_menu
goto page3



:page3_unlockers
cls
echo Страница 3.1. Анлокеры
echo 1 - SimpleUnlocker (SU)
echo 2 - Autoruns (программа для тотальной очистки автозагрузки)
echo 3 - RegAlyzer (альтернатива regedit, работает даже с заблокированым реестром)
echo 0 - Вернуться в меню программ
echo.
if "%option%" GTR 13 echo lol
set /p option="Номер="
if "%option%"=="1" (start simpleunlocker_release\zXM2wr1596vA6sKO2rCkHABToKBPDwRN.exe)
if "%option%"=="2" (start Data\Programs\Autoruns\274892095820950.exe)
if "%option%"=="3" (start data\Programs\RegAlyzer\mSt6XDgnGh6n8f6kq9eYcQ.exe)
if "%option%"=="0" goto page3
goto page3


:page3_cleaners
cls
echo Страница 3.2. Клинеры
echo 1 - ATFCleaner
echo 2 - TempCleaner
echo 0 - Вернуться в меню программ
echo.
set /p option="Номер="
if "%option%"=="1" (start data\Programs\QaZmYgRDetR4sWsxTbE2i85JtkaSpEkG.exe)
if "%option%"=="2" (start data\Programs\TempCleaner\TempCleaner.exe)
if "%option%"=="0" goto page3
goto page3


:page3_filemanagers
cls
echo Страница 3.3. Файловые менеджеры
echo 1 - Explorer++ (RUS + custom config)
echo 2 - Far Manager v3.0 build 6575
echo 0 - Вернуться в меню программ
echo.
set /p option="Номер="
if "%option%"=="1" (start data\Expl++\0ezuGcQHqijp1H3xPI.exe)
if "%option%"=="2" (start data\FAR\yvrP29YN8p9fzroP0n.exe)
if "%option%"=="0" goto page3
goto page3



:page3_backup
cls
echo Страница 3. Программы
echo  Анлокеры:
echo 1 - SimpleUnlocker (SU)
echo  Клинеры:
echo 2 - ATFCleaner
echo 3 - TempCleaner
echo  Другое:
echo 4 - Autoruns (программа для тотальной очистки автозагрузки)
echo 5 - Монитор ресурсов
echo 6 - ColorConsole x64 (командная строка с интерфейсом)
echo 7 - RegAlyzer (альтернатива regedit, работает даже с заблокированым реестром
echo 8 - Defender Killer (программа для удаления windows defender)
echo 9 - Run-Command (программа для запуска других программ)
echo 10 - Qm (почта)
echo 11 - Clock (часы под курсором)
echo 12 - WSMaster (мастер драйверов и сервисов)
echo 0 - Вернуться в главное меню
echo.
if "%option%" GTR 13 echo lol
set /p option="Номер="
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
echo Определение архитектуры системы:
echo %PROCESSOR_ARCHITECTURE%
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    start Data\Programs\SystemInformer\amd64\SystemInformer.exe
) else (
	start Data\Programs\SystemInformer\I386\SystemInformer.exe
)
echo %PROCESSOR_ARCHITECTURE%
goto page1
