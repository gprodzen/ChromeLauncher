:: Title: Chrome Launcher
:: Author: Greg Prodzenko
:: Created: 18-DEC-2021
:: References:
:: + http://web.archive.org/web/20211218191930/https://blog.danskingdom.com/allow-others-to-run-your-powershell-scripts-from-a-batch-file-they-will-love-you-for-it/
:: + SysToolsLib https://github.com/JFLarvoire/SysToolsLib/releases/tag/1.20
:: Description: Launches three Chrome windows to different sites using the default Chrome profile. Moves and resizes the windows to fit a 3440x1440 monitor.

@ECHO OFF
SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptsDirectory%Window.ps1

start chrome.exe --new-window https://todoist.com/ --profile-directory=Default --window-size=1,1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' 'chrome.exe' -MoveTo '0','0' -Resize '1000','1400'";

start chrome.exe --new-window https://gmail.com/ --profile-directory=Default --window-size=1,1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' 'chrome.exe' -MoveTo '1000','0' -Resize '1440','1400'";

start chrome.exe --new-window https://feedly.com/ --profile-directory=Default --window-size=1,1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' 'chrome.exe' -MoveTo '2440','0' -Resize '1000','1400'";