#Check Active Directoy Default Password Policy

Get-ADDefaultDomainPasswordPolicy | Export-csv -Path password_policy -NoClobber -NoTypeInformation