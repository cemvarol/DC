install-windowsfeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
$dsrmPassword = (ConvertTo-SecureString -AsPlainText -Force -String "Potato2020")
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "herdemo.club" `
-DomainNetbiosName "HERDEMO" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-SafeModeAdministratorPassword $dsrmPassword `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
