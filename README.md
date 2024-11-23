# Mama Dino's Rescue

Este repositorio contiene el código fuente de un mini juego desarrollado en PSeint como parte de un trabajo freelance para un cliente universitario. El objetivo del proyecto era crear un juego simple que utilizara conceptos de algoritmia y estructuras de control en pseudocódigo, siguiendo los requerimientos de la asignatura del cliente.

El juego se centra en un dinosaurio (Mama Dino) que debe responder preguntas de matemáticas simples para avanzar y rescatar su huevo caído sin equivocarse al contestar para evitar que un meteoro caiga y explote.

## Descripción del Proyecto

**Mama Dino's Rescue** está desarrollado en PSeint y utiliza una serie de estructuras de control (condicionales, bucles) para gestionar la interacción con el usuario y el movimiento del dinosaurio. El jugador debe responder correctamente preguntas matemáticas para hacer que el dinosaurio avance y rescatar su huevo.

## Objetivos del Juego

- Responder correctamente a las preguntas matemáticas para hacer avanzar al dinosaurio.
- Evitar que el meteorito caiga y destruya todo.
- Avanzar hasta el huevo para completar el juego.

## Características Principales

- **Interactividad con el usuario**: El jugador debe responder preguntas de matemáticas sencillas para mover al dinosaurio.
- **Gráficos simples en consola**: El dinosaurio y el huevo son representados mediante arte ASCII que se mueve de acuerdo con las respuestas correctas.
- **Preguntas aleatorias**: Las preguntas se seleccionan al azar de un conjunto de preguntas predefinidas.
- **Lógica de avance y retroceso**: El dinosaurio avanza al responder correctamente, y retrocede si la respuesta es incorrecta.

## Requisitos

- PSeint (versión recomendada 4.0 o superior).
- Conocimientos básicos de pseudocódigo y estructuras de control (condicionales, bucles).

## Instrucciones para Ejecutar el Juego

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/SntgRM/game-pseint.git
    ```

2. Abre el archivo `main.psc` con el entorno de PSeint.
3. Ejecuta el código desde PSeint para comenzar a jugar.

## Funcionamiento del Juego

- El juego empieza mostrando el dinosaurio y el huevo en posiciones predeterminadas en la pantalla.
- El jugador debe responder correctamente a preguntas matemáticas simples para hacer avanzar al dinosaurio.
- Si el jugador responde incorrectamente, el dinosaurio retrocederá y perderá uno de sus tres intentos.
- Si el dinosaurio llega al huevo, el juego muestra una pantalla de victoria.
- Si los intentos se acaban, el juego terminará y el jugador podrá ver una pequeña cinemática donde un meteoro cae y explota.

## Código Fuente

El código está organizado de la siguiente manera:

- **Arte ASCII** para representar el dinosaurio, el huevo, el meteoro y la explosión.
- **Preguntas y respuestas** almacenadas en arreglos para ser seleccionadas aleatoriamente.
- **Condicionales y bucles** que controlan la lógica del juego.
