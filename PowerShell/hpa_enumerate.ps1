Get-ADGroupMember "Domain Admins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "domain_admins.csv"

Get-ADGroupMember "Enterprise Admins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "enterprise_admins.csv"
Get-ADGroupMember "DNSAdmins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "DNSAdmins.csv"
Get-ADGroupMember "Schema Admins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Schema Admins.csv"
Get-ADGroupMember "Account Operators" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Account Operators.csv"
Get-ADGroupMember "Backup Operators" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Backup Operators.csv"
Get-ADGroupMember "Cryptographic Operators" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Cryptographic Operators.csv"
Get-ADGroupMember "Remote Management Users" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Remote Management Users.csv"
Get-ADGroupMember "Server Operators" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Server Operators.csv"
Get-ADGroupMember "Print Operators" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Print Operators.csv"

Get-ADGroupMember "Organization Management" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | export-csv -NoClobber -NoTypeInformation "Organization Management.csv"