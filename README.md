# Security-bypass-off
========================================================================================================================
Запуск ⚠️⚠️⚠️⚠️⚠️
откройте cmd от имини администратора
И три файла Fix.txt fix.md fix_iwr.ps1 дожны быть на рабочем столе1
Fix.txt Меняйте на свой пути к файлам 

==================================================================================================================
<1 выполните комманду > что бы скрипты работали в powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

.\\fix\_iwr.ps1

powershell -ExecutionPolicy Bypass -Command "\& 'C:\\Users\\livxb\\OneDrive\\Desktop\\fix\_iwr.ps1'"

инфо

livxb -> свой пользователе или путь
Выполните впервые очередь
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

Открыть СMD и свой путь укажите к файл fix\_iwr.ps1**
C:\\Users\\livxb\\OneDrive\\Desktop\\fix\_iwr.ps1

Перезапуск пк
Restart-Computer -Force

проверка



\# Проверка 1

Invoke-WebRequest https://google.com



\# Проверка 2 через алиас

iwr https://google.com



