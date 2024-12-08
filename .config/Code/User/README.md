# VS Code Config

Here I have my configs, keybindings and a list of extensions for VS Code.

> [!NOTE]
> If the custom styles and script files grow too large, consider splitting them into
> separate, smaller files. This approach promotes better organization, improves code
> readability, and simplifies maintenance.

## Setup Requirements

> [!WARNING]
> If you're using Linux and would like to apply my configuration for the **Custom
> CSS and JS Loader** extension in VS Code, you may need to temporarily modify the
> permissions of the VS Code installation directory. Use the following command
> to grant write permissions:
>
> ```bash
> sudo chown -R $(whoami) /opt/visual-studio-code/
> ```
>
> After configuring your custom scripts or styles, restore the original permissions with:
>
> ```bash
> sudo chown -R root /opt/visual-studio-code/
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

## Extensions

Extensions I use regularly.

<details>
    <summary>ESSENTIALS</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=dotenv.dotenv-vscode">Dotenv Official +Vault</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens">Error Lens</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=TomRijndorp.find-it-faster">FindItFaster</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=heybourn.headwind">Headwind</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost">Import Cost</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=moalamri.inline-fold">Inline fold</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode">IntelliCode</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer">Live Server</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare">Live Share</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one">Markdown All in One</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint">markdownlint</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-repositories">Remote Repositories</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Sujeitoprogramador.sujeitoprogramador-react-native">Sujeito Programador React Native / React JS / Next JS</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss">Tailwind CSS IntelliSense</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client">Thunder Client</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes">Toggle Quotes</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=vscodevim.vim">Vim</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=AndenetAlexander.vim-cheatsheet">Vim Cheatsheet</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=vintharas.learn-vim">Learn Vim</a></li>
    </ul>
</details>

<details>
    <summary>CANDY</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc-pack">Catppuccin Pack</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight">Color Highlight</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css">Custom CSS and JS Loader</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ArthurLobo.easy-codesnap">Easy CodeSnap</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview">Image preview</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme">Material Icon Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=miguelsolorio.min-theme">Min Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=rocketseat.theme-omni">Omni Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=miguelsolorio.symbols">Symbols</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=BrandonKirbyson.vscode-animations">VSCode Animations</a></li>
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
- [Igor Babko | My VS Code Setup](https://www.youtube.com/playlist?list=PLXDouhCU5r6q10ef9yXxzY4GwVpAQMvsZ)
- [Igor Babko | My VS Code Keybindings](https://www.youtube.com/playlist?list=PLXDouhCU5r6q0XQ-njGmDqA3LVA04Io5D)
