## The PowerShell Script: toggle-caps-lock.ps1

This PowerShell script toggles the Caps Lock key state.

## Parameters
```powershell
toggle-caps-lock.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

## Example
```powershell
PS> ./toggle-caps-lock

```

## Notes
Author: Markus Fleschutz | License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

## Source Code
```powershell
<#
.SYNOPSIS
	Toggle Caps Lock
.DESCRIPTION
	This PowerShell script toggles the Caps Lock key state.
.EXAMPLE
	PS> ./toggle-caps-lock
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$wsh = New-Object -ComObject WScript.Shell
	$wsh.SendKeys('{CAPSLOCK}')
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*Generated by convert-ps2md.ps1 using the comment-based help of toggle-caps-lock.ps1*