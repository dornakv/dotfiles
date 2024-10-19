Taken from https://github.com/g0t4/dotfiles/blob/46986213f9f1d2b988dc14eb91ff9654a0b30977/pwsh/helpers/misc-helpers.ps1#L147-L152
Create a shortcut from the .ps1 file. Go to properties of the shortcut. Change "Target" to:
```
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\Users\vojtechd\dotfiles\extra\windows\fix-rdpClip\fix-rdpClip.ps1
```
Move shortcut to taskbar, then you can delete it.

