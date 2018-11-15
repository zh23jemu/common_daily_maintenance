# Run on local server
$folders = (Get-ChildItem E:\GroupsASI\*,E:\GroupsASI\*\*,E:\GroupsASI\*\*\* -Directory).FullName
foreach ($item in $folders)
{
    Get-Acl $item | select PSPath,AccessToString, Owner |Export-Csv d:\groupasi.csv -NoTypeInformation -Append
}
