$modulesFolder = ($env:PSModulePath -split ';')[0]
$moduleName = "PatternModule"
$moduleSourcePath = ".\src\$moduleName"

Write-Host "Publishing $moduleSourcePath to $modulesFolder"

if(Test-Path "$modulesFolder\$moduleName") {
    Write-Host "Removing $modulesFolder\$moduleName"
    Remove-Item "$modulesFolder\$moduleName" -Recurse -Force
}

Copy-Item $moduleSourcePath -Destination "$modulesFolder\$moduleName" -Recurse -Exclude "*.Tests.ps1"