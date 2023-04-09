using module .\Stage.psm1
using module .\Job.psm1

class Copy : Stage {

    Copy () : base('Copy') { }

    Invoke([Job]$J) {

        $J.LogHeader($this.GetHeader())

        # Implement copy functionality

        $J.LogEntry("[in {0:N2}s]" -f $this.GetElapsed().TotalSeconds)
    }
}

Export-ModuleMember -Function "Copy"