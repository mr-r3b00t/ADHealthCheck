#check AD recycle BIN (in the output there should be enabled scopes data)
Get-ADOptionalFeature -Filter 'name -like "Recycle Bin Feature"'