TITLE "Instalando Programas"
REM la siguiente linea se encarga de desactivar la confirmacion de instalacion para evitar dar si en cada programa
choco feature enable -n=allowGlobalConfirmation
choco install vscode 
choco install firefox 
choco install python3 
choco install 7zip 
choco install git 
choco install paint.net 
choco install foxitreader 
choco install curl 
choco install k-litecodecpackfull 
choco install amd-ryzen-chipset 
choco install rust 
choco install rustdesk.portable
choco install wiztree 
choco install onlyoffice 
choco install equalizerapo 
choco install obsidian 
choco install keepassxc 
choco install kdenlive 
REM Re-Activamos la confirmacion de instalacion de paquetes
choco feature disable -n=allowGlobalConfirmation
@ECHO "Listo el Pollo!"
pause