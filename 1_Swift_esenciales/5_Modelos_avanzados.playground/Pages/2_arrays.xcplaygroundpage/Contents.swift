//: [Previous](@previous)
import UIKit
/*:
 # Arrays en Swift

 Los **arrays** en Swift son colecciones ordenadas de elementos del mismo tipo. Permiten acceder a los elementos mediante su índice y ofrecen métodos para manipular y gestionar los datos de manera eficiente.

 ## Creación de Arrays

 Un array puede ser creado de dos formas: vacío o con valores iniciales. A continuación se muestran ejemplos:

*/

var frutas: [String] = ["Apple", "Banana", "Cherry"]
var numeros: [Int] = [2, 3, 4, 5, 1]

print("Array de frutas: \(frutas)")
print("Array de números: \(numeros)")

// MARK: - Acceso y Modificación de Elementos
/*:
 Puedes acceder a los elementos de un array utilizando su índice y modificarlos directamente.

 Ejemplos:
*/

let primeraFruta = frutas[0]
print("Primera fruta: \(primeraFruta)")

// Modificación de un elemento
frutas[1] = "Orange"
print("Array de frutas después de modificación: \(frutas)")

// MARK: - Métodos y Propiedades de los Arrays
/*:
 Los arrays en Swift tienen varios métodos útiles que facilitan la manipulación de datos.

 Ejemplos de uso:
*/

print("Número de frutas: \(frutas.count)")

// Agregar un nuevo elemento al final
frutas.append("Pear")
print("Array de frutas después de agregar una nueva fruta: \(frutas)")

// Insertar un elemento en una posición específica
frutas.insert("Mango", at: 2)
print("Array de frutas después de insertar Mango: \(frutas)")

// Eliminar el último elemento
frutas.removeLast()
print("Array de frutas después de eliminar el último elemento: \(frutas)")

// Ordenar el array
numeros.sort()
print("Array de números ordenado: \(numeros)")

// Buscar la posición de un elemento
if let indice = frutas.firstIndex(of: "Orange") {
    print("La fruta Orange está en el índice: \(indice)")
}

// MARK: - Ejemplo Real en una Aplicación
/*:
 Imagina que estás desarrollando una aplicación de lista de tareas. Puedes utilizar arrays para almacenar y gestionar las tareas.

 Ejemplo práctico:
*/

var tareas: [String] = ["Comprar leche", "Ir al gimnasio", "Leer un libro"]

// Agregar una nueva tarea
tareas.append("Llamar al doctor")
print("Lista de tareas actualizada: \(tareas)")

// Eliminar una tarea
if let indice = tareas.firstIndex(of: "Ir al gimnasio") {
    tareas.remove(at: indice)
}
print("Lista de tareas después de eliminar una tarea: \(tareas)")

/*:
 ## Buenas Prácticas

 A continuación se detallan algunas recomendaciones al trabajar con arrays en Swift:

 1. **Uso Seguro de los Índices**:
    - **Qué es**: Asegúrate de que el índice utilizado para acceder a un array esté dentro del rango válido.
    - **Por qué es importante**: Prevenir errores de ejecución debido a accesos fuera de rango.
    - **Ejemplo**: Verifica el índice con `if index < frutas.count` antes de acceder al array.

 2. **Uso Eficiente de Métodos de Arrays**:
    - **Qué es**: Utiliza métodos como `append`, `insert`, y `remove` para gestionar los datos del array de forma eficiente.
    - **Por qué es importante**: Facilita la manipulación de datos y mejora la legibilidad del código.
    - **Ejemplo**: Usa `append` para añadir elementos al final del array.

 3. **Ordenación y Búsqueda de Datos**:
    - **Qué es**: Ordena y busca elementos dentro de un array para mantener los datos organizados.
    - **Por qué es importante**: Optimiza el rendimiento de las búsquedas y la presentación de los datos.
    - **Ejemplo**: Usa `sort()` para ordenar un array y `firstIndex(of:)` para buscar un elemento específico.
 */

//: [Next](@next)
