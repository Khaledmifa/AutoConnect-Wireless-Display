' AutoConnect Wireless Display Script
' Author: [https://github.com/Khaledmifa]

Set WshShell = WScript.CreateObject("WScript.Shell")

' 1. Initial delay to allow Windows to load network services on boot (10 seconds)
WScript.Sleep 10000

' 2. Open the Cast/Connect menu (Win+K)
WshShell.Run "explorer ms-settings-connectabledevices:devicediscovery"

' 3. Wait for the menu to load and scan for displays (2 seconds)
WScript.Sleep 2000

' 4. Navigate to the desired display using TAB twice
WshShell.SendKeys "{TAB}"
WScript.Sleep 200
WshShell.SendKeys "{TAB}"

' Short delay before selecting
WScript.Sleep 100

' 5. Press Enter to initiate connection
WshShell.SendKeys "{ENTER}"

' 6. Wait for the connection process to start (3 seconds)
WScript.Sleep 3000

' 7. Close the Cast menu with ESC
WshShell.SendKeys "{ESC}"
