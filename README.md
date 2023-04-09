# ps-patterns

A playground for implementing patterns in PowerShell

## Strategy pattern

A flexible, testable pattern for implementing workflow and step-based logic.  Found and adapted from
[www.automatedops.com/blog](https://www.automatedops.com/blog/2018/04/11/software-design-patterns-in-powershell-strategy-pattern/).

Using an approach such as this, new steps can be developed and tested easily.

It allows for the logic flow to be clearly defined and encapsultated within the `Job` class.

```pwsh
[Job]::New($Path, $Output).
    AddStage([LocalFileCopy]::New()).
    Invoke().
    GetResult()
```

A pattern such as this would allow flexibility. For example, different jobs might each have their
own custom logging requirements. Using this pattern it would be easy to allow custom configuration for such
cross-cutting concerns:

```pwsh
[Job]::New($Path, $Output).
    AddLogger([FileLogger]::New($FolderPath))
    AddLogger([AzureLogger]::New($InstrumentationKey))
    AddStage([LocalFileCopy]::New()).
    Invoke().
    GetResult()
```


## Consuming the module

The repo contains a simple example of consuming the module locally as shown in the following code snippet.

```pwsh
# \clients\Test-CopyFiles.ps1
Import-Module "..\src\PatternModule" -Force

$Path = "\temp\in"
$Output = "\temp\out"

Copy-Files $Path $Output
```

![image](https://user-images.githubusercontent.com/720792/230800542-6c479d32-5afc-4d45-b195-b727173c59cf.png)

Modules are a great way to package and distribute code. As an example, you could develop and package common
code in a module and deploy to servers. These modules could then be consumed via runbooks or other tools to
provide a standard way to run tested PowerShell scripts.

## Pester tests

Pester tests were mostly generated using [PSClassUtils](https://github.com/Stephanevg/PSClassUtils). PSClassUtils seems to generate
versions of Pester tests that are not compatible beyond PowerShell v4.x so it required a fair bit of tidy up to get them running.

![image](https://user-images.githubusercontent.com/720792/230800606-dff90dd3-079b-4e6a-933e-265acf57fd9b.png)

