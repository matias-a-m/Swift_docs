//: [Previous](@previous)
import UIKit
/*:
 # Iteraciones en Diccionarios en Swift

 Este Playground muestra cómo iterar sobre diccionarios en Swift, incluyendo iteración básica, iteración sobre claves y valores, y iteración utilizando métodos de `Dictionary`. Cada enfoque se ilustra con ejemplos prácticos.
 */

// MARK: - Iteración Básica sobre Claves y Valores
/*:
 Puedes iterar sobre los pares clave-valor en un diccionario utilizando un bucle `for-in`.
 */

var edades: [String: Int] = ["Alice": 30, "Bob": 25, "Charlie": 35]

print("Iteración básica sobre el diccionario:")
for (nombre, edad) in edades {
    print("Nombre: \(nombre), Edad: \(edad)")
}

// MARK: - Iteración Solo sobre Claves
/*:
 Puedes obtener solo las claves de un diccionario utilizando la propiedad `keys` y luego iterar sobre ellas.
 */

print("Iterando solo sobre las claves del diccionario:")
for nombre in edades.keys {
    print("Nombre: \(nombre)")
}

// MARK: - Iteración Solo sobre Valores
/*:
 Puedes obtener solo los valores de un diccionario utilizando la propiedad `values` y luego iterar sobre ellos.
 */

print("Iterando solo sobre los valores del diccionario:")
for edad in edades.values {
    print("Edad: \(edad)")
}

// MARK: - Uso de Enumeraciones en la Iteración
/*:
 Puedes usar el método `enumerated()` para iterar sobre pares clave-valor y obtener el índice de cada par.
 */

print("Iteración utilizando enumerated():")
for (indice, elemento) in edades.enumerated() {
    let (nombre, edad) = elemento
    print("Índice: \(indice), Nombre: \(nombre), Edad: \(edad)")
}

// MARK: - Iteración con Métodos de `Dictionary`
/*:
 Puedes utilizar métodos específicos del diccionario para realizar iteraciones más complejas.
 */

// Método `forEach` para iterar sobre pares clave-valor
print("Iteración usando forEach:")
edades.forEach { (nombre, edad) in
    print("Nombre: \(nombre), Edad: \(edad)")
}

// Método `map` para transformar el diccionario en un array
let edadesTransformadas = edades.map { (nombre, edad) -> String in
    return "\(nombre) tiene \(edad) años"
}
print("Edades transformadas: \(edadesTransformadas)")

// Método `filter` para filtrar elementos del diccionario
let edadesFiltradas = edades.filter { (nombre, edad) -> Bool in
    return edad > 30
}
print("Edades filtradas (mayores a 30): \(edadesFiltradas)")

// Método `reduce` para combinar valores del diccionario
let sumaEdades = edades.reduce(0) { (resultado, elemento) in
    return resultado + elemento.value
}
print("Suma de todas las edades: \(sumaEdades)")

// MARK: - Ejemplo Realista en una Aplicación
/*:
 Supongamos que tienes un diccionario con calificaciones de estudiantes y necesitas procesar la información.
 */

// Diccionario de calificaciones de estudiantes
var calificaciones: [String: Double] = ["Alice": 88.5, "Bob": 92.0, "Charlie": 76.0]

// Iteración para encontrar el promedio de calificaciones
let sumaCalificaciones = calificaciones.values.reduce(0, +)
let promedioCalificaciones = sumaCalificaciones / Double(calificaciones.count)
print("Promedio de calificaciones: \(promedioCalificaciones)")

// Iteración para encontrar estudiantes con calificación superior a 80
let estudiantesDestacados = calificaciones.filter { (_, calificacion) in
    return calificacion > 80
}
print("Estudiantes con calificación mayor a 80: \(estudiantesDestacados)")

// Iteración para transformar las calificaciones en un array de mensajes
let mensajesCalificaciones = calificaciones.map { (nombre, calificacion) in
    return "\(nombre) tiene una calificación de \(calificacion)"
}
print("Mensajes de calificación: \(mensajesCalificaciones)")

// MARK: - Buenas Prácticas
/*:
 1. **Uso Eficiente de Iteraciones**:
    - **Qué es**: Elige el método de iteración adecuado según la tarea que necesitas realizar.
    - **Por qué es importante**: Usar el método correcto puede mejorar el rendimiento y la legibilidad del código.
    - **Ejemplo**: Usa `forEach` para realizar una acción en cada par clave-valor, y `map` para transformar el diccionario.

 2. **Transformaciones y Filtrados**:
    - **Qué es**: Utiliza `map`, `filter` y `reduce` para realizar transformaciones y filtrados de manera declarativa.
    - **Por qué es importante**: Estos métodos proporcionan una forma clara y concisa de manipular datos.
    - **Ejemplo**: Usa `filter` para obtener estudiantes con calificaciones superiores a un umbral.

 3. **Manejo de Valores Opcionales**:
    - **Qué es**: Maneja los valores opcionales de manera segura al iterar sobre diccionarios.
    - **Por qué es importante**: Evita errores en tiempo de ejecución y asegura que el código maneje correctamente los casos de valores faltantes.
    - **Ejemplo**: Al usar `forEach`, asegúrate de que los valores opcionales se manejen adecuadamente.
 */

//: [Next](@next)
