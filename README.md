# Linphone Auto Pause (macOS)

Automatically pauses and resumes media (YouTube, Spotify Web, etc.) when the Linphone **"Appels"** window is active.

---

## ✨ Features

* ⏸ Pause media when Linphone call window is focused
* ▶️ Resume media when leaving the window
* 🎧 Works with Firefox, YouTube, Spotify Web
* ⚡ Lightweight (Hammerspoon)

---

## 📦 Requirements

* macOS
* Hammerspoon

Install with Homebrew:

```bash
brew install --cask hammerspoon
```

---

## 🚀 Installation

1. Launch Hammerspoon
2. Open config (menu bar → Hammerspoon → Open Config)
3. Copy the script from `init.lua`
4. Paste it into your config
5. Reload config

---

## ⚙️ Configuration

Default window name:

```
Appels
```

Change it in `init.lua` if needed (e.g. `"Calls"`).

---

## ⚠️ Notes

* Works when Linphone window is focused
* Uses system play/pause key
* May affect another media app if multiple are playing
