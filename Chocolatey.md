#Chocolatey

    ###El package manager de windows 
##Instalación 
    ### Primero intentar con installer.ps1 (los otros 2 script son dependencias asi que descargalos tambien wachin)
    Probablemente sea suficiente con pegar 
    ´´´
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    ´´´

    en una ventana de admin de powershell 

    pero por las dudas https://chocolatey.org/install

    el script de al lado instala todos los proigramas listado (duh) de una sola pasada indepandientemente del sistema.
    No olvidarse de abrir una consola fresca despues de instalar chocolatey

    Y en caso de que falte algo buscar en https://community.chocolatey.org/packages