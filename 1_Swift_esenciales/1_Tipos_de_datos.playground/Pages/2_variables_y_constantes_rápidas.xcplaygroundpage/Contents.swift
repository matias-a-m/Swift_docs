//: [Previous](@previous)
/*:
 # Variables y Constantes en Swift
 Este Playground explora cómo declarar y utilizar variables y constantes en Swift, desde su declaración básica hasta conceptos avanzados.
 */
import UIKit

// MARK: - Declaración de Variables y Constantes
/*:
 - **Variables** (`var`): Se pueden modificar durante la ejecución del programa.
 - **Constantes** (`let`): Su valor no puede cambiar después de ser asignado.
 */

var temperaturaActual: Double = 25.0 // Variable que puede cambiar
let constantePi: Double = 3.14159 // Constante que no cambia

print("Temperatura actual: \(temperaturaActual)")
print("Constante π: \(constantePi)")

// MARK: - Inferencia de Tipos
/*:
 Swift infiere el tipo de una variable basado en su valor, lo que simplifica la declaración.
 */

var edad = 30 // Inferido como Int
let altura = 1.75 // Inferido como Double

print("Edad: \(edad)")
print("Altura: \(altura)")

// MARK: - Optionals
/*:
 Los **Optionals** (`?`) permiten representar valores que pueden ser `nil`, es decir, que pueden no estar presentes.
 */

var nombre: String? = nil

func procesarNombre() {
    // Usamos `guard` para desempaquetar el optional de manera segura
    guard let nombreDesempaquetado = nombre else {
        print("El nombre es nil, no se puede procesar.")
        return
    }
    
    print("Nombre procesado: \(nombreDesempaquetado)")
}

procesarNombre()
// Actualizo el valor de la variable asignando un valor y vuelvo a desempaquetar la variable opcional.
nombre = "Matías"
procesarNombre()

// MARK: - Convenciones de Nombres
/*:
 - **Variables**: Usa nombres descriptivos como `temperaturaActual`, `distanciaRecorrida`.
 - **Constantes**: Se suelen escribir en mayúsculas (por ejemplo, `PI`, `GRAVEDAD`), pero en funciones o clases se puede usar `camelCase` (por ejemplo, `constantePi`).
 */

// MARK: - Declaración Múltiple
/*:
 Puedes declarar varias variables o constantes en una sola línea para hacer el código más compacto.
 */

var x = 10, y = 20
let a = 5, b = 15

print("Valores de x y y: \(x), \(y)")
print("Valores de a y b: \(a), \(b)")

// MARK: - Ejemplo Avanzado: Cálculos Matemáticos
/*:
 A continuación se realiza un cálculo matemático usando constantes y variables.
 */

let radioDelCírculo: Double = 5.0
let áreaDelCírculo = constantePi * pow(radioDelCírculo, 2) // Cálculo del área de un círculo
print("Área de un círculo con radio \(radioDelCírculo): \(áreaDelCírculo)")

// Reasignación de variables
temperaturaActual = 30.0 // Actualización de la temperatura
print("Nueva temperatura: \(temperaturaActual)")

// MARK: - Consideraciones
/*:
 - **Constantes** (`let`): Son ideales para valores que no deben cambiar, mejorando la seguridad y legibilidad del código.
 - **Variables** (`var`): Usadas para valores que necesitan ser modificados durante la ejecución.
 */

//: [Next](@next)

