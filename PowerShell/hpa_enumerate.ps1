Get-ADGroupMember "Domain Admins" -Recursive | Get-AdUser -Property LastLogonDate -| select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "domain_admins.csv"

Get-ADGroupMember "Enterprise Admins" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "enterprise_admins.csv"
Get-ADGroupMember "DNSAdmins" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "DNSAdmins.csv"
Get-ADGroupMember "Schema Admins" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Schema Admins.csv"
Get-ADGroupMember "Account Operators" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Account Operators.csv"
Get-ADGroupMember "Backup Operators" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Backup Operators.csv"
Get-ADGroupMember "Cryptographic Operators" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Cryptographic Operators.csv"
Get-ADGroupMember "Remote Management Users" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Remote Management Users.csv"
Get-ADGroupMember "Server Operators" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Server Operators.csv"
Get-ADGroupMember "Print Operators" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Print Operators.csv"

Get-ADGroupMember "Organization Management" -Recursive | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Organization Management.csv"