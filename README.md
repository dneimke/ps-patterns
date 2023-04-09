# ps-patterns

A playground for implementing patterns in PowerShell

## Consume module

```pwsh
# \clients\Test-CopyFiles.ps1
Import-Module "..\src\PatternModule" -Force

$Path = "\temp\in"
$Output = "\temp\out"

Copy-Files $Path $Output
```

![image](https://user-images.githubusercontent.com/720792/230800542-6c479d32-5afc-4d45-b195-b727173c59cf.png)

## Pester tests

Pester tests were mostly generated using [PSClassUtils](https://github.com/Stephanevg/PSClassUtils). PSClassUtils seems to generate 
versions of Pester tests that are not compatible beyond PowerShell v4.x so it required a fair bit of tidy up to get them running.

![image](https://user-images.githubusercontent.com/720792/230800606-dff90dd3-079b-4e6a-933e-265acf57fd9b.png)

