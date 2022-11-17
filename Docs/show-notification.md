## The PowerShell Script: show-notification.ps1

This PowerShell script shows a toast-message notification for the Windows 10 Notification Center.

## Parameters
```powershell
show-notification.ps1 [[-Text] <String>] [[-Title] <String>] [[-Duration] <Int32>] [<CommonParameters>]

-Text <String>
    
    Required?                    false
    Position?                    1
    Default value                Hello World
    Accept pipeline input?       false
    Accept wildcard characters?  false

-Title <String>
    
    Required?                    false
    Position?                    2
    Default value                NOTE
    Accept pipeline input?       false
    Accept wildcard characters?  false

-Duration <Int32>
    
    Required?                    false
    Position?                    3
    Default value                5000
    Accept pipeline input?       false
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

## Example
```powershell
PS> ./show-notification "Hello World"

```

## Notes
Author: Markus Fleschutz | License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

## Source Code
```powershell
<#
.SYNOPSIS
        Shows a notification
.DESCRIPTION
        This PowerShell script shows a toast-message notification for the Windows 10 Notification Center.
.EXAMPLE
        PS> ./show-notification "Hello World"
.LINK
        https://github.com/fleschutz/PowerShell
.NOTES
        Author: Markus Fleschutz | License: CC0
#>

param([string]$Text = "Hello World", [string]$Title = "NOTE", [int]$Duration = 5000)

try {
	Add-Type -AssemblyName System.Windows.Forms 
	$global:balloon = New-Object System.Windows.Forms.NotifyIcon
	$path = (Get-Process -id $pid).Path
	$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
	$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
	$balloon.BalloonTipText = $Text
	$balloon.BalloonTipTitle = $Title 
	$balloon.Visible = $true 
	$balloon.ShowBalloonTip($Duration)
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*Generated by convert-ps2md.ps1 using the comment-based help of show-notification.ps1*