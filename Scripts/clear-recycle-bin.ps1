<#
.SYNOPSIS
	clear-recycle-bin.ps1 
.DESCRIPTION
	Removes the content of the recycle bin folder.
	NOTE: can not be undo!
.EXAMPLE
	PS> .\clear-recycle-bin.ps1 
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

try {
	Clear-RecycleBin -Confirm:$false
	"✔️ cleared recycle bin"
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
