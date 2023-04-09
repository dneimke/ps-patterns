using module .\Stage.psm1
using module .\Job.psm1

class LocalFileCopy : Stage {

    LocalFileCopy () : base('LocalFileCopy') { }

    Invoke([Job]$J) {
        $J.LogHeader($this.GetHeader())
        $J.LogEntry("[in {0:N2}s] Copying from '$($J.Source)' to '$($J.Destination)'" -f $this.GetElapsed().TotalSeconds)
    }
}

Export-ModuleMember -Function "LocalFileCopy"