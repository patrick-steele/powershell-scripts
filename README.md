# powershell-scripts
A collection of powershell scripts I've been writing.

I have most of these inside a module that is loaded each time
I open up a Powershell prompt.

## Get-GitIgnore.ps1
I was tired of manually grabbing the latest [Visual Studio .gitignore](https://github.com/github/gitignore/blob/master/VisualStudio.gitignore)
file from the [gitignore github repository](https://github.com/github/gitignore) so I wrote a script that will
grab it for me.  If you run it in a directory that already contains a 
.gitignore it will abort and tell you to use the `-force` flag to
overwrite the existing file.

Since 99% of my projects are Visual Studio projects, the script defaults to a "VisualStudio" ignore
file if you don't provide a type via the `-type` parameter.  If you want a different ignore type, pass
it via the `-type` parameter:

`Get-GitIgnore -type Node`

Please note that the ignore type is case-sensitive!  Running `Get-GitIgnore -type node` will fail.

## Get-UTC
Sometimes you just want an easy way to dump the current time in UTC format.  It
displays both the simple ToString() version of UTC as well as the
ISO-8601 round-trip format.



