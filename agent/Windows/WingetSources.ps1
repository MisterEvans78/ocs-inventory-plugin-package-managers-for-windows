$sources = winget source list | Select-Object -Skip 2

$xml = ""

foreach ($source in $sources) {
    # $s = $source.Split() | where {$_}
    $s = $source -split "\s+"
    $xml += "<WINGETSOURCES>"
    $xml += "<SOURCE_NAME>" + $s[0] + "</SOURCENAME>"
    $xml += "<SOURCE_URL>" + $s[1] + "</SOURCE_URL>"
    $xml += "</WINGETSOURCES>"
}

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::WriteLine($xml)
