# Windows Terminal Configuration

A clean and modern Windows Terminal setup for a beautiful and productive CLI experience.

## Features

- 🎨 Custom Oh My Posh theme with a sleek prompt
- ⚡ Fast directory navigation with Zoxide
- 💄 Colorful file icons with Terminal-Icons
- 🖼️ System info display with Fastfetch
- 💎 Optional WezTerm configuration with GPU acceleration
- 🌈 Nerd Font support for enhanced visuals

## What's Included

```
windows-terminal-config/
├── Microsoft.PowerShell_profile.ps1  # PowerShell config
├── config.jsonc                      # Fastfetch config
├── .wezterm.lua                      # WezTerm config (optional)
|-- settings.json
└── README.md
```

## Prerequisites

- [PowerShell 7+](https://github.com/PowerShell/PowerShell)
- [Windows Terminal](https://aka.ms/terminal)
- [Oh My Posh](https://ohmyposh.dev/docs/installation)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads) (recommended)
- [WezTerm](https://wezfurlong.org/wezterm/install/) (optional)

## Installation

### 1. Clone the Repository

```powershell
git clone https://github.com/lazy-blake/windows-terminal-config.git
cd windows-terminal-config
```

### 2. Install Dependencies

```powershell
# Install Oh My Posh
winget install JanDeDobbeleer.OhMyPosh

# Install Zoxide
winget install ajeetdsouza.zoxide

# Install Terminal-Icons
Install-Module -Name Terminal-Icons -Repository PSGallery

# Install Fastfetch
winget install Fastfetch-cli.Fastfetch
```

### 3. Set Up PowerShell Profile

Copy the PowerShell profile to your profile location:

```powershell
# Check your profile path
echo $PROFILE

# Copy the profile
Copy-Item Microsoft.PowerShell_profile.ps1 $PROFILE
```

Or manually copy the contents:

```powershell
notepad $PROFILE
```

### 4. Set Up WezTerm (Optional)

If using WezTerm, copy the configuration file:

```powershell
Copy-Item .wezterm.lua $HOME\.wezterm.lua
```

### 5. Install Nerd Font

Download and install [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads), then set it as your terminal font in Windows Terminal or WezTerm settings.

## Usage

After installation, restart your terminal. You should see:

- Fastfetch system information on startup
- A custom Oh My Posh prompt
- Colorful file icons when listing directories
- Fast directory jumping with `z` command

### Quick Commands

```powershell
# Jump to a directory you've visited before
z documents

# List directory with icons
ls
```

## Customization

- Edit `Microsoft.PowerShell_profile.ps1` to modify your shell behavior
- Modify `.wezterm.lua` for WezTerm-specific settings
- Configure Fastfetch by creating `~/.config/fastfetch/config.jsonc`

## Troubleshooting

If scripts don't run, you may need to adjust the execution policy:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## License

MIT License - Feel free to use and modify as you wish!

---

If you found this helpful, consider starring the repo ⭐
