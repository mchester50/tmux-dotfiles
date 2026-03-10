# tmux-dotfile

** NOTE: Use at your own risk this is a personal project still under development

# 📘 **README.md — Mike’s Cross‑Platform Tmux Environment**

# 🧰 Mike’s Tmux Environment  
A fully‑featured, cross‑platform tmux environment designed for macOS and Linux.  
Includes:

- Basic and Pro profiles  
- Project‑aware auto‑sessions  
- Manyfold + Docker operator layouts  
- Floating help pane  
- OS detection  
- Profile switcher  
- Installer script  
- Clean, modular dotfiles structure  

This setup turns tmux into a fast, reliable, IDE‑like workspace that works identically across machines.

---

# 📁 Folder Structure

```
dotfiles/
│
├── tmux/
│   ├── basic/
│   │   └── tmux-basic.conf
│   ├── pro/
│   │   └── tmux-pro.conf
│   ├── layouts/
│   │   ├── manyfold.conf
│   │   └── docker.conf
│   ├── help.md
│   ├── detect-os.conf
│   ├── profile-switcher.sh
│   └── toggle-help.sh
│
├── shell/
│   ├── local/
│   │   ├── zshrc-basic
│   │   └── zshrc-pro
│   ├── remote/
│   │   ├── bashrc-basic
│   │   └── bashrc-pro
│   └── project-auto-session.sh
│
└── install.sh
```

---

# 🚀 Installation

Clone or copy the `dotfiles/` folder into your home directory:

```
~/dotfiles/
```

Then run:

```
cd ~/dotfiles
./install.sh
```

This will:

- Install all tmux + shell configs  
- Set the **Pro profile** as the default  
- Enable the floating help pane  
- Make all scripts executable  

---

# 🔄 Switching Between Profiles

You can switch between **Basic** and **Pro** at any time:

```
~/dotfiles/tmux/profile-switcher.sh basic
~/dotfiles/tmux/profile-switcher.sh pro
```

### Basic Profile
- Minimal tmux  
- No floating help pane  
- No workspace shortcuts  

### Pro Profile
- Full IDE‑style environment  
- Floating help pane  
- Manyfold + Docker layouts  
- Project‑aware sessions  
- Custom navigation + resizing  

---

# 🧭 Project‑Aware Auto‑Sessions

When you `cd` into a directory, tmux automatically:

- Attaches to a session named after the folder  
- Or creates it if missing  

Example:

```
cd ~/projects/manyfold
```

→ opens or creates session `manyfold`.

Enabled in:

- `shell/local/zshrc-pro`
- `shell/remote/bashrc-pro`

---

# 🖥️ Remote Linux Behavior (No Nested Tmux)

Remote configs detect SSH:

```
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
```

This ensures:

- Local tmux stays local  
- Remote tmux stays remote  
- No tmux‑inside‑tmux  
- Clean SSH workflow  

---

# 🧩 Floating Help Pane

Open the help popup:

```
Ctrl + a then h
```

Features:

- 70% width / 70% height  
- Rounded borders  
- Displays `help.md`  
- Closes with `q`  

### Toggle it on/off:

```
~/dotfiles/tmux/toggle-help.sh
```

---

# 🛠️ Custom Workspaces

## Manyfold Operator Dashboard

```
Ctrl + a then m
```

Creates:

1. Logs (`tail -f production.log`)
2. Incoming directory listing
3. Shell

---

## Docker Dashboard

```
Ctrl + a then d
```

Creates:

1. `docker ps`
2. `docker logs -f manyfold`
3. Shell

---

# ⌨️ Keybindings (Pro Profile)

## Prefix
```
Ctrl + a
```

## Navigation
```
Ctrl + h   ←
Ctrl + j   ↓
Ctrl + k   ↑
Ctrl + l   →
```

## Resizing
```
Alt + Arrow Keys
```

## Windows
```
Ctrl + a then c   new window
Ctrl + a then ,   rename
Ctrl + a then w   list windows
```

## Workspaces
```
Ctrl + a then w   3‑pane workspace
Ctrl + a then m   Manyfold workspace
Ctrl + a then d   Docker workspace
```

## Help
```
Ctrl + a then h   floating help popup
```

## Copy Mode (VI)
```
Ctrl + a then [
v   start selection
y   copy
]   paste
```

---

# 🧪 Requirements

- tmux 3.2+  
- zsh (macOS)  
- bash or zsh (Linux)  
- Docker (optional)  
- Manyfold (optional)  

---

# 📄 License

These dotfiles are yours — modify, fork, or extend them however you like.

---

# 🎉 Final Notes

This environment is designed to be:

- Fast  
- Predictable  
- Cross‑platform  
- Modular  
- Easy to maintain  
- Easy to extend  

If you want, I can also generate:

- A **cheat‑sheet PDF‑style Markdown**  
- A **Neovim integration section**  
- A **Manyfold operator manual**  
- A **Docker operator manual**  
- A **setup wizard** for first‑time installs  

Just tell me what direction you want to take it.
