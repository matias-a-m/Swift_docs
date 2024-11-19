//: [Previous](@previous)
/*:
 # Booleanos en Swift
 ### Este Playground explora el uso de booleanos (`Bool`) en Swift. Los booleanos son un tipo de dato que solo puede representar dos valores: `true` (verdadero) o `false` (falso). Este tipo es esencial para crear estructuras de control como condicionales (`if`, `else`) y bucles (`while`, `for`).
 */
import UIKit
// MARK: - Declaración de Booleanos
/*:
 Veamos cómo declarar una variable booleana y asignarle un valor.
 */

// Declaración de booleanos
let usuarioActivo: Bool = true // El usuario está activo
let haIniciadoSesion: Bool = true  // El usuario ha iniciado sesión

// MARK: - Operadores Lógicos
/*:
 Los operadores lógicos nos permiten realizar operaciones sobre valores booleanos.
 
 ### Negación (`!`)
 
 El operador de negación invierte el valor de un booleano, es decir, convierte `true` en `false` y viceversa.
 */

// Negación del valor de `usuarioActivo`
let usuarioActivoNegado = !usuarioActivo
print("El valor negado de usuarioActivo es \(usuarioActivoNegado)") // False

// MARK: - Operador AND (`&&`)
/*:
 El operador `&&` devuelve `true` únicamente si **ambos** operandos son `true`. Si alguno de los dos es `false`, el resultado será `false`.
 */

// Verificamos si el usuario está activo y ha iniciado sesión
let puedeAcceder = usuarioActivo && haIniciadoSesion
print("¿Puede el usuario acceder?: \(puedeAcceder)") // True

// MARK: - Operador OR (`||`)
/*:
 El operador `||` devuelve `true` si **al menos uno** de los operandos es `true`. Si ambos son `false`, entonces el resultado será `false`.
 */

// Verificamos si el usuario es administrador o tiene permisos de acceso
let esAdmin = false
let tienePermiso = esAdmin || haIniciadoSesion
print("¿El usuario tiene permisos?: \(tienePermiso)") // True

// MARK: - Comparación de Valores
/*:
 Los booleanos son útiles en comparaciones para verificar si una expresión es `true` o `false`.
 
 ### Comparadores:
 - `==` : Igual a
 - `!=` : Distinto de
 - `<`  : Menor que
 - `>`  : Mayor que
 - `<=` : Menor o igual que
 - `>=` : Mayor o igual que
 
 Ejemplo:
 */

// Verificamos si el usuario es mayor de edad
let edadUsuario = 18
let esAdulto = edadUsuario >= 18
print("¿Es el usuario adulto?: \(esAdulto)") // True

// MARK: - Condicionales con Booleanos
/*:
 Los booleanos son fundamentales en estructuras de control como `if-else`, permitiéndonos tomar decisiones en el código según ciertos criterios.
 */

// Condicional que usa valores booleanos para determinar el estado del usuario
if usuarioActivo && haIniciadoSesion {
    print("El usuario está activo y ha iniciado sesión.")
} else if usuarioActivo {
    print("El usuario está activo, pero no ha iniciado sesión.")
} else {
    print("El usuario no está activo.")
}

// MARK: - Bucles y Booleanos
/*:
 Los booleanos también se utilizan en bucles. Por ejemplo, el bucle `while` se ejecutará siempre que la condición sea `true`.
 */

// Bucle que se ejecuta mientras `intentos` sea menor que 3
var intentos = 0
while intentos < 3 {
    print("Intento \(intentos + 1)") // Muestra el intento actual
    intentos += 1
}

// MARK: - Recomendaciones
/*:
 1. **Nombres Claros:** Utiliza nombres de variables booleanas que describan claramente su propósito, como `usuarioActivo` o `haIniciadoSesion`.
 2. **Evita Redundancias:** No escribas expresiones redundantes como `if esVerdadero == true`. Simplemente usa `if esVerdadero`.
 3. **Manejo de Negaciones:** Usa negaciones con cuidado para evitar confusión. Por ejemplo, en lugar de `!esVisible`, considera usar `esOculto` para mayor claridad.
 */
//: [Next](@next)

