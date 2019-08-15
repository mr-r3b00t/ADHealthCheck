#kudos to http://www.virtu-al.net/2013/01/17/checking-ad-for-secure-ldap-connections-with-powershell/

$dc = [System.DirectoryServices.ActiveDirectory.Domain]::getCurrentDomain().DomainControllers | Select -First 1
$LDAPS = [ADSI]"LDAP://$($dc.name):636"
try {
   $Connection = [adsi]($LDAPS)
} Catch {
}
If ($Connection.Path) {
   Write-Host "Active Directory server correctly configured for SSL, test connection to $($LDAPS.Path) completed." -ForegroundColor Cyan
} Else {
   Write-Host "Active Directory server not configured for SSL, test connection to LDAP://$($dc.name):636 did not work." -ForegroundColor Red
}