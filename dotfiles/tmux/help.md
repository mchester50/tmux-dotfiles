# 📘 TMUX HELP — Custom Environment (Pro Profile)

## 🟩 PREFIX
- **Prefix key:** `Ctrl + a`  
  (Replaces the default `Ctrl + b`)

---

## 🟦 BASIC COMMANDS
- **Detach session:** `Ctrl + a` then `d`  
- **New window:** `Ctrl + a` then `c`  
- **Rename window:** `Ctrl + a` then `,`  
- **List windows:** `Ctrl + a` then `w`  
- **Kill pane/window:** `exit` or `Ctrl + d`  
- **Reload config:**  
  `Ctrl + a` then `:` → `source-file ~/.tmux.conf`

---

## 🟧 PANE NAVIGATION
- Move left: `Ctrl + h`  
- Move down: `Ctrl + j`  
- Move up: `Ctrl + k`  
- Move right: `Ctrl + l`

---

## 🟪 PANE RESIZING
- Resize left: `Alt + Left`  
- Resize right: `Alt + Right`  
- Resize up: `Alt + Up`  
- Resize down: `Alt + Down`

---

## 🟨 WORKSPACES

### **Default 3‑pane workspace**
```
Ctrl + a then w
```

Creates:
1. Left pane  
2. Top‑right pane  
3. Bottom‑right pane  

---

## 🟩 MANYFOLD WORKSPACE
```
Ctrl + a then m
```

Creates a Manyfold operator dashboard:

1. **Left pane:**  
   `tail -f /var/lib/manyfold/log/production.log`
2. **Top‑right pane:**  
   `ls -l ~/manyfold/incoming`
3. **Bottom‑right pane:**  
   Shell for maintenance

---

## 🟦 DOCKER WORKSPACE
```
Ctrl + a then d
```

Creates a Docker monitoring dashboard:

1. **Left pane:** `docker ps`  
2. **Top‑right pane:** `docker logs -f manyfold`  
3. **Bottom‑right pane:** Shell  

---

## 🟧 FLOATING HELP PANE
```
Ctrl + a then h
```

- Opens a centered popup (70% width/height)  
- Rounded borders  
- Displays this help file  
- Close with `q`

### Toggle floating help on/off:
```
~/dotfiles/tmux/toggle-help.sh
```

---

## 🟪 PROJECT‑AWARE AUTO‑SESSIONS
Automatically attaches to or creates a session named after the current directory.

Example:
```
cd ~/projects/manyfold
```

→ tmux session `manyfold` opens automatically.

Enabled in **Pro** local + remote configs.

---

## 🟨 PROFILE SWITCHER
Switch between Basic and Pro tmux profiles:

```
~/dotfiles/tmux/profile-switcher.sh basic
~/dotfiles/tmux/profile-switcher.sh pro
```

- **Basic:** minimal tmux  
- **Pro:** full IDE mode + floating help pane  

---

## 🟩 COPY MODE (VI STYLE)

Enter copy mode:
```
Ctrl + a then [
```

Inside copy mode:

| Action | Key |
|--------|------|
| Start selection | `v` |
| Copy selection | `y` |
| Cancel | `Esc` |
| Paste | `Ctrl + a` then `]` |

---

## 🟦 SESSION MANAGEMENT
- List sessions:  
  `tmux ls`
- Attach to session:  
  `tmux attach -t name`
- Kill session:  
  `tmux kill-session -t name`
- Switch sessions:  
  `Ctrl + a` then `s`

---

## 🟧 WINDOW MANAGEMENT
- New window: `Ctrl + a` then `c`  
- Rename window: `Ctrl + a` then `,`  
- Next window: `Ctrl + a` then `n`  
- Previous window: `Ctrl + a` then `p`  
- List windows: `Ctrl + a` then `w`

---

## 🟪 PANE MANAGEMENT
- Split horizontally:  
  `Ctrl + a` then `"`  
- Split vertically:  
  `Ctrl + a` then `%`  
- Close pane:  
  `exit` or `Ctrl + d`  
- Cycle panes:  
  `Ctrl + a` then `o`

---

## 🟩 STATUS BAR
- Left: session name  
- Right: date + time  

---

## 🟦 OS DETECTION (Automatic)
Your tmux config detects:

- macOS  
- Linux  

And loads OS‑specific tweaks automatically.

---

## 🟧 FILE LOCATIONS
- Main config: `~/.tmux.conf`  
- Dotfiles repo: `~/dotfiles/`  
- Help file: `~/dotfiles/tmux/help.md`  
- Toggle help: `~/dotfiles/tmux/toggle-help.sh`  
- Switch profiles: `~/dotfiles/tmux/profile-switcher.sh`  

---

# 🟩 END OF HELP FILE

This is the **final Markdown version**, exactly as it should appear in your repo and inside your floating help popup.

If you want, I can also generate:

- a **compact cheat‑sheet version**  
- a **color‑coded version**  
- a **Neovim‑aware version**  
- or a **Manyfold‑specific operator cheat sheet**  

Just tell me what you want next.
