# Windows 11 Auto-Connect Wireless Display

A simple VBScript that automatically connects your Windows 11/10 PC to a specific wireless display (Miracast) on startup, running silently in the background.

## 🚀 How It Works
Windows does not provide a direct command-line tool to connect to a specific Miracast display silently. This script solves the problem by automating the manual process:
1. Opens the "Cast" menu (`Win + K`).
2. Waits for the displays to load.
3. Uses keyboard navigation (`TAB`) to select your monitor.
4. Connects and closes the menu automatically.

## ⚙️ Installation & Usage

1. Download the `AutoConnect.vbs` file.
2. Press `Win + R` on your keyboard to open the Run dialog.
3. Type `shell:startup` and press **Enter**.
4. Move or copy the `AutoConnect.vbs` file into this Startup folder.
5. Restart your PC. The script will run automatically!

## 🔧 Customization
You can easily edit the script using Notepad to match your PC's speed and your display's position in the list:

* **Startup Delay:** Change `WScript.Sleep 10000` (10 seconds) if your PC needs more time to connect to Wi-Fi on boot.
* **Display Position:** If your screen is not the second option, add or remove `WshShell.SendKeys "{TAB}"` lines.
* **Menu Load Time:** Change `WScript.Sleep 2000` if the Cast menu takes longer to find your display.

## ⚠️ Requirements
* Windows 10 or Windows 11.
* The system language/keyboard must be in a state that accepts basic navigation (English default is recommended to avoid hotkey conflicts).
