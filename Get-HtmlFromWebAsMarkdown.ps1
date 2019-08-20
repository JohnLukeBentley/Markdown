$BaseName = "CatchingLightning"
$Uri ="http://twf.org.au/research/$BaseName.html"

Invoke-WebRequest -Uri $Uri -OutFile .\output\$BaseName.html

Get-Content .\output\$BaseName.html | Out-File ('.\output\' + $BaseName + 'Utf8.html') -Encoding utf8

pandoc ('.\output\' + $BaseName + 'Utf8.html') --from html --to markdown --output ('.\output\' + $BaseName + 'Utf8.md')

"From $Uri .\output\$BaseName" + "Utf8.md done."

