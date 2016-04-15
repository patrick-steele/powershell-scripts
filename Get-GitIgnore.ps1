function Get-GitIgnore()
{
    param([switch] $force)
	
	$dir = (Get-Item -Path ".\" -Verbose).FullName
	$ignoreFile = "$dir\.gitignore"
	if((Test-Path $ignoreFile) -and ($force -eq $false))
	{
		Write-Host ".gitignore exists.  Use -force to overwrite"
		return
	}

	$ignore = ((Invoke-WebRequest -Uri https://github.com/github/gitignore/raw/master/VisualStudio.gitignore).Content)
	[System.IO.File]::WriteAllLines($ignoreFile, $ignore)
	Write-Host ".gitignore created!"
}
