# hyroto 🌿

Configuración personal de [Hyprland](https://hyprland.org/) para Arch Linux.  
Setup con 3 monitores, animaciones suaves y enfoque en productividad de terminal.

---

## 📸 Setup

| Componente | Herramienta |
|---|---|
| Compositor | Hyprland |
| Terminal | Kitty |
| Launcher | Wofi |
| Bar | Waybar |
| Wallpaper | Hyprpaper |
| File Manager | Thunar / Dolphin |
| Browser | Floorp |
| Screenshots | Flameshot |

---

## 🖥️ Monitores

Configuración para triple monitor:

```
HDMI-A-1 (izquierda, 1920x1080@60) — eDP-1 (centro laptop, 1920x1080@144) — DP-1 (derecha, 1920x1080@60)
```

---

## ⌨️ Keybinds principales

### General
| Keybind | Acción |
|---|---|
| `SUPER + Return` | Terminal (Kitty) |
| `SUPER + W` | Cerrar ventana |
| `SUPER + R` | Launcher (Wofi) |
| `SUPER + D` | Launcher (Wofi) |
| `SUPER + F` | Fullscreen |
| `SUPER + V` | Toggle flotante |
| `SUPER + E` | File manager |
| `SUPER + SHIFT + F` | Floorp (browser) |
| `CTRL + Print` | Captura de pantalla (Flameshot) |

### Navegación
| Keybind | Acción |
|---|---|
| `SUPER + ←→↑↓` | Mover foco |
| `SUPER + Tab` | Siguiente workspace |
| `SUPER + SHIFT + Tab` | Workspace anterior |
| `SUPER + 1..0` | Ir a workspace N |
| `SUPER + SHIFT + 1..0` | Mover ventana a workspace N |
| `SUPER + U` | Toggle scratchpad |

### Ventanas
| Keybind | Acción |
|---|---|
| `SUPER + SHIFT + ←→↑↓` | Intercambiar ventanas (tiling) |
| `SUPER + CTRL + ←→↑↓` | Mover ventana flotante (±20px) |
| `SUPER + ALT + ←→↑↓` | Redimensionar ventana (±50px) |

### Sistema
| Keybind | Acción |
|---|---|
| `CTRL + SHIFT + ↑` | Subir volumen +5% |
| `CTRL + SHIFT + ↓` | Bajar volumen -5% |
| `CTRL + SHIFT + M` | Mute toggle |
| `SUPER + CTRL + ALT + →` | Brillo +5% |
| `SUPER + CTRL + ALT + ←` | Brillo -5% |

---

## ✨ Look & Feel

- Bordes redondeados: `10px`
- Gaps: `4px` interior / `8px` exterior
- Borde activo: gradiente cyan → verde (`rgba(33ccffee) → rgba(00ff99ee)`)
- Blur habilitado, animaciones con bezier personalizado
- Layout: Dwindle

---

## 📂 Archivos

```
~/.config/hypr/
├── hyprland.conf   # Configuración principal
└── hyprpaper.conf  # Wallpapers por monitor
```

---

## 🚀 Uso

```bash
git clone https://github.com/Rickemtz/hyroto.git
cp hyroto/hyprland.conf ~/.config/hypr/
cp hyroto/hyprpaper.conf ~/.config/hypr/
```

> Ajusta las secciones de `### MONITORS ###` y rutas de wallpaper en `hyprpaper.conf` según tu hardware.

---

*Erick Martínez — [@Rickemtz](https://github.com/Rickemtz)*
