using module ..\private\Job.psm1
using module ..\private\LocalFileCopy.psm1

function Copy-Files {

    [CmdletBinding()]
    [OutputType([void])]
    param (
        [Parameter(Position=0)]
        [string] $Source,
        [Parameter(Position=1)]
        [string] $Destination
    )

    process {
        [Job]::New($Source, $Destination).
            AddStage([LocalFileCopy]::New()).
            Invoke().
            GetResult()
    }

}




