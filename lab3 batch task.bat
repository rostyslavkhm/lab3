@echo off
setlocal

REM Підказка для користувача
echo Enter the path to the copy source:
set /p source_path=""

REM Перевірка, чи введено правильний шлях
if not exist "%source_path%" (
    echo The wrong path!
    pause
    exit /b 1
)

REM Підказка для користувача
echo Enter the path to the copy destination:
set /p destination_path=""

REM Перевірка, чи введено правильний шлях
if not exist "%destination_path%" (
    echo The wrong path!
    pause
    exit /b 1
)

REM Підказка для користувача
echo Enter the number of folders to copy:
set /p num_folders=""

REM Копіювання вказаної кількості папок
for /l %%i in (1, 1, %num_folders%) do (
    REM Підказка для користувача
    echo Enter a folder name %%i for copying:
    set /p folder_name=""

    REM Копіювання папки
    xcopy "%source_path%\%folder_name%" "%destination_path%\%folder_name%" /e /i /y
)

REM Виведення повідомлення про успішне завершення
echo Copy completed successfully!
pause
exit /b 0
