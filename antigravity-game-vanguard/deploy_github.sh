#!/usr/bin/env bash
# Script de Despliegue Automático a GitHub (Bash / WSL / macOS / Linux)
# Pre-configurado para la cuenta: remg87-max

set -e
GITHUB_USER="remg87-max"
REPO_NAME="antigravity-game-vanguard"

echo "🎮 Inicializando repositorio local: $REPO_NAME..."

if [ ! -d ".git" ]; then
    git init
    git branch -M main
fi

git add .
git commit -m "feat(architecture): initialize The Game Vanguard multi-agent framework (X.1/X.2/X.3/X.R standard)"

if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI detectado. Creando y haciendo push a github.com/$GITHUB_USER/$REPO_NAME..."
    gh repo create "$GITHUB_USER/$REPO_NAME" --public --source=. --remote=origin --push
else
    echo "ℹ️ Configurando remote origin para https://github.com/$GITHUB_USER/$REPO_NAME.git..."
    git remote remove origin 2>/dev/null || true
    git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"
    git push -u origin main
fi
