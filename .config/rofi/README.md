# Rofi Menu

To create a copy of the current config (including the non-used ones), you can run:

```sh
rofi -dump-config > ~/.config/rofi/dump-config.rasi
```

To create a copy of the current theme, you can run:

```sh
rofi -dump-theme > ~/.config/rofi/dump-theme.rasi
```

## Shortcuts

### Rofimoji

| name           | shortcut | description                                                                                                                                    |
|----------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `type`         | `alt+t`  | Directly type the characters into the last active window. This is the *default*                                                                |
| `copy`         | `alt+c`  | Copy them to the clipboard.                                                                                                                    |
| `clipboard`    | `alt+p`  | Insert the selected characters through pasting from the clipboard, instead of directly typing them. See [Insertion Method](#insertion-method). |
| `unicode`      | `alt+u`  | Type the unicode codepoints of the selected characters.                                                                                        |
| `copy-unicode` | `alt+i`  | Copy the codepoints to clipboard.                                                                                                              |
| `print`        |          | Print the chosen characters to `stdout`.                                                                                                       |

