//: [Previous](@previous)
import UIKit
/*:
 # Trabajando con Conjuntos en Swift

 Este Playground muestra cómo trabajar con conjuntos en Swift, cubriendo operaciones básicas como adición, eliminación, y cómo realizar operaciones avanzadas como unión e intersección.

 ## Creación de un Conjunto

 Puedes crear un conjunto utilizando corchetes `[]` y especificando el tipo de datos. Aquí se muestra cómo crear y mostrar un conjunto de números enteros.
 */

var numeros: Set<Int> = [1, 2, 3, 4, 5]
print("Conjunto inicial de números: \(numeros)")

// MARK: - Adición y Eliminación de Elementos
/*:
 Los métodos `insert` y `remove` permiten agregar y eliminar elementos en un conjunto.
 */

// Agregar un nuevo elemento al conjunto
numeros.insert(6)
print("Conjunto después de agregar 6: \(numeros)")

// Intentar agregar un elemento existente (sin efecto en el conjunto)
numeros.insert(2)
print("Conjunto después de intentar agregar 2 de nuevo: \(numeros)")

// Eliminar un elemento del conjunto
numeros.remove(3)
print("Conjunto después de eliminar 3: \(numeros)")

// Intentar eliminar un elemento que no existe (sin efecto)
numeros.remove(10)
print("Conjunto después de intentar eliminar 10 (no existente): \(numeros)")

// MARK: - Operaciones Básicas con Conjuntos
/*:
 Los conjuntos permiten realizar operaciones como unión, intersección, y diferencia.
 */

// Crear otro conjunto para operaciones
let otrosNumeros: Set<Int> = [4, 5, 6, 7, 8]

// Unión de conjuntos: todos los elementos únicos de ambos conjuntos
let unionConjuntos = numeros.union(otrosNumeros)
print("Unión de conjuntos: \(unionConjuntos)")

// Intersección de conjuntos: elementos comunes entre los conjuntos
let interseccionConjuntos = numeros.intersection(otrosNumeros)
print("Intersección de conjuntos: \(interseccionConjuntos)")

// Diferencia de conjuntos: elementos en el primer conjunto pero no en el segundo
let diferenciaConjuntos = numeros.subtracting(otrosNumeros)
print("Diferencia de conjuntos: \(diferenciaConjuntos)")

// Diferencia simétrica de conjuntos: elementos en uno u otro, pero no en ambos
let diferenciaSimetricaConjuntos = numeros.symmetricDifference(otrosNumeros)
print("Diferencia simétrica de conjuntos: \(diferenciaSimetricaConjuntos)")

// MARK: - Verificación de Contenido
/*:
 Puedes verificar si un conjunto contiene un elemento usando el método `contains`.
 */

let contieneElCuatro = numeros.contains(4)
print("El conjunto contiene el número 4: \(contieneElCuatro)")

let contieneElOcho = numeros.contains(8)
print("El conjunto contiene el número 8: \(contieneElOcho)")

// MARK: - Iteración sobre Conjuntos
/*:
 Puedes iterar sobre los elementos de un conjunto utilizando un bucle `for-in`.
 */

print("Iterando sobre el conjunto:")
for numero in numeros {
    print("Número: \(numero)")
}

// MARK: - Ejemplo Realista en una Aplicación
/*:
 Supongamos que estás desarrollando una aplicación para gestionar usuarios en un grupo y necesitas realizar operaciones sobre conjuntos de usuarios.
 */

// Definición de conjuntos de usuarios activos e inactivos
var usuariosActivos: Set<String> = ["Alice", "Bob", "Charlie"]
var usuariosInactivos: Set<String> = ["David", "Eve", "Alice"]

// Unión de usuarios activos e inactivos
let todosUsuarios = usuariosActivos.union(usuariosInactivos)
print("Todos los usuarios: \(todosUsuarios)")

// Usuarios que están activos e inactivos al mismo tiempo
let usuariosComunes = usuariosActivos.intersection(usuariosInactivos)
print("Usuarios que están activos e inactivos al mismo tiempo: \(usuariosComunes)")

// Usuarios que están activos pero no inactivos
let usuariosSoloActivos = usuariosActivos.subtracting(usuariosInactivos)
print("Usuarios que solo están activos: \(usuariosSoloActivos)")

// Usuarios que están en uno u otro grupo, pero no en ambos
let usuariosUnicos = usuariosActivos.symmetricDifference(usuariosInactivos)
print("Usuarios únicos de un grupo o el otro: \(usuariosUnicos)")

// MARK: - Buenas Prácticas
/*:
 ## Buenas Prácticas

 1. **Uso de Conjuntos para Datos Únicos**:
    - **Qué es**: Utiliza conjuntos para almacenar datos únicos donde el orden no es importante.
    - **Por qué es importante**: Los conjuntos garantizan que no haya duplicados y son eficientes para operaciones de conjunto.
    - **Ejemplo**: Usa un `Set<String>` para mantener una lista de usuarios únicos.

 2. **Operaciones Eficientes**:
    - **Qué es**: Realiza operaciones de conjunto como `union`, `intersection`, y `subtracting` para manipular colecciones de manera eficiente.
    - **Por qué es importante**: Estas operaciones están optimizadas para conjuntos y pueden realizarse de manera rápida.
    - **Ejemplo**: Usa `intersection` para encontrar elementos comunes entre dos conjuntos de usuarios.

 3. **Verificación de Contenido**:
    - **Qué es**: Usa el método `contains` para verificar si un conjunto contiene un elemento antes de realizar otras operaciones.
    - **Por qué es importante**: Evita errores y asegura que el elemento está presente en el conjunto.
    - **Ejemplo**: Verifica si un usuario está activo antes de realizar acciones relacionadas.
 */

//: [Next](@next)
