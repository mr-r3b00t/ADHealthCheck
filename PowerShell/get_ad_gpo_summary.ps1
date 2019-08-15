#get GPO info

Get-GPO -All | Export-csv -Path GroupPolicy_Summary.csv -NoClobber -NoTypeInformation

$gpos = Get-GPO -All -Verbose

foreach($gpo in $gpos){


write-host $gpo.DisplayName
write-host $gpo.Path
write-host $gpo.id
write-host $gpo.GpoStatus


$working = Get-Location
$path = $working.ToString() + "\" + $gpo.id.ToString() + ".xml"
$pathhtml = $working.ToString() + "\" + $gpo.id.ToString() + ".htm"
write-host $path
Get-GPOReport -Guid $gpo.Id -ReportType xml -Path $path

Get-GPOReport -Guid $gpo.Id -ReportType html -Path $pathhtml
}