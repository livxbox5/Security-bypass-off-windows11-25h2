VirusTotal check 
Disable ps securety.reg

```
https://www.virustotal.com/gui/file/419d609a9ba98a96215b4a1769126c602d053e827ba0d25318e9e55e12d1fa81/summary
```
Disable ps securety.reg

check fix_iwr.ps1
```
https://www.virustotal.com/gui/file/42725f4b2b55216d9b21dc7c59c89f45d9b1a77f7ef988627f99cf4facea7256/detection
```
# Security-bypass-off
========================================================================================================================
windows 11 25H2 (Сборка ом 2620.7462)
Запуск ⚠️⚠️⚠️⚠️⚠️
откройте cmd от имини администратора
И три файла Fix.txt fix.md fix_iwr.ps1 дожны быть на рабочем столе
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



