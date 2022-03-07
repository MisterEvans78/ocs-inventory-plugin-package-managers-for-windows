$xml = ""

# Chocolatey
if (Get-Command "choco" -ErrorAction SilentlyContinue) {
    $chocoversion = choco -v

    $xml += "<WINPKGMAN>"
    $xml += "<PKGMAN_NAME>Chocolatey</PKGMAN_NAME>"
    $xml += "<PKGMAN_VERSION>$chocoversion</PKGMAN_VERSION>"
    $xml += "</WINPKGMAN>"
}

# Microsoft App Installer
$appinstaller = Get-AppxPackage -AllUsers -Name "Microsoft.DesktopAppInstaller" | Select-Object Name, Version -First 1

if ($appinstaller) {

    $xml += "<WINPKGMAN>"
    $xml += "<PKGMAN_NAME>App Installer (Microsoft)</PKGMAN_NAME>"
    $xml += "<PKGMAN_VERSION>$($appinstaller.Version)</PKGMAN_VERSION>"
    $xml += "</WINPKGMAN>"

}

# Winget source
$winget = Get-AppxPackage -AllUsers -Name "Microsoft.Winget.Source" | Select-Object Name, Version -First 1

if ($winget) {
    
    $xml += "<WINPKGMAN>"
    $xml += "<PKGMAN_NAME>Windows Package Manager Source (winget)</PKGMAN_NAME>"
    $xml += "<PKGMAN_VERSION>$($winget.Version)</PKGMAN_VERSION>"
    $xml += "</WINPKGMAN>"
}

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::WriteLine($xml)
