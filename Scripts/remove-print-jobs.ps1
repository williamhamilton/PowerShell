﻿#requires -version 4
<#
.SYNOPSIS
	remove-print-jobs.ps1
.DESCRIPTION
	removes all jobs from all printers
.EXAMPLE
	PS> .\remove-print-jobs.ps1 
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

try {
	$printers = Get-Printer
	foreach ($printer in $printers) {
		$printjobs = Get-PrintJob -PrinterObject $printer
		foreach ($printjob in $printjobs) {
			Remove-PrintJob -InputObject $printjob
	}

	"✔️ removed all jobs from all printers"
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
