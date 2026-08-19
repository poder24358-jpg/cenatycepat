param(
    [string]$RemoteUrl = 'https://github.com/poder24358-jpg/cenatycepat.git'
)

Write-Host "Preparando para subir el proyecto desde: $(Get-Location)" -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git no parece estar instalado. Instalalo primero: https://git-scm.com/downloads"
    exit 1
}

if (-not (Test-Path .git)) {
    git init
    Write-Host "Repo git inicializado." -ForegroundColor Green
} else {
    Write-Host ".git ya existe. Usando repo existente." -ForegroundColor Yellow
}

git add .
git commit -m "Agregar sitio LicenciasBA: boletas y pagina de pago" -q

# Configurar remote origin
try {
    git remote remove origin 2>$null
} catch {}
git remote add origin $RemoteUrl
git branch -M main

Write-Host "Haciendo push al remote: $RemoteUrl" -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "Push completado." -ForegroundColor Green
} else {
    Write-Warning "Push terminó con errores. Revisa la salida anterior. Si usás 2FA, usa un Personal Access Token (PAT) como contraseña." 
}
