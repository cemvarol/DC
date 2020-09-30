```sh

curl -O https://raw.githubusercontent.com/cemvarol/DC/master/DC.bash
ls -la DC.bash
chmod +x DC.bash
./DC.bash

```


```powershell
$url = "https://raw.githubusercontent.com/cemvarol/DC/master/1-SetDCReady.ps1"
$output1 = "$env:USERPROFILE\desktop\AurianDC.ps1"
Invoke-WebRequest -Uri $url -OutFile $output1

Start-Sleep -s 3

Start-Process Powershell.exe -Argumentlist "-file $output1"

```
