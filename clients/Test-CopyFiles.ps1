Import-Module "C:\repos\GitHub\ps-patterns\src\PatternModule" -Force

$Path = "\temp\in"
$Output = "\temp\out"

Copy-Files -Path $Path -Output $Output
