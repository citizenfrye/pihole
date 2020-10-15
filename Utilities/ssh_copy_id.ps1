$myPi = @("pi-hole","woody","greenlantern","pizerored","legion","octopi","rabble")
#$myPi = @("woody")
$myKey = Get-Content $env:USERPROFILE\.ssh\id_rsa.pub
Write-Output($myPi.Count)
Write-Output($myPi)
Write-Output($myKey)
ForEach($myHost in $myPi)
{ 
#ssh pi@$myHost "grep '$myKey' .ssh/authorized_keys"
ssh pi@$myPi "cat $myKey >> .ssh/authorized_keys"
}