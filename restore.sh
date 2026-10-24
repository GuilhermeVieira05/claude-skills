#!/bin/bash
# Restaura skills third-party para ~/.claude/skills/
# Uso: ./restore.sh            (todas as categorias)
#      ./restore.sh design     (só design)
#      ./restore.sh linkedin   (só linkedin)
#      ./restore.sh writing    (só writing)
#      ./restore.sh dev        (só dev)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
THIRD_PARTY="$SCRIPT_DIR/third-party"
DEST="$HOME/.claude/skills"
CATEGORY="${1:-all}"

install_category() {
  local cat="$1"
  local dir="$THIRD_PARTY/$cat"
  if [ ! -d "$dir" ]; then
    echo "Categoria '$cat' não encontrada."
    return 1
  fi
  echo "Instalando $cat..."
  for skill in "$dir"/*/; do
    name=$(basename "$skill")
    cp -r "$skill" "$DEST/"
    echo "  ✓ $name"
  done
}

mkdir -p "$DEST"

if [ "$CATEGORY" = "all" ]; then
  for cat in design linkedin writing dev; do
    install_category "$cat"
  done

  # graphify precisa do executável também
  if ! command -v graphify &>/dev/null; then
    echo ""
    echo "⚠️  graphify requer instalação extra:"
    echo "   uv tool install graphifyy"
    echo "   graphify install"
  fi
else
  install_category "$CATEGORY"
fi

echo ""
echo "Pronto. Skills instaladas em $DEST"
