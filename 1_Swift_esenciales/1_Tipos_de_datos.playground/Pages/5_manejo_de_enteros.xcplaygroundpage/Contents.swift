//: [Previous](@previous)
/*:
 # Manejo de Enteros en Swift
### Este Playground explora cómo trabajar con enteros en Swift, incluyendo la declaración, operaciones, conversión, manejo de desbordamientos y buenas prácticas. Incluye ejemplos prácticos para el uso de enteros.
 */
import UIKit
// MARK: - Declaración de Enteros
/*:
 Swift ofrece varios tipos de enteros con diferentes tamaños y signos, desde enteros con signo (`Int`, `Int8`, `Int16`, etc.) hasta enteros sin signo (`UInt`, `UInt8`, `UInt16`, etc.). Es crucial seleccionar el tipo adecuado según el rango de valores que se espera manejar en la aplicación.
 */
let numeroInt: Int = 42 // Entero con signo
let numeroUInt: UInt = 42 // Entero sin signo
let numeroInt8: Int8 = 100 // Entero con signo de 8 bits
let numeroUInt8: UInt8 = 200 // Entero sin signo de 8 bits
let numeroInt16: Int16 = 30000 // Entero con signo de 16 bits
let numeroUInt16: UInt16 = 60000 // Entero sin signo de 16 bits
let numeroInt32: Int32 = 2000000000 // Entero con signo de 32 bits
let numeroUInt32: UInt32 = 4000000000 // Entero sin signo de 32 bits
let numeroInt64: Int64 = 9000000000000000000 // Entero con signo de 64 bits
let numeroUInt64: UInt64 = 18000000000000000000 // Entero sin signo de 64 bits

// Valores máximos y mínimos para cada tipo de entero
let maxInt: Int = Int.max
let minInt: Int = Int.min
let maxUInt: UInt = UInt.max
let minUInt: UInt = UInt.min // Siempre es 0

// Se imprimen los valores de cada tipo de entero
print("Número Int: \(numeroInt)")
print("Número UInt: \(numeroUInt)")
print("Número Int8: \(numeroInt8)")
print("Número UInt8: \(numeroUInt8)")
print("Número Int16: \(numeroInt16)")
print("Número UInt16: \(numeroUInt16)")
print("Número Int32: \(numeroInt32)")
print("Número UInt32: \(numeroUInt32)")
print("Número Int64: \(numeroInt64)")
print("Número UInt64: \(numeroUInt64)")

// Impresión de valores máximos y mínimos para una mejor comprensión
print("\nValores máximos y mínimos para cada tipo de entero:")
print("Máx Int: \(maxInt), Mín Int: \(minInt)")
print("Máx UInt: \(maxUInt), Mín UInt: \(minUInt)")

// MARK: - Operaciones Básicas con Enteros
/*:
 Las operaciones básicas con enteros incluyen la suma, resta, multiplicación, división y módulo. Es importante tener en cuenta el tipo de dato para evitar desbordamientos o errores de precisión.
 */

let a: Int = 10
let b: Int = 5

let suma = a + b // Suma
let diferencia = a - b // Resta
let multiplicacion = a * b // Multiplicación
let division = a / b // División
let modulo = a % b // Módulo (resto de la división)

print("\nOperaciones básicas con enteros:")
print("Suma: \(suma)")
print("Diferencia: \(diferencia)")
print("Multiplicación: \(multiplicacion)")
print("División: \(division)")
print("Módulo: \(modulo)")

// MARK: - Conversión entre Tipos de Enteros
/*:
 La conversión entre diferentes tipos de enteros debe realizarse cuidadosamente para evitar pérdida de datos. Utilizando el tipo más pequeño puede ocasionar desbordamientos si el número excede el límite.

 Swift proporciona `UInt()` y `Int()` para convertir entre enteros sin signo y con signo.
 */

let enteroInt: Int = 100
let enteroUInt: UInt = UInt(enteroInt) // Conversión segura

print("\nConversión de Int a UInt: \(enteroUInt)")

// MARK: - Manejo de Desbordamientos
/*:
 Swift permite manejar el desbordamiento de enteros de manera segura usando los métodos `addingReportingOverflow(_:)` y `subtractingReportingOverflow(_:)`, que informan si ha ocurrido un desbordamiento.
 */

let valorMaximo: Int = Int.max
let incremento: Int = 1

let resultadoSuma = valorMaximo.addingReportingOverflow(incremento) // Desbordamiento por suma
let resultadoResta = valorMaximo.subtractingReportingOverflow(incremento) // Desbordamiento por resta

print("\nResultado de la suma con desbordamiento:")
print("Valor parcial: \(resultadoSuma.partialValue), ¿Ocurrió desbordamiento? \(resultadoSuma.overflow)")

print("Resultado de la resta con desbordamiento:")
print("Valor parcial: \(resultadoResta.partialValue), ¿Ocurrió desbordamiento? \(resultadoResta.overflow)")

// MARK: - Comparaciones entre Enteros
/*:
 Las comparaciones entre enteros se realizan con los operadores estándar: `<`, `>`, `<=`, `>=`, `==`, y `!=`.
 */

let numero1: Int = 10
let numero2: Int = 20

print("\nComparación de enteros:")
if numero1 < numero2 {
    print("'\(numero1)' es menor que '\(numero2)'")
} else if numero1 > numero2 {
    print("'\(numero1)' es mayor que '\(numero2)'")
} else {
    print("'\(numero1)' es igual a '\(numero2)'")
}

// MARK: - Ejemplo de Uso en Funciones
/*:
 Las funciones que realizan cálculos utilizando enteros son comunes. En este ejemplo, calculamos el área de un rectángulo a partir de su ancho y altura.

 Se espera que el usuario entienda el valor de las operaciones que involucran enteros y cómo su uso adecuado puede generar un código más eficiente y seguro.
 */

func areaRectangulo(ancho: Int, altura: Int) -> Int {
    return ancho * altura // Área = ancho * altura
}

let anchoRectangulo = 10
let alturaRectangulo = 5
let area = areaRectangulo(ancho: anchoRectangulo, altura: alturaRectangulo)

print("\nÁrea del rectángulo: \(area)")

// MARK: - Buenas Prácticas
/*:
1. **Usar el Tipo Adecuado**: Asegúrate de usar el tipo de dato más adecuado para tus enteros. Si el rango de valores es grande y necesitas trabajar con números negativos, utiliza `Int`. Si solo necesitas trabajar con valores positivos, `UInt` puede ser más adecuado.
2. **Conversión Segura**: Evita la conversión forzada de tipos sin verificar que el rango de valores sea adecuado. Usa funciones como `UInt()` para convertir entre tipos.
3. **Manejo de Desbordamientos**: Utiliza métodos como `addingReportingOverflow` para detectar y manejar desbordamientos de forma adecuada, evitando errores críticos en la aplicación.
4. **Optimización y Legibilidad**: Realiza operaciones matemáticas de manera que el código sea legible y eficiente. Evita operaciones innecesarias y usa las herramientas del lenguaje para hacer el código más seguro y predecible.
*/

//: [Next](@next)

