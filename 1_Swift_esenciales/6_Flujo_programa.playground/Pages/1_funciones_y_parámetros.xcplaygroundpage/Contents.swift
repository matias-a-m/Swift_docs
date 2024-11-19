//: [Previous](@previous)
import UIKit
/*:
 # Funciones y Parámetros en Swift

 ### Las funciones permiten agrupar operaciones en un bloque reutilizable. Son fundamentales para lograr modularidad y escalabilidad en el código.

 ## Objetivo:
 Aprender a definir funciones, utilizar múltiples parámetros, aplicar valores predeterminados, y manejar funciones como parámetros en Swift.

 */
// MARK: - Definición de Funciones
/*:
 La función `saludarUsuario` toma un parámetro `nombre` de tipo `String` y devuelve un saludo personalizado de tipo `String`.

 ### Consideraciones:
 - La función utiliza interpolación de cadenas para insertar el nombre en el saludo.
 - Retorna siempre un valor de tipo `String`, lo que garantiza la coherencia de la función.
 */

func saludarUsuario(nombre: String) -> String {
    // Retorna un saludo con interpolación del nombre
    return "¡Hola, \(nombre)! Bienvenido."
}

// Ejemplo de uso:
let saludo = saludarUsuario(nombre: "Matías")
print(saludo) // Imprime: ¡Hola, Matías! Bienvenido.

// MARK: - Funciones con Múltiples Parámetros
/*:
 Puedes definir funciones que acepten múltiples parámetros para realizar cálculos u operaciones más complejas.

 La siguiente función `sumar` recibe dos parámetros `a` y `b`, ambos de tipo `Int`, y devuelve su suma.
 
 ### Consideraciones:
 - Los parámetros son valores `Int` y la función garantiza que el tipo de retorno sea un entero.
 - Es una función pura que siempre produce el mismo resultado para los mismos valores de entrada.
 */

func sumar(a: Int, b: Int) -> Int {
    return a + b
}

// Ejemplo de uso:
let resultadoSuma = sumar(a: 5, b: 10)
print("La suma es: \(resultadoSuma)") // Imprime: La suma es: 15

// MARK: - Parámetros con Valores Predeterminados
/*:
 Los parámetros predeterminados permiten flexibilidad en las llamadas a funciones, reduciendo la cantidad de código cuando los valores por defecto son suficientes.

 La función `multiplicar` multiplica dos valores `Int`, con un valor predeterminado para el segundo parámetro.
 
 ### Consideraciones:
 - Si no se pasa el valor del segundo parámetro, el valor predeterminado será 2.
 - Se asegura que la multiplicación se lleve a cabo correctamente independientemente de si se proveen ambos parámetros.
 */

func multiplicar(a: Int, b: Int = 2) -> Int {
    return a * b
}

// Ejemplos de uso:
let multiplicacionPorDefecto = multiplicar(a: 5)   // Usa el valor predeterminado de `b`
let multiplicacionEspecificada = multiplicar(a: 5, b: 3)

print("Multiplicación por defecto: \(multiplicacionPorDefecto)") // Imprime: Multiplicación por defecto: 10
print("Multiplicación especificada: \(multiplicacionEspecificada)") // Imprime: Multiplicación especificada: 15

// MARK: - Funciones como Parámetros
/*:
 Las funciones pueden ser pasadas como parámetros a otras funciones, lo que permite escribir código flexible y reutilizable.

 La función `aplicarOperacion` toma dos valores `Int` y una función que realiza una operación sobre estos valores.
 
 ### Consideraciones:
 - Se utiliza una función de orden superior que recibe otra función como argumento.
 - Es una técnica fundamental para implementar comportamientos personalizados en código genérico.
 */

func aplicarOperacion(a: Int, b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}

// Usamos la función `sumar` como argumento para `aplicarOperacion`
let resultadoOperacion = aplicarOperacion(a: 10, b: 5, operacion: sumar)
print("Resultado de la operación: \(resultadoOperacion)") // Imprime: Resultado de la operación: 15

// MARK: - Funciones Anónimas (Closures)
/*:
 Las closures son funciones sin nombre que pueden ser definidas en el lugar donde se necesiten. Son útiles cuando no se necesita reutilizar la lógica en otros lugares del código.

 En este ejemplo, pasamos una closure que realiza la resta de dos valores como argumento a la función `aplicarOperacion`.

 ### Consideraciones:
 - Las closures pueden capturar y almacenar referencias a constantes y variables del contexto que las rodea.
 */

let restaClosure: (Int, Int) -> Int = { (a, b) in
    return a - b
}

let resultadoResta = aplicarOperacion(a: 10, b: 5, operacion: restaClosure)
print("Resultado de la resta: \(resultadoResta)") // Imprime: Resultado de la resta: 5

/*:
 ## Buenas Prácticas

 1. **Nombres Descriptivos**:
    - **Qué es**: Utiliza nombres claros y descriptivos para funciones y parámetros.
    - **Por qué es importante**: Mejora la legibilidad y comprensión del código, haciéndolo más fácil de mantener.
    - **Ejemplo**: Prefiere `calcularPromedio` sobre `avg`.

 2. **Modularidad**:
    - **Qué es**: Divide el código en funciones pequeñas y específicas.
    - **Por qué es importante**: Mejora la mantenibilidad y la capacidad de prueba del código.
    - **Ejemplo**: Crea funciones para tareas específicas como `obtenerEstudiantes` o `filtrarCalificaciones`.

 3. **Valores Predeterminados**:
    - **Qué es**: Usa parámetros con valores predeterminados para simplificar las llamadas a funciones.
    - **Por qué es importante**: Reduce la complejidad y previene errores al proporcionar valores por defecto razonables.
    - **Ejemplo**: Usa `nombre: String = "Desconocido"` en lugar de requerir siempre un valor explícito.

 */


//: [Next](@next)
