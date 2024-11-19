//: [Previous](@previous)
/*:
 # Desbordamientos en el Desarrollo de Apps iOS
 ### Este Playground explora cómo los desbordamientos pueden afectar el desarrollo de aplicaciones iOS y cómo manejarlos adecuadamente. Veremos ejemplos prácticos en diferentes contextos, como la manipulación de datos, procesamiento de imágenes y cálculos de rendimiento.
 */
import UIKit
import Foundation

// MARK: -  Desbordamientos en Interfaces de Usuario
/*:
 Las interfaces de usuario pueden estar sujetas a desbordamientos si no se maneja adecuadamente el tamaño de las variables. A continuación, mostramos un ejemplo con el cálculo del tamaño de una vista en función de su posición en la pantalla.
 */

// Definimos las constantes del ancho de la pantalla y la vista
let widthScreen: Int32 = 1_920 // Ancho de la pantalla en píxeles
let widthView: Int32 = 2_000 // Ancho de una vista

// Aquí ocurre un desbordamiento, ya que el ancho de la vista excede el ancho de la pantalla
let widthViewExcess = widthView - widthScreen
print("Exceso de ancho de la vista: \(widthViewExcess)") // Resultado esperado: -80 (desbordamiento)

// Para evitar esto, aseguramos que los cálculos de tamaño no excedan los límites esperados
// Usamos min() para asegurarnos de que el ancho de la vista no exceda el de la pantalla
let widthViewCorrected = min(widthView, widthScreen)
print("Ancho corregido de la vista: \(widthViewCorrected)") // Resultado esperado: 1_920

// MARK: - Procesamiento de Imágenes
/*:
 El procesamiento de imágenes puede involucrar operaciones aritméticas con valores de píxeles. Veamos un ejemplo de cómo el desbordamiento puede ocurrir durante la manipulación de valores de color.

 El valor de un píxel normalmente está entre 0 y 255 (UInt8). Si sumamos un valor que excede 255, obtenemos un desbordamiento.
 */

// Definimos el valor máximo posible de un píxel (UInt8) y el incremento de color
let valuePixelMax: UInt8 = 255
let incrementColor: UInt8 = 10

// Desbordamiento de valor de píxel (255 + 10)
let newPixelValue = valuePixelMax &+ incrementColor
print("Nuevo valor del píxel (con desbordamiento): \(newPixelValue)") // Resultado esperado: 9 (desbordamiento)


// Para evitar el desbordamiento, se debe corregir el valor de la siguiente manera:
let newPixelValueFixed = min(UInt8.max, valuePixelMax &+ incrementColor)
print("Nuevo valor del píxel corregido: \(newPixelValueFixed)") // Resultado esperado: 255

// MARK: - Cálculos de Rendimiento
/*:
 En aplicaciones que requieren cálculos de alto rendimiento, como el procesamiento de datos o cálculos matemáticos complejos, los desbordamientos pueden afectar la precisión y el rendimiento.

 A continuación, realizamos una multiplicación de un número muy grande.
 */

// Definimos un valor muy grande y un multiplicador
let valueLarge: Int64 = 1_000_000_000
let multiplier: Int64 = 1_000

// Multiplicación sin desbordamiento usando el operador seguro '&*'
let resultMultiplication = valueLarge &* multiplier
print("Resultado de la multiplicación sin desbordamiento: \(resultMultiplication)") // Resultado esperado: 1_000_000_000_000

// MARK: - Manejo de Desbordamientos en Aplicaciones iOS
/*:
 1. **Validación de Datos de Entrada**:
    - **Qué es**: Asegúrate de que los datos de entrada, como las dimensiones de la interfaz de usuario o valores de color, estén dentro de los límites esperados antes de realizar operaciones.
    - **Por qué es importante**: Previene errores y comportamientos inesperados en la interfaz de usuario o durante el procesamiento de datos.
    - **Ejemplo**: Usa `min` y `max` para ajustar los valores a los límites permitidos.

 2. **Uso de Operadores Seguros**:
    - **Qué es**: Utiliza operadores aritméticos seguros como `&+`, `&-`, `&*` para evitar desbordamientos en cálculos.
    - **Por qué es importante**: Asegura que las operaciones se realicen sin errores de desbordamiento, especialmente en cálculos críticos.
    - **Ejemplo**: Usa `&+` para sumar valores de `UInt8` para evitar el desbordamiento.

 3. **Pruebas y Validación**:
    - **Qué es**: Implementa pruebas para verificar que los cálculos y la manipulación de datos en tu aplicación no causen desbordamientos.
    - **Por qué es importante**: Asegura que tu aplicación maneje correctamente los límites y errores potenciales.
    - **Ejemplo**: Escribe pruebas unitarias para validar el comportamiento de los cálculos y ajustes de tamaño.
 */

//: [Next](@next)
