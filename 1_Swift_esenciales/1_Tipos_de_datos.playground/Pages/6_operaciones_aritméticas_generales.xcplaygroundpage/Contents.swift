//: [Previous](@previous)
/*:
 # Operaciones Aritméticas Generales en Swift
 ### Este Playground muestra cómo realizar operaciones aritméticas con diferentes tipos de números en Swift, incluyendo enteros y números de punto flotante. Se incluyen ejemplos de operaciones básicas y el manejo de desbordamientos.
*/
import UIKit
import Foundation
 // MARK: - Explicaciones Adicionales
/*:
### Swift proporciona operadores especiales para realizar operaciones aritméticas de forma segura, evitando desbordamientos en enteros. Estos operadores son:

- `&+` (suma con desbordamiento seguro): Realiza la suma de dos números enteros. Si el resultado excede el rango del tipo de dato, se "envuelve" alrededor del rango, es decir, se reinicia en el valor mínimo del tipo.
  
- `&-` (resta con desbordamiento seguro): Realiza la resta de dos números enteros. Al igual que la suma, si el resultado es menor que el valor mínimo que el tipo de dato puede manejar, se "envuelve" alrededor del rango, regresando al valor máximo.
  
- `&*` (multiplicación con desbordamiento seguro): Multiplica dos números enteros de manera segura, manejando el desbordamiento como en los otros operadores.

### Estos operadores son ideales para casos en los que se desea evitar errores por desbordamiento sin lanzar excepciones. Es una herramienta potente cuando se trabaja con valores que pueden sobrepasar los límites de un tipo de dato, como en cálculos de alto rendimiento o cuando se necesita un control muy preciso de la aritmética.
*/
// MARK: - Operaciones con UInt8
let largeNumberUInt8: UInt8 = 200
let smallNumberUInt8: UInt8 = 100

let sumUInt8 = largeNumberUInt8 &+ smallNumberUInt8
let subtractUInt8 = largeNumberUInt8 &- smallNumberUInt8
let multiplyUInt8 = largeNumberUInt8 &* smallNumberUInt8
let divideUInt8 = largeNumberUInt8 / 10
let moduloUInt8 = largeNumberUInt8 % 15

print("Suma (UInt8): \(sumUInt8)") // 44 (Desbordamiento)
print("Resta (UInt8): \(subtractUInt8)") // 100
print("Multiplicación (UInt8): \(multiplyUInt8)") // 25500 (Desbordamiento)
print("División (UInt8): \(divideUInt8)") // 20
print("Módulo (UInt8): \(moduloUInt8)") // 5

// MARK: - Operaciones con Int8
let negativeNumberInt8: Int8 = -50
let positiveNumberInt8: Int8 = 25

let sumInt8 = negativeNumberInt8 &+ positiveNumberInt8
let subtractInt8 = negativeNumberInt8 &- positiveNumberInt8
let multiplyInt8 = negativeNumberInt8 &* positiveNumberInt8
let divideInt8 = negativeNumberInt8 / 5
let moduloInt8 = negativeNumberInt8 % 7

print("Suma (Int8): \(sumInt8)") // -25
print("Resta (Int8): \(subtractInt8)") // -75
print("Multiplicación (Int8): \(multiplyInt8)") // -1250
print("División (Int8): \(divideInt8)") // -10
print("Módulo (Int8): \(moduloInt8)") // -1

// MARK: - Operaciones con Int16
let firstInt16: Int16 = 10_000
let secondInt16: Int16 = 15_000

let sumInt16 = firstInt16 &+ secondInt16
let subtractInt16 = firstInt16 &- secondInt16
let multiplyInt16 = firstInt16 &* secondInt16
let divideInt16 = firstInt16 / 2
let moduloInt16 = firstInt16 % 500

print("Suma (Int16): \(sumInt16)") // 25_000
print("Resta (Int16): \(subtractInt16)") // -5_000
print("Multiplicación (Int16): \(multiplyInt16)") // 150_000_000
print("División (Int16): \(divideInt16)") // 5_000
print("Módulo (Int16): \(moduloInt16)") // 0

// MARK: - Operaciones con Int32
let largeNumberInt32: Int32 = 1_000_000
let smallNumberInt32: Int32 = 2_000_000

let sumInt32 = largeNumberInt32 &+ smallNumberInt32
let subtractInt32 = largeNumberInt32 &- smallNumberInt32
let multiplyInt32 = largeNumberInt32 &* smallNumberInt32
let divideInt32 = largeNumberInt32 / 2
let moduloInt32 = largeNumberInt32 % 300_000

print("Suma (Int32): \(sumInt32)") // 3_000_000
print("Resta (Int32): \(subtractInt32)") // -1_000_000
print("Multiplicación (Int32): \(multiplyInt32)") // 2_000_000_000_000
print("División (Int32): \(divideInt32)") // 500_000
print("Módulo (Int32): \(moduloInt32)") // 100_000

// MARK: - Operaciones con Int64
let largeNumberInt64: Int64 = 1_000_000_000_000
let secondLargeNumberInt64: Int64 = 2_000_000_000_000

let sumInt64 = largeNumberInt64 &+ secondLargeNumberInt64
let subtractInt64 = largeNumberInt64 &- secondLargeNumberInt64
let multiplyInt64 = largeNumberInt64 &* secondLargeNumberInt64
let divideInt64 = largeNumberInt64 / 2
let moduloInt64 = largeNumberInt64 % 500_000_000_000

print("Suma (Int64): \(sumInt64)") // 3_000_000_000_000
print("Resta (Int64): \(subtractInt64)") // -1_000_000_000_000
print("Multiplicación (Int64): \(multiplyInt64)") // 2_000_000_000_000_000_000_000_000
print("División (Int64): \(divideInt64)") // 500_000_000_000
print("Módulo (Int64): \(moduloInt64)") // 0

// MARK: - Operaciones con Float y Double
let piFloat: Float = 3.14159
let eFloat: Float = 2.71828

let sumFloat = piFloat + eFloat
let subtractFloat = piFloat - eFloat
let multiplyFloat = piFloat * eFloat
let divideFloat = piFloat / eFloat

print("Suma (Float): \(sumFloat)") // 5.85987
print("Resta (Float): \(subtractFloat)") // 0.42331
print("Multiplicación (Float): \(multiplyFloat)") // 8.53973
print("División (Float): \(divideFloat)") // 1.15573

let piDouble: Double = 3.14159265358979
let eDouble: Double = 2.71828182845905

let sumDouble = piDouble + eDouble
let subtractDouble = piDouble - eDouble
let multiplyDouble = piDouble * eDouble
let divideDouble = piDouble / eDouble

print("Suma (Double): \(sumDouble)") // 5.85987448204884
print("Resta (Double): \(subtractDouble)") // 0.42331082513074
print("Multiplicación (Double): \(multiplyDouble)") // 8.53973422267357
print("División (Double): \(divideDouble)") // 1.15572734978208

// MARK: - Buenas Prácticas
/*:
1. **Uso de Operadores Seguros**:
   - Utiliza operadores como `&+`, `&-`, `&*` para evitar desbordamientos en enteros.
   - Asegúrate de que las operaciones no generen resultados inesperados.

2. **Selección de Tipos Adecuados**:
   - Elige el tipo numérico correcto (`Float`, `Double`, `Int8`, `Int64`, etc.) según los requerimientos del cálculo.
   
3. **Manejo de Desbordamientos**:
   - Utiliza las operaciones seguras cuando sea necesario para evitar errores por desbordamiento.
   
4. **Uso de Operaciones de Punto Flotante**:
   - Evita usar tipos de punto flotante (`Float` o `Double`) cuando la precisión de los cálculos no es crítica o si el rendimiento es una preocupación.
*/

//: [Next](@next)

