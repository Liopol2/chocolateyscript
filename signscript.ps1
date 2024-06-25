#Set Parameters
$CertificateThumbprint = "B7C97559247768F988B3E6B3E267C06D6485BC0A"
$ScriptPath = "C:\Users\leona\chocolatey\programs.ps1"
 
#Get the Certificate from Cert Store
$CodeSignCert = Get-ChildItem -Path Cert:\CurrentUser\My | Where-Object {$_.Thumbprint -eq $CertificateThumbprint}
 
#Sign the PS1 file
Set-AuthenticodeSignature -FilePath $ScriptPath -Certificate $CodeSignCert
