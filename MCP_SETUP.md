# Configuración del MCP de GitHub en Cursor

## ¿Qué es MCP?

MCP (Model Context Protocol) es un protocolo que permite a los modelos de IA acceder a herramientas y servicios externos de manera segura y controlada.

## Configuración del MCP de GitHub

### 1. Generar un Token de Acceso Personal de GitHub

1. Ve a [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)
2. Haz clic en "Generate new token (classic)"
3. Dale un nombre descriptivo como "Cursor MCP"
4. Selecciona los siguientes scopes:
   - `repo` (acceso completo a repositorios)
   - `read:org` (leer información de organizaciones)
   - `read:user` (leer información de usuario)
5. Copia el token generado

### 2. Configurar la Variable de Entorno

#### En Windows (PowerShell):
```powershell
$env:GITHUB_TOKEN="tu_token_aqui"
```

#### En macOS/Linux:
```bash
export GITHUB_TOKEN="tu_token_aqui"
```

### 3. Verificar la Configuración

Una vez configurado, podrás usar comandos como:
- Buscar repositorios
- Crear issues
- Revisar pull requests
- Acceder a información de usuarios y organizaciones

### 4. Archivos de Configuración Creados

- `.cursorrules`: Configuración general de Cursor con reglas del proyecto
- `mcp-config.json`: Configuración específica del MCP de GitHub

### 5. Reiniciar Cursor

Después de configurar las variables de entorno, reinicia Cursor para que los cambios surtan efecto.

## Uso del MCP de GitHub

Una vez configurado, podrás usar comandos como:

```
Buscar repositorios relacionados con machine learning
Crear un issue en este repositorio
Revisar los últimos pull requests
```

## Solución de Problemas

### Error: "Token no válido"
- Verifica que el token tenga los permisos correctos
- Asegúrate de que la variable de entorno esté configurada correctamente

### Error: "No se puede conectar a GitHub"
- Verifica tu conexión a internet
- Comprueba que el token no haya expirado

## Recursos Adicionales

- [Documentación oficial de MCP](https://modelcontextprotocol.io/)
- [GitHub API Documentation](https://docs.github.com/en/rest)
- [Cursor MCP Documentation](https://cursor.sh/docs/mcp) 

## Configuración del Token de GitHub

Para buscar repositorios, primero necesitas configurar tu token de acceso personal de GitHub:

### 1. Generar el Token (si aún no lo tienes):
1. Ve a [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)
2. Haz clic en "Generate new token (classic)"
3. Dale un nombre como "Cursor MCP"
4. Selecciona estos permisos:
   - `repo` (acceso completo a repositorios)
   - `read:org` (leer información de organizaciones)
   - `read:user` (leer información de usuario)
5. Copia el token generado

### 2. Configurar la Variable de Entorno:

Una vez que tengas tu token, ejecuta este comando en PowerShell:

```powershell
$env:GITHUB_TOKEN="tu_token_aqui"
```

Reemplaza `"tu_token_aqui"` con tu token real.

### 3. Verificar la Configuración:

Después de configurar el token, podrás buscar repositorios con comandos como:

- Buscar repositorios por tema (ej: machine learning, Python, etc.)
- Buscar repositorios de usuarios específicos
- Buscar repositorios por organización
- Filtrar por lenguaje de programación, estrellas, fecha de actualización, etc.

¿Ya tienes tu token de GitHub generado? Si es así, puedo ayudarte a configurarlo. Si no, primero necesitas generarlo siguiendo los pasos que te indiqué arriba. 