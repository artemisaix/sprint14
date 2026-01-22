# Sprint14 - Análisis de Precios de Automóviles

## Descripción del Proyecto

Este proyecto implementa modelos de machine learning para predecir el valor de mercado de automóviles usados. El servicio Rusty Bargain desarrolla una aplicación para atraer nuevos clientes, permitiendo averiguar rápidamente el valor de mercado de un coche basándose en especificaciones técnicas, versiones de equipamiento y precios históricos.

## Características

- **Análisis de Datos**: Limpieza y preparación de datos de automóviles
- **Modelos de ML**: Implementación de múltiples algoritmos (Regresión Lineal, Árboles de Decisión, Random Forest, LightGBM)
- **Evaluación de Modelos**: Comparación de calidad de predicción y velocidad de entrenamiento
- **Configuración MCP**: Integración con GitHub a través del Model Context Protocol

## Estructura del Proyecto

```
sprint14/
├── notebook.ipynb          # Análisis principal en Jupyter
├── datasets/               # Datos de automóviles
├── .cursorrules           # Configuración de Cursor y MCP
├── mcp-config.json        # Configuración específica del MCP
├── MCP_SETUP.md          # Instrucciones de configuración MCP
└── README.md             # Este archivo
```

## Configuración MCP de GitHub

Este proyecto incluye configuración para el Model Context Protocol (MCP) de GitHub, que permite interactuar con repositorios, issues y pull requests directamente desde Cursor.

### Configuración Rápida

1. **Generar Token de GitHub**:
   - Ve a [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)
   - Crea un nuevo token con permisos: `repo`, `read:org`, `read:user`

2. **Configurar Variable de Entorno**:
   ```powershell
   # Windows (PowerShell)
   $env:GITHUB_TOKEN="tu_token_aqui"
   ```

3. **Reiniciar Cursor** para aplicar los cambios

Para más detalles, consulta `MCP_SETUP.md`.

## Resultados del Análisis

Los modelos evaluados mostraron los siguientes resultados:

| Modelo | RMSE | Tiempo Entrenamiento | Tiempo Predicción |
|--------|------|---------------------|-------------------|
| LightGBM (Tuned) | 1574.84 | 22.91s | 0.096s |
| Random Forest | 1635.80 | 7.42s | 0.593s |
| Decision Tree | 2149.35 | 0.77s | 0.029s |
| Linear Regression | 2577.29 | 3.66s | 0.083s |

**Conclusión**: LightGBM ofrece el mejor balance entre precisión y velocidad.

## Tecnologías Utilizadas

- **Python**: Análisis de datos y machine learning
- **Pandas & NumPy**: Manipulación de datos
- **Scikit-learn**: Modelos de machine learning
- **LightGBM**: Modelo de boosting
- **Jupyter Notebook**: Análisis exploratorio
- **MCP**: Integración con GitHub

## Métodos Numéricos

Este proyecto aplica diversos métodos numéricos y estadísticos:
- Preprocesamiento de datos
- Codificación de variables categóricas
- Escalado de características
- Validación cruzada
- Evaluación de modelos mediante RMSE
