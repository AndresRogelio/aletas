# Análisis Estadístico de Longitudes de Aletas de Pingüinos
Este proyecto se centra en el análisis de datos sobre la longitud de las aletas de diferentes especies de pingüinos, utilizando el conjunto de datos penguins de la librería palmerpenguins. El objetivo principal es explorar las diferencias en las longitudes de las aletas entre especies, aplicando métodos estadísticos como la prueba T, ANOVA, y análisis post-hoc.

## Contenido
- Prueba T: Se realizó una prueba T para comparar las longitudes de aletas entre dos grupos, Machine y Expert, y se generó un informe detallado de los resultados.
- Análisis de Varianza (ANOVA): Se utilizó ANOVA para evaluar si existen diferencias significativas en la longitud de las aletas entre las distintas especies de pingüinos. Se verificaron los supuestos de normalidad y homogeneidad de varianzas mediante histogramas, QQ-plots, y la prueba de Levene.
- Visualizaciones: Se emplearon gráficos de dispersión, boxplots y gráficos de comparación para ilustrar los resultados de forma clara y efectiva.
- Pruebas Post-hoc: Se aplicaron pruebas post-hoc, como Tukey y Dunn, para identificar diferencias significativas entre pares de grupos después de realizar el ANOVA.
- Pruebas No Paramétricas: Se llevó a cabo un análisis no paramétrico utilizando la prueba de Kruskal-Wallis y el test de Dunn para comparar longitudes de aletas cuando los supuestos de ANOVA no se cumplían.

## Uso
Para ejecutar el análisis, simplemente carga el script en R y ejecuta cada sección en orden. Los resultados, incluyendo gráficos y reportes, se generarán automáticamente.

## Resultados
El análisis proporciona una visión detallada sobre cómo varían las longitudes de las aletas entre las especies de pingüinos y subraya la importancia de aplicar métodos estadísticos en el análisis de datos biológicos.

## Contribuciones
Las contribuciones son bienvenidas. Si deseas colaborar, por favor crea un fork del repositorio y envía un pull request con tus mejoras o sugerencias.

## Referencias

- **Conjuntos de Datos**:
  - `blood`: Disponible a través de la librería `UsingR`.
  - `penguins`: Proporcionado por la librería `palmerpenguins`.

- **Librerías**:
  - `UsingR`: [GitHub](https://github.com/ckb/UsingR)
  - `palmerpenguins`: [GitHub](https://github.com/allisonhorst/palmerpenguins)
  - `tidyverse`: [Tidyverse](https://www.tidyverse.org/)
  - `car`: [CRAN](https://cran.r-project.org/web/packages/car/index.html)
  - `lattice`: [CRAN](https://cran.r-project.org/web/packages/lattice/index.html)
  - `multcomp`: [CRAN](https://cran.r-project.org/web/packages/multcomp/index.html)
  - `FSA`: [CRAN](https://cran.r-project.org/web/packages/FSA/index.html)
  - `ggstatsplot`: [GitHub](https://github.com/IndrajeetPatil/ggstatsplot)

- **Recursos Adicionales**:
  - Para más información sobre análisis de datos en R, puedes consultar el manual "Introducción a R y RStudio" del profesor José Ulises Jimenez. [ridda2.utp.ac.pa](https://ridda2.utp.ac.pa/handle/123456789/9428)
