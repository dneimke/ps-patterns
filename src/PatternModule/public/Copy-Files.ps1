using module ..\private\Job.psm1
using module ..\private\Copy.psm1

# https://www.automatedops.com/blog/2018/04/11/software-design-patterns-in-powershell-strategy-pattern/

function Copy-Files {

    [CmdletBinding()]
    [OutputType([void])]
    param (
        [string] $Path,
        [string] $Output
    )

    Process {
        [Job]::New($Path, $Output).
            AddStage([Copy]::New()).
            Invoke().
            GetResult()
    }

}




