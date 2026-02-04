# **Game Design Document (GDD)**

## **1. Información General**
Género: Plataformas 2D
GitHub = https://github.com/Mikalemz 

Itch.io = https://mikalemz.itch.io/ 

## **2. Descripción / Concepto del Juego**
Juego de plataformas 2D en el que el jugador avanza por un camino lineal superando distintos obstáculos y enemigos. A lo largo del recorrido aparecen enemigos básicos que cuentan con colisión y causan daño al jugador al entrar en contacto con él reduciendo su barra de vida. El nivel termina con un jefe final que ataca a distancia disparando balas en línea recta, las cuales el jugador debe esquivar utilizando el salto y el movimiento lateral.
## **3. Mecánicas de Juego**
#### 3.1 Movimiento Del Jugador
Movimiento horizontal (izquierda y derecha)
Salto
Doble salto
#### 3.2 Vida del Jugador
El jugador tiene 3 vidas
Al colisionar con un enemigo pierde 1 vida
Al recibir un disparo  pierde 1 vida
Si la vida llega a 0 el jugador pierde la partida
#### 3.3 Enemigos
Enemigos básicos
Se encuentran repartidos por el camino
Tienen colisión
Al tocar al jugador le quitan 1 vida
Pueden estar quietos o moverse ligeramente

#### 3.4 Boss Final
Aparece al final del nivel
No se mueve del sitio
Ataca disparando balas 
Las balas se pueden esquivar saltando
Tiene una barra de vida

## **4. Obstáculos**
Pinchos
Huecos que obligan a saltar
Plataformas elevadas
## **5. Controles**
A / Flecha izquierda: Mover a la izquierda
D / Flecha derecha: Mover a la derecha
Espacio: Saltar
## **6. Interfaz **
Vidas del jugador
Barra de vida del boss 
Pantalla de Game Over
Pantalla de Victoria
## **7. Estilo Visual**
Gráficos 2D
Estilo simple / pixel art
## **8. Sonido**
Música de fondo 
Sonido al saltar
Sonido al recibir daño
