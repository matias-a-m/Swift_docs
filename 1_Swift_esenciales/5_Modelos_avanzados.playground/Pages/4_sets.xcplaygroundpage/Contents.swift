//: [Previous](@previous)
import UIKit
/*:
 # Introducción a los Conjuntos en Swift

 En Swift, un **conjunto** (`Set`) es una colección desordenada de elementos únicos. Los conjuntos son útiles para almacenar datos sin duplicados y realizar operaciones matemáticas como unión, intersección y diferencia.

 ## Creación de Conjuntos

 Puedes crear un conjunto vacío o con valores iniciales.
 */

// MARK: - Creación de Conjuntos
var frutasUnicas: Set<String> = ["Apple", "Banana", "Cherry"]
print("Conjunto de frutas: \(frutasUnicas)")

// MARK: - Propiedades y Métodos de Conjuntos
/*:
 Los conjuntos tienen propiedades y métodos para gestionar y realizar operaciones sobre los datos que contienen.
 */

print("Número de frutas en el conjunto: \(frutasUnicas.count)")

// Agregar elementos
frutasUnicas.insert("Mango")
print("Conjunto de frutas después de agregar Mango: \(frutasUnicas)")

// Eliminar un elemento
frutasUnicas.remove("Banana")
print("Conjunto de frutas después de eliminar Banana: \(frutasUnicas)")

// Verificar si un conjunto contiene un elemento
if frutasUnicas.contains("Cherry") {
    print("El conjunto contiene Cherry")
}


// MARK: - Operaciones con Conjuntos
/*:
 Los conjuntos permiten realizar varias operaciones matemáticas, como unión, intersección y diferencia.
 */

// Unión
var conjuntoA: Set<Int> = [1, 2, 3, 4]
var conjuntoB: Set<Int> = [3, 4, 5, 6]
let unionConjuntos = conjuntoA.union(conjuntoB)
print("Unión de conjuntos: \(unionConjuntos)")

// Intersección
let interseccionConjuntos = conjuntoA.intersection(conjuntoB)
print("Intersección de conjuntos: \(interseccionConjuntos)")

// Diferencia
let diferenciaConjuntos = conjuntoA.subtracting(conjuntoB)
print("Diferencia entre conjuntos: \(diferenciaConjuntos)")

// MARK: - Ejemplo Realista en una Aplicación
/*:
 Imagina que estás desarrollando una aplicación para gestionar usuarios. Puedes usar conjuntos para almacenar identificadores únicos de usuarios y evitar duplicados.
 */

// Set de identificadores de usuarios únicos
var usuariosUnicos: Set<String> = ["user123", "user456", "user789"]

// Agregar un nuevo usuario
usuariosUnicos.insert("user101")
print("Conjunto de usuarios únicos: \(usuariosUnicos)")

// Eliminar un usuario
usuariosUnicos.remove("user456")
print("Conjunto de usuarios después de eliminar un usuario: \(usuariosUnicos)")

// MARK: - Buenas Prácticas
/*:
 ## Buenas Prácticas

 1. **Evitar Duplicados**:
    - **Qué es**: Usa conjuntos para almacenar elementos únicos y evitar duplicados.
    - **Por qué es importante**: Garantiza la integridad de los datos y evita errores por datos repetidos.
    - **Ejemplo**: Usa un conjunto para gestionar identificadores únicos de usuarios.

 2. **Operaciones Matemáticas**:
    - **Qué es**: Utiliza operaciones de conjunto para realizar cálculos y combinaciones de datos.
    - **Por qué es importante**: Facilita la manipulación de datos y proporciona soluciones eficientes para problemas comunes.
    - **Ejemplo**: Usa `union` para combinar datos y `intersection` para encontrar elementos comunes.

 3. **Acceso y Manipulación de Datos**:
    - **Qué es**: Usa los métodos adecuados para agregar, eliminar y verificar elementos en un conjunto.
    - **Por qué es importante**: Optimiza la gestión de datos y asegura que las operaciones sean rápidas y efectivas.
    - **Ejemplo**: Usa `insert` para agregar elementos y `remove` para eliminarlos.
*/

//: [Next](@next)
