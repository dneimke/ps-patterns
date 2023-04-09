# ps-patterns

A playground for implementing patterns in PowerShell


```pwsh
# \clients\Test-CopyFiles.ps1
Import-Module "..\src\PatternModule" -Force

$Path = "\temp\in"
$Output = "\temp\out"

Copy-Files $Path $Output
```

![image](https://user-images.githubusercontent.com/720792/230800542-6c479d32-5afc-4d45-b195-b727173c59cf.png)
