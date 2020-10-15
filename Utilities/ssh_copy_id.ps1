$myPi = @("pi-hole","woody","greenlantern","pizerored","legion","octopi","rabble")
ForEach($myHost in $myPi)
{ 
    Get-Content $env:USERPROFILE\.ssh\id_rsa.pub | ssh pi@$myHost "cat >> .ssh/authorized_keys"
}