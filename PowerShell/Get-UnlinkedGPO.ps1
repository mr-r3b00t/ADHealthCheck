import-module grouppolicy

function IsNotLinked($xmldata){
    If ($xmldata.GPO.LinksTo -eq $null) {
        Return $true
    }
    
    Return $false
}

$unlinkedGPOs = @()

Get-GPO -All | ForEach { $gpo = $_ ; $_ | Get-GPOReport -ReportType xml | ForEach { If(IsNotLinked([xml]$_)){$unlinkedGPOs += $gpo} }}

If ($unlinkedGPOs.Count -eq 0) {
    write-host "No Unlinked GPO's Found" -ForegroundColor Cyan
    write-host "No Unlinked GPO's Found" -ForegroundColor Cyan
}
Else{
    $unlinkedGPOs | Select DisplayName,ID | ft
    $unlinkedGPOs | Select DisplayName,ID | export-csv -Path unlinked_gpos.csv -NoClobber -NoTypeInformation
    
}