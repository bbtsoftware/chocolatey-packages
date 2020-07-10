import-module au

$releases = 'https://updatecheck.paessler.com/desk-stable.json'

function global:au_SearchReplace {
    @{
        'tools\chocolateyinstall.ps1' = @{
            "(\s*url\s*=\s*)`"([^*]+)`""          = "`$1`"$($Latest.Url32)`""
            "(\s*checksum\s*=\s*)`"([^*]+)`""     = "`$1`"$($Latest.Checksum32)`""
            "(\s*checksumType\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.ChecksumType32)`""
            "(\s*url64\s*=\s*)`"([^*]+)`""          = "`$1`"$($Latest.Url64)`""
            "(\s*checksum64\s*=\s*)`"([^*]+)`""     = "`$1`"$($Latest.Checksum64)`""
            "(\s*checksumType64\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.ChecksumType64)`""
        }
    }
}
function global:au_GetLatest {
    $paessler_updatecheck = Invoke-WebRequest -Uri $releases -ContentType "application/json" -Method Get -UseBasicParsing

    $jsondata = $paessler_updatecheck.Content | Out-String | ConvertFrom-Json
    
    $bit32 = $jsondata.windows."32bit"
    $bit64 = $jsondata.windows."64bit"

    @{
        Version = $jsondata.version
        
        Url32 = $bit32.base.download
        Checksum32 = $bit32.base.checksum.sum
        ChecksumType32 = $bit32.base.checksum.type

        Url64 = $bit64.base.download
        Checksum64 = $bit64.base.checksum.sum
        ChecksumType64 = $bit64.base.checksum.type
    }
}

update -ChecksumFor none
