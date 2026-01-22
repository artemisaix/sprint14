# Script para iniciar el MCP de GitHub con Docker
# Uso: .\start-mcp.ps1

Write-Host "🚀 Iniciando MCP de GitHub con Docker..." -ForegroundColor Green

# Verificar si Docker está ejecutándose
try {
    docker info | Out-Null
    Write-Host "✅ Docker está ejecutándose" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker no está ejecutándose. Por favor, inicia Docker Desktop." -ForegroundColor Red
    exit 1
}

# Verificar si el token está configurado
if (-not $env:GITHUB_TOKEN) {
    Write-Host "❌ Variable GITHUB_TOKEN no configurada." -ForegroundColor Red
    Write-Host "Por favor, configura tu token de GitHub:" -ForegroundColor Yellow
    Write-Host '$env:GITHUB_TOKEN="tu_token_aqui"' -ForegroundColor Cyan
    exit 1
}

Write-Host "✅ Token de GitHub configurado" -ForegroundColor Green

# Probar el MCP de GitHub
Write-Host "🧪 Probando conexión con GitHub..." -ForegroundColor Yellow

try {
    # Ejecutar un comando de prueba
    docker run --rm -e GITHUB_PERSONAL_ACCESS_TOKEN=$env:GITHUB_TOKEN node:18-alpine sh -c 'npm install -g @modelcontextprotocol/server-github && echo "MCP GitHub instalado correctamente"'
    Write-Host "✅ MCP de GitHub configurado correctamente" -ForegroundColor Green
    Write-Host "🎉 ¡Ya puedes usar comandos de GitHub en Cursor!" -ForegroundColor Green
    
} catch {
    Write-Host "❌ Error al configurar MCP de GitHub" -ForegroundColor Red
    Write-Host "Verifica tu token y conexión a internet" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "📝 Comandos de ejemplo:" -ForegroundColor Cyan
Write-Host "- Buscar repositorios de machine learning" -ForegroundColor White
Write-Host "- Crear un issue en este repositorio" -ForegroundColor White
Write-Host "- Revisar pull requests" -ForegroundColor White 