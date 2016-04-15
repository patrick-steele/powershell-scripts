function Get-Utc()
{
    $utc = [System.DateTime]::Now.ToUniversalTime()
    Write-Host($utc)
    Write-Host($utc.ToString("o"))
}
