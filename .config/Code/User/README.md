# VS Code Config

Here I have my configs, keybindings and a list of extensions for VS Code.

---

> [!NOTE]
> If you are using Linux, you may need to change the permissions of the VS Code installation directory.
> Use the following command to temporarily grant write permissions:
>
> ```bash
> sudo chmod -R 777 /opt/visual-studio-code
> ```
>
> After configuring your custom scripts or styles, restore the original permissions with:
>
> ```bash
> sudo chmod -R 755 /opt/visual-studio-code
> ```

---

> [!IMPORTANT]
> To use custom scripts and styles, you need to set the absolute path in the `settings.json` file.
> Add the following lines:
>
> ```jsonc
> "vscode_custom_css.imports": [
>   "file:///Absolute/Path/To/Your/CSS",
>   // Example: "file:///home/your_user/.config/Code/User/custom/style.css"
>   "file:///Absolute/Path/To/Your/JS"
>   // Example: "file:///home/your_user/.config/Code/User/custom/script.js"
> ]
> ```
>
> Ensure the path matches the exact location of the files on your system.

## TODO List

If the custom styles and script files grow too large, consider splitting them into
separate, smaller files. This approach promotes better organization, improves code
readability, and simplifies maintenance.

- [ ] Snippets
- [ ] A link for every extension on this list
- [ ] A keyboard driven VS Code (more keybindings)

## Extensions

Extensions I use regularly.

<details>
    <summary>ESSENTIALS</summary>
    <ul>
        <li>Dotenv Official +Vault</li>
        <li>Error Lens</li>
        <li>FindItFaster</li>
        <li>Headwind</li>
        <li>Import Cost</li>
        <li>Inline fold</li>
        <li>IntelliCode</li>
        <li>Live Server</li>
        <li>Live Share</li>
        <li>Markdown All in One</li>
        <li>markdownlint</li>
        <li>Remote Repositories</li>
        <li>Sujeito Programador React Native / React JS / Next JS</li>
        <li>Tailwind CSS IntelliSense</li>
        <li>Thunder Client</li>
        <li>Toggle Quotes</li>
        <li>Vim</li>
        <li>Vim Cheatsheet</li>
        <li>Learn Vim</li>
    </ul>
</details>

<details>
    <summary>CANDY</summary>
    <ul>
        <li>Catppuccin Pack</li>
        <li>Color Highlight</li>
        <li>Custom CSS and JS Loader</li>
        <li>Easy CodeSnap</li>
        <li>Image preview</li>
        <li>Material Icon Theme</li>
        <li>Min Theme</li>
        <li>Omni Theme</li>
        <li>Symbols</li>
    </ul>
</details>

## Files

### Directory Structure

```plaintext
./
├── custom/
│   ├── imgs/
│   ├── script.js
│   └── styles.css
├── keybindings.json
└── settings.json
```

### Explanation of Files

- **`custom/`**: Directory containing custom files for behavior and style customization in VS Code.
  - **`imgs/`**: Background images to substitute the VS Code background Icon.
  - **`script.js`**: Custom JavaScript for additional functionality.
  - **`styles.css`**: Custom CSS for styling.
- **`keybindings.json`**: Contains personalized keybinding shortcuts for VS Code.
- **`settings.json`**: Includes all configuration settings for my VS Code environment.

## References

### Tools

- [Transform SVG into CSS Code](https://bloggerpilot.com/tools/svg-to-css/)

### Inspiration

- [Glenn Raya - Customizing your VSCode](https://www.youtube.com/watch?v=9_I0bySQoCs)
