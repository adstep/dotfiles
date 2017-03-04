# Install Font

Install MesloLGS-Regular.ttf

# Regedit

```
HKLM\Software\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont
```

Add a ```REG_SZ``` entry with the following contents:

Name = “00”
Value = “Meslo LG S”

the double quotes should not to be entered — they are just for clarification

NOTE: if there is already an entry for “00” you don’t need to change it. Simply
use “000” instead. You can also add multiple Meslo LG variants that way, e.g.
“000” => Meslo LG M
“0000” => Meslo LG S

# Bash Properties

Size = 20