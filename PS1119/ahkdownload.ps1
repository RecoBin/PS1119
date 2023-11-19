# Define the download URL and file path for the AutoHotkey installer
$url = "https://www.autohotkey.com/download/ahk-install.exe"
$outfile = "$env:TEMP\ahk-install.exe"

# Download the installer silently
Invoke-WebRequest -Uri $url -OutFile $outfile

# Run the installer silently
Start-Process -FilePath $outfile -ArgumentList "/S" -Wait
