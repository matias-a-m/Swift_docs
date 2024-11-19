//: [Previous](@previous)
import UIKit
/*:
 # Iteración sobre Arrays en Swift

 Este Playground muestra cómo iterar sobre **Arrays** en Swift utilizando diferentes métodos. Incluye ejemplos prácticos y explicaciones para cada tipo de iteración.

 ## Creación de un Array

 Primero, creamos un **Array** de ejemplo con una lista de tareas.
 */

var tareas: [String] = ["Comprar leche", "Ir al gimnasio", "Enviar correo", "Leer un libro"]
print("Array - Tareas iniciales: \(tareas)")

// MARK: - Iteración usando un bucle for-in
/*:
 El bucle `for-in` es una forma simple y directa de iterar sobre cada elemento de un **Array**.
 */
print("Iterando sobre el Array con un bucle for-in:")
for tarea in tareas {
    print("Tarea pendiente: \(tarea)")
}

// MARK: - Iteración con índices
/*:
 Puedes iterar sobre un **Array** utilizando un bucle `for-in` con índices para acceder a cada elemento junto con su posición.
 */
print("Iterando sobre el Array con índices:")
for index in 0..<tareas.count {
    print("Tarea en el índice \(index): \(tareas[index])")
}

// MARK: - Uso de enumeraciones
/*:
 El método `enumerated()` te permite obtener tanto el índice como el valor de cada elemento durante la iteración.
 */
print("Iterando sobre el Array con enumeraciones:")
for (index, tarea) in tareas.enumerated() {
    print("Índice \(index) - Tarea: \(tarea)")
}

// MARK: - Iteración con métodos de Array
/*:
 Los métodos `forEach`, `map`, y `filter` también permiten iterar sobre **Arrays** y realizar operaciones en cada elemento.
 */

// Uso de forEach para realizar una acción en cada elemento
print("Iterando con forEach:")
tareas.forEach { tarea in
    print("Tarea pendiente: \(tarea)")
}

// Uso de map para transformar los elementos
let tareasEnMayusculas = tareas.map { $0.uppercased() }
print("Tareas en mayúsculas: \(tareasEnMayusculas)")

// Uso de filter para seleccionar elementos que cumplen una condición
let tareasLargas = tareas.filter { $0.count > 10 }
print("Tareas con más de 10 caracteres: \(tareasLargas)")

// MARK: - Ejemplo Realista en una Aplicación
/*:
 Supongamos que estás desarrollando una aplicación de gestión de tareas y necesitas aplicar diferentes iteraciones para mostrar y procesar la lista de tareas.
 */

// Definición de un Array de tareas
var listaDeTareas: [String] = ["Revisar correos", "Completar informe", "Llamar a un cliente"]

// Función para mostrar tareas utilizando forEach
func mostrarTareasConForEach(tareas: [String]) {
    print("Lista de tareas (forEach):")
    tareas.forEach { tarea in
        print("- \(tarea)")
    }
}

// Llamada a la función para mostrar tareas
mostrarTareasConForEach(tareas: listaDeTareas)

// Transformar las tareas a mayúsculas y mostrar
let listaDeTareasEnMayusculas = listaDeTareas.map { $0.uppercased() }
print("Lista de tareas en mayúsculas: \(listaDeTareasEnMayusculas)")

// Filtrar tareas que contienen la palabra "Llamar" y mostrar
let tareasFiltradas = listaDeTareas.filter { $0.contains("Llamar") }
print("Tareas que contienen 'Llamar': \(tareasFiltradas)")

// MARK: - Buenas Prácticas
/*:
 1. **Elegir el Método Adecuado**:
    - **Qué es**: Utiliza el método de iteración que mejor se adapte a tus necesidades.
    - **Por qué es importante**: Diferentes métodos ofrecen ventajas distintas según el caso de uso.
    - **Ejemplo**: Usa `forEach` para realizar una acción en cada elemento sin modificar el **Array**, y `map` para transformar los elementos.

 2. **Uso Eficiente de Recursos**:
    - **Qué es**: Elige métodos de iteración que sean eficientes en términos de rendimiento y memoria.
    - **Por qué es importante**: Algunos métodos pueden ser más costosos en términos de recursos.
    - **Ejemplo**: Utiliza `filter` para seleccionar elementos en lugar de recorrer el **Array** manualmente.

 3. **Legibilidad del Código**:
    - **Qué es**: Mantén tu código claro y fácil de leer utilizando el método de iteración más apropiado.
    - **Por qué es importante**: Un código legible facilita el mantenimiento y la comprensión.
    - **Ejemplo**: Usa `enumerated()` cuando necesites tanto el índice como el valor del elemento para mejorar la claridad.
 */

//: [Next](@next)
