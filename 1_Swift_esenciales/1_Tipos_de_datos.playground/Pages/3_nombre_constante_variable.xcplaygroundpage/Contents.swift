//: [Previous](@previous)
//: # Nomenclatura y Declaración de Variables y Constantes en Swift
//: Este Playground presenta las mejores prácticas para la nomenclatura y declaración de variables y constantes en Swift, utilizando convenciones para mejorar la claridad y mantenibilidad del código.

import UIKit

// MARK: - Convenciones de Nomenclatura
/*:
 - **Variables**: Usar `camelCase`, comenzando con minúscula y separando palabras con mayúsculas. Ejemplo: `temperaturaActual`.
 - **Constantes**: En Swift, también se recomienda `camelCase` para constantes, comenzando con minúscula. Ejemplo: `velocidadDeLaLuz`.
 */

// MARK: - Declaración de Constantes
/*:
 Las constantes no cambian su valor después de la asignación inicial y se declaran con `let`.
 */

let velocidadDeLaLuz: Double = 299_792_458.0 // Velocidad de la luz en metros por segundo
let valorDePi: Double = 3.14159265359 // Valor de π

print("La velocidad de la luz es \(velocidadDeLaLuz) m/s")
print("El valor de π es \(valorDePi)")

// MARK: - Declaración de Variables
/*:
 Las variables pueden cambiar durante la ejecución del programa y se declaran con `var`.
 */

var temperaturaActual: Double = 20.0 // Temperatura en grados Celsius
var edadPersona: Int = 25 // Edad en años

// Actualización de las variables
temperaturaActual += 5.0
edadPersona += 1

print("La temperatura actual es \(temperaturaActual) grados Celsius")
print("La edad actual de la persona es \(edadPersona) años")

// MARK: - Ejemplos de Nombres Descriptivos
/*:
 Los nombres claros y descriptivos mejoran la legibilidad del código y evitan confusiones.
 */

let ventasTotales: Double = 1500.0 // Total de ventas en la tienda
let descuentoAplicado: Double = 0.1 // Descuento aplicado (10%)
let ventasTotalesConDescuento = ventasTotales * (1 - descuentoAplicado)
print("El total de ventas con descuento es \(ventasTotalesConDescuento)")

// Ejemplo con otras variables y constantes
var cantidadArticulos: Int = 100 // Número de artículos en inventario
let fechaDeNacimiento: String = "1995-06-15" // Fecha de nacimiento

print("Número total de artículos en inventario: \(cantidadArticulos)")
print("Fecha de nacimiento: \(fechaDeNacimiento)")

// MARK: - Convenciones para Siglas y Prefijos
/*:
 En Swift, las siglas como "HTTP" o "URL" se escriben en mayúsculas, pero deben integrarse en `camelCase` si se usan en variables o constantes, para alinearse con las convenciones.
 */

let codigoEstadoHTTP: Int = 404
let tiempoEsperaURLSession: Double = 60.0

print("Código de estado HTTP: \(codigoEstadoHTTP)")
print("Tiempo de espera de la sesión URL: \(tiempoEsperaURLSession) segundos")

// MARK: - Consideraciones Finales
/*:
 1. **Nombres Descriptivos**: Usa nombres que expliquen claramente el propósito de la variable o constante. Ejemplo: `temperaturaActual` en lugar de `temp`.
 2. **Uso de CamelCase**: Las variables y constantes deben seguir `camelCase`, comenzando con minúscula y utilizando mayúsculas para separar palabras.
 3. **Evitar Abreviaciones**: Prefiere nombres completos para mayor claridad, como `edadPersona` en lugar de `edad`.
 */
//: [Next](@next)
