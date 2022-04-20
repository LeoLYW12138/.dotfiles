Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

function py36 {py -3.6 $args}
function genpath {cd D:\coding\python\path-generator\; .\path\Scripts\activate;}
function cp2path {cp $args D:\coding\c\2021-WD-TR\F4-RTOS\src\wheelbase\paths}
function cp4path {cp D:\coding\c\2021-WD-TR\F4-RTOS\src\wheelbase\paths\$args .\ }
function forwardwsl {
    $ip = $(wsl hostname -I).Trim();
    netsh interface portproxy add v4tov4 listenport=3000 listenaddress=0.0.0.0 connectport=3000 connectaddress=$ip;
    Write-Host (Get-NetIPAddress -InterfaceAlias Wi-Fi).IPv4Address;
}
function uforwardwsl {netsh interface portproxy delete v4tov4 listenport=3000 listenaddress=0.0.0.0}
function forwardshow {netsh interface portproxy show all}
