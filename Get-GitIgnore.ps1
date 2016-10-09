function Get-GitIgnore()
{
    param(
        [string] $type,
        [switch] $force
    )

    if(-not $type)
    {
        $type = "VisualStudio"
    }
	
	$dir = (Get-Item -Path ".\" -Verbose).FullName
	$ignoreFile = "$dir\.gitignore"
	if((Test-Path $ignoreFile) -and ($force -eq $false))
	{
		Write-Host ".gitignore exists.  Use -force to overwrite"
		return
	}

    try
    {
        $uri = "https://github.com/github/gitignore/raw/master/$type.gitignore"
	    $ignore = ((Invoke-WebRequest -Uri $uri).Content)
    }
    catch 
    {
        Write-Host -ForegroundColor Red "Getting gitignore from $uri failed. Check the type ($type) and try again (ignore types are *case-sensitive*!)"
        exit
    }

	[System.IO.File]::WriteAllLines($ignoreFile, $ignore)
	Write-Host ".gitignore (type: $type) created!"
}
