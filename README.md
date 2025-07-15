
# ⚡ Windows Terminal + PowerShell Custom Setup

This repository contains my fully customized setup for **Windows Terminal** and **PowerShell**, using:

- 🎨 Custom color schemes (`xcad`, `Dracula`, etc.)
- 🧠 [Oh My Posh](https://ohmyposh.dev) for a beautiful terminal prompt
- 💠 [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
- 📁 [Terminal-Icons](https://www.powershellgallery.com/packages/Terminal-Icons)
- 📦 [zoxide](https://github.com/ajeetdsouza/zoxide) for fast directory jumping
- 🍫 [Chocolatey tab-completions](https://ch0.co/tab-completion)

---

## 📁 File Structure

```bash
windows-terminal-config/
├── settings.json                  # Windows Terminal appearance and layout
├── Microsoft.PowerShell_profile.ps1  # PowerShell customizations
├── README.md                      # You are here
````

---

## 🛠️ How to Set It Up (Step-by-Step)

### 1. Clone This Repository

```bash
git clone https://github.com/YOUR_USERNAME/windows-terminal-config.git
cd windows-terminal-config
```

---

### 2. Install FiraCode Nerd Font

* Download and install from [Nerd Fonts → FiraCode](https://www.nerdfonts.com/font-downloads)
* Set this font in Windows Terminal settings manually (or use the provided `settings.json`)

---

### 3. Install Required Tools

Run each of these in **PowerShell as Administrator**:

#### ➤ Install [Oh My Posh](https://ohmyposh.dev)

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

#### ➤ Install [zoxide](https://github.com/ajeetdsouza/zoxide)

```powershell
winget install ajeetdsouza.zoxide -s winget
```

#### ➤ Install Terminal Icons

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

#### ➤ (Optional) Install Chocolatey (for tab-completion support)

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

---

## ⚙️ Apply This Configuration

### 📄 1. Apply PowerShell Profile

```powershell
notepad $PROFILE
```

* Paste everything from `Microsoft.PowerShell_profile.ps1` into that file and save.

---

### 🧱 2. Apply Windows Terminal Settings

* Open Terminal > Click dropdown > `Settings`
* In the editor, replace everything with the content of `settings.json`

---

## 🧾 What's Included

### Terminal Profiles:

* PowerShell, CMD, Anaconda Prompt, VS Developer Shells

### Color Schemes:

* `xcad`, `Dracula`, `One Half Dark`, `Ciapre`

### Key Bindings:

* `Ctrl+C`, `Ctrl+V`, `Alt+Shift+D` (duplicate pane), etc.

---

## 🙌 Credits & Inspiration

* [Oh My Posh](https://ohmyposh.dev)
* [zoxide](https://github.com/ajeetdsouza/zoxide)
* [Nerd Fonts](https://www.nerdfonts.com/)
* [Terminal Icons](https://github.com/devblackops/Terminal-Icons)

---

## 🧠 Tip: Make Your Own!

You can customize further:

* Add more profiles (like WSL or Git Bash)
* Use your own Oh My Posh theme (`.omp.json`)
* Add auto-start commands or aliases in `$PROFILE`

---

## 📬 License

Feel free to copy or fork this! If you use this in your own dotfiles repo, crediting is appreciated but not required. 💙

```

---

Let me know if you'd like help writing your own `.omp.json` theme, uploading screenshots, or making this a **dotfiles** repo!
```


