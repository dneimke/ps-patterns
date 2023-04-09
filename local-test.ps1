if(-not (Get-Module -Name Pester -ListAvailable)) {
    Install-Module Pester -Scope CurrentUser -Force -SkipPublisherCheck
}

Import-Module Pester
Invoke-Pester -Path ./src -Output Detailed