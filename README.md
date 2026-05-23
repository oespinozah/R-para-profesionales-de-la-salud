# R para profesionales de la salud

Manual abierto y progresivo para aprender análisis de datos con R desde una mirada clínica, epidemiológica y aplicada a servicios de salud.

Este repositorio está pensado para alguien que llega sin mucha experiencia previa y necesita avanzar con orden: primero entender qué es R y cómo se trabaja de manera reproducible; luego describir datos; después hacer inferencia; más adelante construir modelos de regresión; y finalmente evaluar modelos predictivos con criterio clínico.

## Ruta de aprendizaje

| Bloque | Capítulos | Qué aprenderás |
|---|---:|---|
| Fundamentos | 01 | R, RStudio, proyectos, paquetes, tipos de datos, importación y `tidyverse`. |
| Descriptivos | 02 | Tablas, medidas resumen, visualización y comunicación de datos clínicos. |
| Inferencia | 03-05 | Pruebas paramétricas, no paramétricas, intervalos de confianza, tamaño de muestra y potencia. |
| Regresión | 06-11 | Regresión lineal, GLM, conteos, supervivencia, Kaplan-Meier y Cox. |
| Predicción | 12-15 | Modelos predictivos, manejo de variables, comparación de modelos, métricas y validación. |

## Cómo leerlo

Puedes leer el manual directamente desde GitHub entrando a [`index.qmd`](index.qmd) y luego a los capítulos en [`capitulos/`](capitulos/).

Si quieres verlo como libro HTML navegable, instala [Quarto](https://quarto.org/) y ejecuta:

```bash
quarto render
```

Quarto creará una carpeta `_book/` en tu computadora. Esa carpeta no se sube al repositorio porque es una salida generada automáticamente.

## Estructura del repositorio

```text
.
├── capitulos/              # Manual en formato Quarto
├── datos/                  # Datos de ejemplo usados por el manual
├── assets/
│   ├── css/                # Estilo visual del manual
│   └── img/                # Imágenes y figuras usadas en los capítulos
├── scripts/                # Utilidades para instalar paquetes y preparar entorno
└── _quarto.yml             # Configuración del libro
```

No se incluye una carpeta de salida web porque este repositorio guarda el manual fuente. Cuando se quiera publicar como página, se puede generar `_book/` y elegir una estrategia de despliegue.

## Requisitos

Necesitas R, RStudio o Positron, Quarto y algunos paquetes de uso frecuente en investigación en salud. Para instalar los paquetes principales:

```r
source("scripts/instalar-paquetes.R")
```

## Enfoque

El manual prioriza ejemplos reproducibles, lectura clínica de resultados y decisiones prácticas. No busca reemplazar una formación formal en bioestadística; busca que el profesional de salud pueda pasar del dato crudo a una interpretación razonable, transparente y comunicable.

## Licencias

El código se distribuye bajo licencia MIT. El contenido educativo se distribuye bajo Creative Commons Atribución 4.0 Internacional. Revisa [`LICENSE`](LICENSE) y [`LICENSE-CONTENT.md`](LICENSE-CONTENT.md).
