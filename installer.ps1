# Start a new PowerShell process to execute install.ps1
try {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}
catch {
    Write-Error "No se pudo instalar chocolatey ggez error:  $_.Exception.Message"
}
try {
    # Start a new PowerShell process to execute programs.ps1
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    Start-Process powershell -Verb RunAs -ArgumentList "-File `".\programs.ps1`""  
    Write-Host "instalando programas"
}
catch {
    Write-Error "Los progrmas no programan. ggez error:  $_.Exception.Message"
}