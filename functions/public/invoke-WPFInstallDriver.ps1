function Invoke-WPFInstallDiscoveryAgent {
    $DHT = "c:\.DHT"
    if (!(Test-Path -Path $DHT)) {
        Write-Host "Creating DHT Folder..."
        $DHTFolder = New-Item -Path $DHT -ItemType Directory
        $DHTFolder.attributes='Hidden'
        Write-Host "Folder created..."
    }

    # HP P77940
    Write-Host "Downloading P77940 Driver..."
    $url = "https://ftp.hp.com/pub/softlib/software13/printers/P77440-P77940-60/Full_Webpack-47.4.4210-PWP77440-77940-60_Full_Webpack.exe"
    $out = "$DHT\P77940.exe"
    invoke-WebRequest -Uri $url -OutFile $out
    Write-Host "P77940 driver downloaded!"
    Write-Host "Installing P77940 driver..."
    Start-Process $out -Wait
    Write-Host "P77940 driver installed!"

    # HP P57750dw
    Write-Host "Downloading P57750dw Driver..."
    $url = "https://ftp.hp.com/pub/softlib/software13/printers/PW5775/Full_Webpack-39.7.2014_1-PW5775_Full_Webpack.exe"
    $out = "$DHT\P57750dw.exe"
    invoke-WebRequest -Uri $url -OutFile $out
    Write-Host "P57750dw driver downloaded!"
    Write-Host "Installing P57750dw driver..."
    Start-Process $out -Wait
    Write-Host "P57750dw driver installed!"

    # HP E58650z
    Write-Host "Downloading E58650z Driver..."
    $url = "https://ftp.hp.com/pub/softlib/software13/COL63308/pw-152341-5/HP_Man_Color_Flow_MFP_E58650z_PCL-6_Win8plus_Full_Solution_19236.exe"
    $out = "$DHT\E58650z.exe"
    invoke-WebRequest -Uri $url -OutFile $out
    Write-Host "E58650z driver downloaded!"
    Write-Host "Installing E58650z driver..."
    Start-Process $out -Wait
    Write-Host "E58650z driver installed!"
}
