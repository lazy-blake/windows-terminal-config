# ⚡ Windows Terminal + WezTerm Config

![PowerShell](https://img.shields.io/badge/PowerShell-7%2B-blue?logo=powershell&logoColor=white)
![WezTerm](https://img.shields.io/badge/WezTerm-Custom%20Config-orange?logo=windows-terminal&logoColor=white)
![Winfetch](https://img.shields.io/badge/Winfetch-Aesthetic%20Info%20Display-cyan?logo=arch-linux&logoColor=white)
![Oh My Posh](https://img.shields.io/badge/Oh%20My%20Posh-Minimal%20Prompt-purple?logo=terminal&logoColor=white)
![Zoxide](https://img.shields.io/badge/Zoxide-Fast%20Navigation-yellow?logo=zsh&logoColor=black)
![Terminal Icons](https://img.shields.io/badge/Icons-Enabled-teal?logo=material-design&logoColor=white)
![FiraCode](https://img.shields.io/badge/Font-FiraCode%20Nerd%20Font-9cf?logo=font&logoColor=black)
![OS](https://img.shields.io/badge/OS-Windows%2011-lightgrey?logo=windows&logoColor=blue)


A sleek and modern Windows Terminal configuration that transforms your CLI into a beautiful and productive environment. Powered by:

- 🪟 Windows Terminal
- 🧩 Oh My Posh (theme: `easy-term.omp.json`)
- 🧙 PowerShell 7+
- 🧭 Zoxide for fast directory jumping
- 💄 Terminal Icons
- 💎 WezTerm (optional, GPU-accelerated terminal)
- 🌈 Winfetch for system stats and ASCII art at launch

---

## 📁 Repo Structure

```

windows-terminal-config/
│
├── Microsoft.PowerShell\_profile.ps1   # PowerShell startup config
├── .wezterm.lua                        # WezTerm custom config
├── easy-term.omp.json                 # Oh My Posh custom theme (optional)
├── winfetch.ps1                        # Winfetch startup script
└── README.md

````

---

## ⚙️ Features

- ✅ Minimal & clean interface
- 🎨 Oh My Posh prompt with a futuristic look
- ⚡ Fast directory navigation with Zoxide
- 🎨 Custom color scheme for WezTerm
- 🖼️ Winfetch with custom ASCII + image
- 🌈 Nerd Font support (e.g., FiraCode Nerd Font)
- 🔒 Error-safe PowerShell profile
- 🧊 Transparent and themed WezTerm UI

### 1. Clone This Repository

```bash
git clone https://github.com/lazy-blake/windows-terminal-config.git
cd windows-terminal-config
```

---

## 🚀 Setup Instructions

### 1. Prerequisites

- PowerShell 7+
- Windows Terminal
- [Oh My Posh](https://ohmyposh.dev/docs/installation)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [WezTerm (optional)](https://wezfurlong.org/wezterm/install/)
- [Winfetch](https://github.com/kiedtl/winfetch)

### 2. Install Nerd Font

> Recommended: [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

Install and set it as your terminal font.

---

### 3. Set Up PowerShell Profile

Copy `Microsoft.PowerShell_profile.ps1` to:

```powershell
$PROFILE
````

You can open it with:

```powershell
notepad $PROFILE
```

---

### 4. Oh My Posh

Install and configure Oh My Posh:

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Then link or place `easy-term.omp.json` in your `$env:POSH_THEMES_PATH`.

---

### 5. WezTerm (Optional)

Copy `.wezterm.lua` to:

```powershell
C:\Users\<yourname>\.wezterm.lua
```

### 6. Winfetch

- Download Winfetch 

- Ensure it's added to your system PATH

📁 2. Place the Script in a Config Directory

Move the script to this path (recommended):

C:\Users\<your-username>\.config\winfetch\winfetch.ps1

    💡 Create the folders manually if they don’t exist.

⚙️ 3. Auto-run winfetch on Terminal Launch
✅ For PowerShell:

    Open PowerShell and run:

notepad $PROFILE

    Add this line at the bottom of the file:

. "winfetch"

    Save and restart your terminal.

🛡️ 4. Allow Script Execution (If Needed)

If your script doesn’t run, set execution policy once:

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

    ✅ Also run this to unblock the script file:

Unblock-File "$HOME\.config\winfetch\winfetch.ps1"

Enjoy the clean GPU-accelerated terminal with transparency.

---

## 🧠 Bonus

* Use `Set-PSReadLineOption -PredictionSource History` for smart autosuggestions.
* Enable `choco` tab completions with Chocolatey profile if installed.

---

## 📸 Preview

> <img width="1919" height="1024" alt="image" src="https://github.com/user-attachments/assets/89a139f2-66d6-4bad-8eec-ab66220c4dc3" />


---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 🙌 Credits

* [WezTerm](https://wezfurlong.org/wezterm/)
* [Oh My Posh](https://ohmyposh.dev/)
* [Zoxide](https://github.com/ajeetdsouza/zoxide)
* [Terminal Icons](https://github.com/devblackops/Terminal-Icons)

---

