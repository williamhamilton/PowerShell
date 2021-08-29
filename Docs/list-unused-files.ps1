# PowerShell Script /home/mf/PowerShell/Scripts/list-unused-files.ps1

## Synopsis
list-unused-files.ps1 <dir-tree> <days>

## Description
Lists files in the <directory tree> with last access time older than <days>

## Syntax
```powershell
/home/mf/PowerShell/Scripts/list-unused-files.ps1 [[-DirTree] <String>] [[-NumberOfDaysUnused] <Int32>] [<CommonParameters>]
```

## -DirTree &lt;String&gt; Parameter

```
-DirTree <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
```

## -NumberOfDaysUnused &lt;Int32&gt; Parameter

```
-NumberOfDaysUnused <Int32>
    
    Required?                    false
    Position?                    2
    Default value                99
    Accept pipeline input?       false
    Accept wildcard characters?  false
```
## <CommonParameters>
This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

## Example
```powershell
PS>.\list-unused-files.ps1 C:\ 90
```


## Notes
Author:  Markus Fleschutz
License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

*Created by convert-ps2md.ps1*