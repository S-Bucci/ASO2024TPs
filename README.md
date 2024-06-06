## Trabajo Práctico 3

### 1a)
El tiempo de ejecución varía, siendo de entre 5.15 y 5.25 segundos para sinhilos.py y de entre 4 y 4.2 segundos para conhilos.py. 
Diría que no es predecible ya que el tiempo de ejecución depende de cuán rápido se lea el bucle *for* de tarea.1, y eso varía según 
los núcleos del procesador de la pc que ejecute el programa.

### 1b)
No son *exactamente* iguales pero varían dentro de rangos prácticamente idénticos.

### 1c)
En un principio, luego de descomentar las lineas 10,11,19 y 20, se puede observar que el programa tarda más en ejecutarse debido a la 
gran cantidad de bucles *for* que tiene que leer. Luego, es posible notar una variación en el valor final de *acumulador*.
Esta variación se produce porque ambos hilos intentan entrar a la zona crítica (acceder a la variable global acumulador) al mismo tiempo y el que termina de leer último su bucle *for* es el que puede
asignar a *acumulador* su valor local de *a* sin que se pierda. Por eso a veces el resultado final es 500000 (*sumador* tarda más) o
un valor cercano a -500000 (*restador* tarda más en la mayoría de los casos). Esto es conocido como *race condition*, ya que los procesos compiten en una especie de carrera para acceder a la zona crítica, lo que genera resultados arbitrarios e impredecibles.

### 2a)
[Código funcionando](https://github.com/S-Bucci/ASO2024TPs/blob/main/TP3/sin_race_condition.c)

### 2b) 
![Gráfico para dos comensales y 8 hamburguesas](https://github.com/S-Bucci/ASO2024TPs/blob/main/TP3/Gr%C3%A1fico%20TP3%20ASO.jpg)


## Parcial

[Video del parcial](https://drive.google.com/file/d/1rVO7ew7h-p0dix0ELH4cIjy70NIphJVf/view)
