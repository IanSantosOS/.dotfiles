# VS Code Config

Here I have my configs, keybindings and a list of extensions for VS Code.

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
> After configuring your custom scripts or styles, if you want to restore the
> original permissions do this:
>
> ```bash
> sudo chown -R root /opt/visual-studio-code/
> ```

---

> [!IMPORTANT]
> To use custom scripts and styles, you need to set the absolute path in the
> `settings.json` file. Add the following lines:
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

> When possible please support the creators of these extensions.

### UTILS

<details>
    <summary>General</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments" title="Better Comments Original">Better Comments</a> - Original</li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=EdwinHuiSH.better-comments-next" title="Better Comments Next - Forked Extension with Active Updates">Better Comments Next</a> - Fork</li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=dotenv.dotenv-vscode">Dotenv Official +Vault</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ArthurLobo.easy-codesnap">Easy CodeSnap</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens">Error Lens</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=TomRijndorp.find-it-faster">FindItFaster</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode">IntelliCode</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer">Live Server</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare">Live Share</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode">Prettier - Code formatter</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager">Project Manager</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=redhat.fabric8-analytics">Red Hat Dependency Analytics</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-repositories">Remote Repositories</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client">Thunder Client</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes">Toggle Quotes</a></li>
    </ul>
</details>

<details>
    <summary>Git</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=adam-bender.commit-message-editor">Commit Message Editor</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github">GitHub Pull Requests</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens">GitLens — Git supercharged</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=qezhu.gitlink">GitLink</a></li>
    </ul>
</details>

<details>
    <summary>Markdown</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles">Markdown Preview Github Styling</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one">Markdown All in One</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint">markdownlint</a></li>
    </ul>
</details>

<details>
    <summary>HTML</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=anteprimorac.html-end-tag-labels">HTML End Tag Labels</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview">Image preview</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=moalamri.inline-fold">Inline fold</a></li>
    </ul>
</details>

<details>
    <summary>CSS</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight">Color Highlight</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=aaronccasanova.format-grid-areas">Format Grid Areas</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview">Image preview</a></li>
    </ul>
</details>

<details>
    <summary>Tailwind</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=heybourn.headwind">Headwind</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=moalamri.inline-fold">Inline fold</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss">Tailwind CSS IntelliSense</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=austenc.tailwind-docs">Tailwind Docs</a></li>
    </ul>
</details>

<details>
    <summary>Javascript/Typescript</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint">ESLint</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost">Import Cost</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=sburg.vscode-javascript-booster">JavaScript Booster</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets">JavaScript (ES6) code snippets</a></li>
    </ul>
</details>

<details>
    <summary>React</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=burkeholland.simple-react-snippets">Simple React Snippets</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Sujeitoprogramador.sujeitoprogramador-react-native">Sujeito Programador React Native / React JS / Next JS</a></li>
    </ul>
</details>

<details>
    <summary>Vim / Neovim</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=vintharas.learn-vim">Learn Vim</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=AndenetAlexander.vim-cheatsheet">Vim Cheatsheet</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=vscodevim.vim">Vim</a> - or this, or the vscode neovim extension</li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim">VSCode Neovim</a> - or this, or the vim extension</li>
    </ul>
</details>

### STYLE

<details>
    <summary>Icons</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedicons">Bearded Icons</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc-icons">Catppuccin Icons for VSCode</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=tal7aouy.icons">Icons</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=chadalen.vscode-jetbrains-icon-theme">JetBrains Icon Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme">Material Icon Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=miguelsolorio.symbols">Symbols</a></li>
    </ul>
</details>

<details>
    <summary>Product Icons</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=antfu.icons-carbon">Carbon Product Icons</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=melishev.feather-vscode">Feather Product Icons</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons">Fluent Icons</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=PKief.material-product-icons">Material Product Icons</a></li>
    </ul>
</details>

<details>
    <summary>Theme</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=alexnho.a-touch-of-lilac-theme">A Touch of Lilac Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=spaceinvadev.alternight">AlterNight</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=wart.ariake-dark">Ariake Dark</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onedark">Atom One Dark Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onelight">Atom One Light Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=teabyii.ayu">Ayu</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedtheme">Bearded THeme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc">Catppuccin for VSCode</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=CoderCoder.codercoder-dark-theme">Coder Coder Dark</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=mcagampan.dark-horizon">Dark Horizon</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula">Dracula Theme Official</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ankitcode.firefly">FireFly Pro</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=hiukky.flate">Flate</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=sdras.inbedby7pm"">In Bed By 7pm</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=qufiwefefwoyn.kanagawa">Kanagawa</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=nexxai.material-synthwave-vscode">Material SynthWave</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=merko.merko-green-theme">Merko's Green Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=miguelsolorio.min-theme">Min Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=atomiks.moonlight">Moonlight</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Rotfuchs-von-Vulpes.night-fox">Night Fox - Rotfuchs Von Vulpes</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=keifererikson.nightfox">Nightfox - Keifer</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=sdras.night-owl">Night Owl</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=liviuschera.noctis">Noctis</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code">Nord</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=rocketseat.theme-omni">Omni Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme">One Dark Pro</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=azemoh.one-monokai">One Monokai Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=axiomaticstudios.one-monokai-80s">One Monokai 80s Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme">Palenight Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=tinkertrain.theme-panda">Panda Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=pmndrs.pmndrs">Poimandres</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=jaccon.punk-dark-theme">Punk Dark Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=LelinPadhan.retro-green-theme-vscode">Retro Green Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=barrsan.reui">ReUI</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=Tyriar.theme-sapphire">Sapphire Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=wicked-labs.wvsc-serendipity">Serendipity</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=ahmadawais.shades-of-purple">Shades of Purple</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=RobbOwen.synthwave-vscode">SynthWave '84</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night">Tokyo Night</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=antfu.theme-vitesse">Vitesse Theme</a></li>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=MateoCERQUETELLA.xcode-12-theme">Xcode Theme</a></li>
    </ul>
</details>

<details>
    <summary>Other</summary>
    <ul>
        <li><a href="https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css">Custom CSS and JS Loader</a></li>
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

- [Transform SVG into CSS Code](https://bloggerpilot.com/tools/svg-to-css/ "Transform SVG into CSS Code")
- [VSCode Themes](https://vscodethemes.com/ "A third party website to search for themes for VSCode")

### Inspiration

- [Glenn Raya | Transforming VS Code: Beyond Themes! — Make VS Code Unrecognizable!](https://www.youtube.com/watch?v=9_I0bySQoCs "Custom CSS and JS Loader Tutorial")
- [Igor Babko | My VS Code Setup](https://www.youtube.com/playlist?list=PLXDouhCU5r6q10ef9yXxzY4GwVpAQMvsZ "VS Code setup with extensions and settings")
- [Igor Babko | My VS Code Keybindings](https://www.youtube.com/playlist?list=PLXDouhCU5r6q0XQ-njGmDqA3LVA04Io5D "Guide to customizing VS Code keybindings")
- [freeCodeCamp.org | VS Code Tutorial – Become More Productive](https://www.youtube.com/watch?v=heXQnM99oAI "Guide to customizing VS Code keybindings")
