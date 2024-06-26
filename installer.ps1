# Función para instalar Chocolatey
function Instalar-Chocolatey {
    # Copy-pasteado de la pagina oficial 
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}
$repetir=$true
do{

    # Menú principal
    Write-Host "Bienvenido al programa"
    Write-Host ""
    Write-Host "Opciones:"
    Write-Host "  1. Instalar Chocolatey"
    Write-Host "  2. Ver programas.bat"
    Write-Host "  3. Ejecutar programas.bat"
    Write-Host "  4. Salir"
    Write-Host ""
    Write-Host "Ingrese la opcion deseada (1-4):"
    
    # Leer la opción del usuario
    $opcion = Read-Host
    
    # Ejecutar la función seleccionada
    switch ($opcion) {
        1 { Instalar-Chocolatey }
        2 { Start-Process -FilePath 'notepad.exe' -ArgumentList '.\programs.bat' }
        3 {
             Start-Process -FilePath .\programs.bat -Verb runas 
             Exit 
        }
        4 { 
            $repetir=$false
            Exit 
        }
        default { Write-Host "Opción no válida." }
    }
}
while($repetir)
    