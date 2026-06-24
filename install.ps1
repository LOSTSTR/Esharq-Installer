$link = "https://github.com/LOSTSTR/Esharq-Installer/releases/latest/download/EsharqInstallerCli.exe"

$outfile = "$env:TEMP\EsharqInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
