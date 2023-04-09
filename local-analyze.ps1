if(-not (Get-Module -Name PSScriptAnalyzer -ListAvailable)) {
    Install-Module PSScriptAnalyzer -Scope CurrentUser -Force -SkipPublisherCheck
}

Import-Module PSScriptAnalyzer

$scriptsPath = ".\src\PatternModule"
$analyzerSettingsPath = ".\script-analyzer-settings.psd1"
Invoke-ScriptAnalyzer -Path $scriptsPath -Settings $analyzerSettingsPath -Recurse -Severity Warning