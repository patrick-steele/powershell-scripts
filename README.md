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

Right now it only supports grabbing the VisualStudio.gitignore but could be
easily adapted so the particular gitignore filename could be passed in.

## Get-UTC
Sometimes you just want an easy way to dump the current time in UTC format.  It
displays both the simple ToString() version of UTC as well as the
ISO-8601 round-trip format.



