# nvim
my neovim config
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git
nvim
```
```powershell
## How to install Neovim on windows natively 
winget install neovim.neovim
#or scoop
scoop install neovim

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
