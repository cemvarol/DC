$url = "https://github.com/cemvarol/DC/blob/master/ChromeSetup.exe?raw=true"
$output = "$env:USERPROFILE\downloads\ChromeSetup.exe"
Invoke-WebRequest -Uri $url -OutFile $output

& "$env:USERPROFILE\downloads\ChromeSetup.exe"
