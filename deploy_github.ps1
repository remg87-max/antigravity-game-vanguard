# Script de Despliegue Automático a GitHub (Windows PowerShell)
# Pre-configurado para la cuenta: remg87-max

$ErrorActionPreference = "Stop"
$GithubUser = "remg87-max"
$RepoName = "antigravity-game-vanguard"

Write-Host "🎮 Inicializando repositorio local: $RepoName..." -ForegroundColor Cyan

if (-not (Test-Path ".git")) {
    git init
    git branch -M main
}

git add .
git commit -m "feat(architecture): initialize The Game Vanguard multi-agent framework (X.1/X.2/X.3/X.R standard)"

if (Get-Command gh -ErrorAction SilentlyContinue) {
    Write-Host "✅ GitHub CLI detectado. Creando y subiendo repositorio a github.com/$GithubUser/$RepoName..." -ForegroundColor Green
    gh repo create "$GithubUser/$RepoName" --public --source=. --remote=origin --push
} else {
    Write-Host "ℹ️ Configurando remote origin para https://github.com/$GithubUser/$RepoName.git..." -ForegroundColor Yellow
    if (-not (git remote | Select-String "origin")) {
        git remote add origin "https://github.com/$GithubUser/$RepoName.git"
    } else {
        git remote set-url origin "https://github.com/$GithubUser/$RepoName.git"
    }
    Write-Host "👉 Ejecutando 'git push -u origin main' (asegúrate de haber creado '$RepoName' en https://github.com/new)..." -ForegroundColor Cyan
    git push -u origin main
}
