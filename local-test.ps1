# https://pester.dev/docs/introduction/installation

Get-Module "Job" | Remove-Module -Force # If the module is already in memory, remove it

if(-not (Get-Module -Name Pester -ListAvailable)) {
    Install-Module Pester -Scope CurrentUser -Force -SkipPublisherCheck
}

Import-Module Pester
Import-Module PatternModule

Invoke-Pester -Path ./src -Output Detailed