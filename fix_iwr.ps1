# Запустите этот скрипт от имени АДМИНИСТРАТОРА

# 1. Установить политики выполнения
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser -Force
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine -Force

# 2. Создать настройки в реестре
New-Item -Path "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -Name "ConsolePrompting" -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -Name "ExecutionPolicy" -Value "Bypass"

# 3. Отключить предупреждение Invoke-WebRequest
$PSDefaultParameterValues['Invoke-WebRequest:UseBasicParsing'] = $true
$PSDefaultParameterValues['Invoke-WebRequest:WarningAction'] = 'SilentlyContinue'

# 4. Создать профиль PowerShell
$profilePath = "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
$profileContent = @'
# Отключить все предупреждения
$WarningPreference = "SilentlyContinue"
$ProgressPreference = "SilentlyContinue"
$ErrorActionPreference = "SilentlyContinue"

# Автоматически использовать UseBasicParsing
$PSDefaultParameterValues["Invoke-WebRequest:UseBasicParsing"] = $true
$PSDefaultParameterValues["Invoke-WebRequest:WarningAction"] = "SilentlyContinue"

# Функция без предупреждений
function Invoke-SafeWebRequest {
    param([string]$Uri)
    Invoke-WebRequest -Uri $Uri -UseBasicParsing -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
}

# Алиасы
Set-Alias iwr Invoke-SafeWebRequest
Set-Alias curl Invoke-SafeWebRequest
Set-Alias wget Invoke-SafeWebRequest
'@

# Создать папку если нет
$profileDir = Split-Path $profilePath -Parent
if (!(Test-Path $profileDir)) { New-Item -Path $profileDir -ItemType Directory -Force }

# Записать профиль
$profileContent | Out-File -FilePath $profilePath -Encoding UTF8

# 5. Применить профиль
. $profilePath

# 6. Проверить
Write-Host "`nПроверка..." -ForegroundColor Green
Invoke-WebRequest https://google.com

Write-Host "`nГотово! Перезагрузите компьютер." -ForegroundColor Green