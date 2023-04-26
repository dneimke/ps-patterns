BeforeAll {
    Get-Module PatternModule | Remove-Module -Force # If the module is already in memory, remove it
    Import-Module PatternModule -Force

    $SourceFolderPath = "TestDrive:\testFolderA"
    $ProcessedFolderPath = "TestDrive:\testFolderB"
}

Describe "'Copy-Files' Function Functional Tests" {

    Context "Copy-Files tests" {

        BeforeEach{
            $SourceFilePath = "$SourceFolderPath\test.txt"
            New-Item -Path $SourceFilePath -ItemType File -Force
            New-Item -Path $ProcessedFolderPath -Force
        }

        AfterEach{
            Remove-Item -Path $SourceFilePath
            if(Test-Path "$SourceFolderPath\test.txt") {
                Remove-Item -Path "$SourceFolderPath\test.txt"
            }
        }

        It 'Given we Copy-NetworkFile with valid source and destination path, no exception should occur' {

            { Copy-Files -Source "$SourceFilePath" -Destination $ProcessedFolderPath } | Should -Be $true
        }
    }
}