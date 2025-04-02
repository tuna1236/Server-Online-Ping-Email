#Mesh Centeral
$MeshCenteralOnline = Test-NetConnection -Port 80 -ComputerName "RDP" 
if($MeshCenteralOnline.TcpTestSucceeded -eq $False){$MeshCentralStatus = "Offline"}else{$MeshCentralStatus = "Online"}

#File01
$File01Online = Test-NetConnection -ComputerName "Hyper-V" 
if($File01Online.PingSucceeded -eq $False){$File01Status = "Offline"}else{$File01Status = "Online"}

#Domain Controler 1
$DC1Online = Test-NetConnection -ComputerName "DC1" 
if($DC1Online.PingSucceeded -eq $False){$DC1Status = "Offline"}else{$DC1Status = "Online"}

#Print
$PrintOnline = Test-NetConnection -ComputerName "Print" 
if($DC1Online.PingSucceeded -eq $False){$DC1Status = "Offline"}else{$DC1Status = "Online"}

#PIHole
$PIHoleOnline = Test-NetConnection -Port 80 -ComputerName "142.202.190.228" 
if($PIHoleOnline.TcpTestSucceeded -eq $False){$PIHoleStatus = "Offline"}else{$PIHoleStatus = "Online"}