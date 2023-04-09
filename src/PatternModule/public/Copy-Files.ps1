using module ..\private\Job.psm1
using module ..\private\LocalFileCopy.psm1

# https://www.automatedops.com/blog/2018/04/11/software-design-patterns-in-powershell-strategy-pattern/

function Copy-Files {

    [CmdletBinding()]
    [OutputType([void])]
    param (
        [Parameter(Position=0)]
        [string] $Path,
        [Parameter(Position=1)]
        [string] $Output
    )

    process {
        [Job]::New($Path, $Output).
            AddStage([LocalFileCopy]::New()).
            Invoke().
            GetResult()
    }

}




