Get-Content $env:USERPROFILE\.ssh\id_rsa.pub | ssh pi@pi-hole "cat >> .ssh/authorized_keys"