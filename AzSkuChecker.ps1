param($location, $sku)

$SubId = (Get-AzContext).Subscription.Id

$VMSKUs = Get-AzComputeResourceSku | where {$_.Locations.Contains($location) -and $_.ResourceType.Contains("virtualMachines") -and $_.Name.Contains($sku)}

$out = @{}

foreach ($vmSKU in $VMSKUs)
{
    $outVal = if (($vmSKU.Restrictions.Type | Out-String).Contains("Location")) { "N/A" } else { $vmSKU.LocationInfo.Zones }
    $out.add($vmSKU.Name, $outVal)
}

Write-Output $out