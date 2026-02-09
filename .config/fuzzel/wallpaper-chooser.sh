wall_dir="${HOME}/pictures/wallpapers/current/"
wall_selection="find "${HOME}/pictures/wallpapers/current/" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | fuzzel -d"
swaymsg "output * background ${wall_dir}/${wall_selection} fill"
