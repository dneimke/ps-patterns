using module .\Job.psm1
# tests generated using https://github.com/Stephanevg/PSClassUtils

InModuleScope -ModuleName Job -ScriptBlock {

    Describe '[Job]-[Constructors]'{
        It '[Job]-[Constructor](Source,Destination) Should -Not -Throw' {
            {[Job]::New("S", "D")} | Should -Not -Throw
        }
    }

    Describe '[Job]-[Methods]'{

        It '[Job] --> GetElapsed() : [TimeSpan] - Should -Not -Throw' {
            $Instance = [Job]::New("S", "D")
            {$Instance.GetElapsed()} | Should -Not -Throw
        }

        It '[Job] --> GetElapsed() : [TimeSpan] - should return type [TimeSpan]' {
            $Instance = [Job]::New("S", "D")
            ($Instance.GetElapsed()).GetType().Name | Should -Be TimeSpan
        }

        It '[Job] --> LogHeader($S) : [void] - Should -Not -Throw' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            {$Instance.LogHeader($S)} | Should -Not -Throw
        }

        It '[Job] --> LogHeader($S) Should -Not return anything (voided)' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            $Instance.LogHeader($S)| Should -Be $null
        }

        It '[Job] --> LogEntry($S) : [void] - Should -Not -Throw' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            {$Instance.LogEntry($S)} | Should -Not -Throw
        }

        It '[Job] --> LogEntry($S) Should -Not return anything (voided)' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            $Instance.LogEntry($S)| Should -Be $null
        }

        It '[Job] --> LogError($S) : [void] - Should -Not -Throw' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            {$Instance.LogError($S)} | Should -Not -Throw
        }

        It '[Job] --> LogError($S) Should -Not return anything (voided)' {
            [string]$S = ''
            $Instance = [Job]::New("S", "D")
            $Instance.LogError($S)| Should -Be $null
        }
    }

}


