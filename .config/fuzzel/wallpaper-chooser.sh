wall_dir="${HOME}/pictures/wallpapers/current/"
wall_selection=$(find "${wall_dir}" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | fuzzel --dmenu)
# \0icon\x1f
swaymsg "output * background ${wall_dir}/${wall_selection} fill"
