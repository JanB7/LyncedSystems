while ($true) {
    if ((Get-Service | Where-Object {$_.Status -eq "Running" -and $_.Name -eq "KEPServerEXV6"}).Count -eq 1) {
        Restart-Service -Name "KEPServerEXV6"
        Start-Sleep -second (2*60*59) #Restart every 2 hours
    }
    else {
        Start-Service -Name "KEPServerEXV6"
    }
}
