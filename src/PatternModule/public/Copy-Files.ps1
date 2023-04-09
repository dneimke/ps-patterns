using module ..\private\Job.psm1
using module ..\private\Copy.psm1

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




