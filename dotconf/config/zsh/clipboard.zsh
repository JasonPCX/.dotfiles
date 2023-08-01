function clipcopy() { cat "${1:-/dev/stdin}" | xclip -selection clipboard -in &>/dev/null &|; }

function clippaste() { xclip -out -selection clipboard; }