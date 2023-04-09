Import-Module "..\src\PatternModule" -Force

$Path = "\temp\in"
$Output = "\temp\out"

Copy-Files $Path $Output
