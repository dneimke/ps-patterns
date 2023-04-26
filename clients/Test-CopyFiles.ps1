Import-Module "..\src\PatternModule" -Force

$Source = "\temp\in"
$Destination = "\temp\out"

Copy-Files $Source $Destination
