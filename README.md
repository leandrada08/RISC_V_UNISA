
# Proyecto CPU ISA RISC-V  con bloque DSP(32 bits)

Este proyecto es una implementación de un CPU basado en la arquitectura **RISC-V** de 32 bits, desarrollado utilizando la técnica de **pipeline** con 5 etapas. El código fue escrito en **Verilog** y **SystemVerilog**, y se utilizó la herramienta **Vivado** para la síntesis y simulación.
Tambien se realizo un bloque DSP bastante simple que solo realiza algunas operaciones vectoriales.

# CPU
## Descripción

Este CPU fue diseñado para soportar un subconjunto de las instrucciones de RISC-V, con un enfoque en la modularidad y la reutilización de componentes comunes. Las 5 etapas del pipeline son:

1. **Fetch**: Captura la instrucción desde la memoria.
2. **Decode**: Decodifica la instrucción y lee los registros.
3. **Execute**: Realiza las operaciones aritméticas y lógicas.
4. **Memory**: Accede a la memoria en caso de ser necesario (cargas y almacenes).
5. **Write-back**: Escribe los resultados de vuelta en los registros.

### Instrucciones soportadas

#### Shift
- SLL, SLLI, SRL, SRLI, SRA, SRAI

#### Aritmética
- ADD, ADDI, SUB, LUI, AUIPC

#### Lógica
- XOR, XORI, OR, ORI, AND, ANDI

#### Comparación
- SLT, SLTI, SLTU, SLTIU

#### Branches
- BEQ, BNE, BLT, BGE, BLTU, BGEU

#### Loads
- LW

#### Store
- SW

## Requisitos

- **Vivado**: Para la síntesis y simulación del CPU.
- **Verilog/SystemVerilog**: Lenguaje en el que está escrito el código.

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

- `fetch/`: Código relacionado con la etapa de fetch.
- `decode/`: Implementación de la etapa de decodificación.
- `execute/`: Contiene los módulos de las operaciones aritméticas, lógicas y de comparación.
- `memory/`: Etapa de acceso a la memoria.
- `writeback/`: Manejo de la escritura de resultados en los registros.
- `common/`: Módulos y componentes comunes reutilizados en varias etapas del pipeline.


## Pruebas

El diseño y pruebas del proyecto fueron realizadas con TDD para ayduar en la escritura del proyecto y para simplificar la tarea de analisis de señales temporales en vivado.



## Licencia

Este proyecto es de código abierto bajo la **Licencia MIT**. Esto significa que puedes usar, modificar y distribuir este código sin restricciones, siempre y cuando des crédito al autor original.

# Descripcion completa
Si buscas una descripcion teorica y practica mas completa de como se hizo esto podes hacerlo en mi pagina web: https://leandrada08.github.io/SocialLuis/Notas-Silo/Proyectos/CPU-ISA-RISC-V-+-DSP-Digitali-UNISA