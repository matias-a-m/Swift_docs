//: [Previous](@previous)
/*:
 # Variables Opcionales y Vinculación Opcional en Swift
 ### En Swift, las variables opcionales (**Optionals**) permiten manejar la ausencia de un valor, lo cual es útil en situaciones donde no se garantiza que una variable tenga un valor. Para trabajar de manera segura con estas variables, se utilizan técnicas como la **Vinculación Opcional**.
 */
import UIKit
// MARK: - ¿Qué es un Opcional?
/*:
 Un **Opcional** es un tipo de dato que puede contener un valor o ser `nil` (ausencia de valor). Se define agregando un signo de interrogación (`?`) después del tipo de dato. Los opcionales ayudan a manejar situaciones en las que la ausencia de un valor es válida.
 */
var primerNombre: String? = "Ana"  // Variable opcional con un valor
var apellido: String? = nil        // Variable opcional sin valor (nil)
/*:
 La variable `primerNombre` contiene un valor, pero también podría ser `nil`. En cambio, `apellido` no tiene valor asociado, así que es `nil`.
 */

// MARK: - Vinculación Opcional: Acceso Seguro a Opcionales
/*:
 La **Vinculación Opcional** permite desempaquetar un opcional de forma segura, es decir, acceder a su valor solo si no es `nil`. Esto evita errores en tiempo de ejecución, a diferencia del desempaquetado forzado (`!`), que puede producir fallos si el valor es `nil`.
 */

// Acceso seguro al valor de `primerNombre` usando `if let`
if let nombreDesempaquetado = primerNombre {
    print("Primer nombre: \(nombreDesempaquetado)")  // Desempaqueta y usa el valor si no es nil
} else {
    print("El primer nombre es nil")  // Si es nil, se maneja de manera segura
}

// MARK: - Evitar el Desempaquetado Forzado
/*:
 El desempaquetado forzado (`!`) es arriesgado, ya que produce errores si el valor es `nil`. Es recomendable usar **Vinculación Opcional** o `guard let` en lugar de forzar el desempaquetado.
 */
// Intentar forzar un opcional sin verificación puede causar un fallo en ejecución
// let apellidoForzado = apellido! // Esto causaría un error porque apellido es nil

// MARK: - Desempaquetado de Múltiples Opcionales
/*:
 Es posible desempaquetar varios opcionales al mismo tiempo con `if let`, lo cual permite verificar y acceder a múltiples variables opcionales en una sola expresión.
 */
 
// Desempaquetado de dos opcionales al mismo tiempo
if let nombreDesempaquetado = primerNombre, let apellidoDesempaquetado = apellido {
    print("Nombre completo: \(nombreDesempaquetado) \(apellidoDesempaquetado)")  // Ambas deben tener valor
} else {
    print("Uno o ambos valores son nil")  // Si alguno es nil, se maneja adecuadamente
}

// MARK: - Uso de `guard let`
/*:
 `guard let` es útil cuando deseas asegurarte de que un opcional tiene un valor antes de continuar con el código. Si la condición no se cumple, se debe salir de la función inmediatamente.
 */
func mostrarNombreCompleto(primerNombre: String?, apellido: String?) {
    guard let nombreDesempaquetado = primerNombre else {
        print("El primer nombre es nil")  // Si `primerNombre` es nil, se sale de la función
        return
    }

    guard let apellidoDesempaquetado = apellido else {
        print("El apellido es nil")  // Si `apellido` es nil, se sale de la función
        return
    }

    // Si ambos valores son no-nil, se imprime el nombre completo
    print("Nombre completo: \(nombreDesempaquetado) \(apellidoDesempaquetado)")
}

// Ejemplos de uso
mostrarNombreCompleto(primerNombre: "Carlos", apellido: "García")
mostrarNombreCompleto(primerNombre: nil, apellido: "García")

// MARK: - Operador de Coalescencia Nula (`??`)
/*:
 El operador de coalescencia nula (`??`) permite proporcionar un valor predeterminado en caso de que el opcional sea `nil`. Esto es útil cuando se quiere garantizar que el valor tenga un valor definido.
 */

// Uso del operador de coalescencia nula para proporcionar un valor por defecto
let primerNombreOpcional: String? = nil
let nombrePredeterminado = primerNombreOpcional ?? "Sin Nombre"  // Si es nil, se asigna el valor por defecto
print("Primer nombre: \(nombrePredeterminado)")  // Imprime "Sin Nombre"

// MARK: - Buenas Prácticas con Opcionales
/*:
 Aquí tienes algunas buenas prácticas al trabajar con opcionales en Swift:

 1. **Evita el Desempaquetado Forzado:** Utiliza siempre **Vinculación Opcional** o **guard let** para evitar errores en tiempo de ejecución relacionados con valores `nil`.
 2. **Manejo Seguro de Opcionales:** Utiliza el operador de coalescencia nula (`??`) para establecer un valor por defecto en caso de que el opcional sea `nil`.
 3. **Uso de `guard let`:** Usa `guard let` para asegurar que un opcional tiene un valor antes de continuar con el flujo del código. Esto mejora la legibilidad y evita anidar código innecesariamente.

 Siguiendo estas prácticas, puedes evitar errores comunes y mejorar la calidad y seguridad de tu código cuando trabajas con opcionales.
 */

//: [Next](@next)

