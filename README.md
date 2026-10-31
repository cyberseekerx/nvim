# nvim
my neovim config
* note you will get about 50 errors on the first and second boot of my config
* these are expected to happen (open an c,python ,lua,html file)but you will get better startup time on ever other opening of this tool

install script for Linux
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/cyberseekerx/nvim.git ~/.config/nvim

rm -rf ~/.config/nvim/.git
nvim
```
## How to install Neovim on windows natively
```powershell
## How to install Neovim on windows natively 
winget install neovim.neovim
#or scoop
scoop install neovim
```

# install script for windows
```powershell
for Windows user

# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

#clone the repository
git clone https://github.com/cyberseekerx/nvim.git $env:LOCALAPPDATA\nvim
#optional but remove the .git and make you're own git repo 
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
### needed dependency for my config
```powershell
winget install JetBrains.JetBrainsMonoNerdFont
```
By default in windows 11, terminal applications like Powershell use the same application: Windows Terminal
here are two main places to change the colors in WT:

    In Settings (Ctrl+,) > Color Schemes > Edit the specific colors in a named color scheme
    In Settings > under Profiles > choose the profile to edit > Appearance > select which color scheme to use on that profile, and see which colors apply to different types of syntax

#readme inspired from lazyvim
