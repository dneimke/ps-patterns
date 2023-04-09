using module ..\private\Job.psm1
using module ..\private\LocalFileCopy.psm1

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




