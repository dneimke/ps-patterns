class Stage {

    [string] $Name
    hidden [DateTime] $StartTime = [DateTime]::Now

    Stage($Name) {
        $this.Name = $Name
    }

    [TimeSpan] GetElapsed() {
        return [DateTime]::Now - $this.StartTime
    }

    [string] GetHeader() {
        return "~ [{0}] ~" -f $this.Name
    }
}

Export-ModuleMember -Function "Stage"