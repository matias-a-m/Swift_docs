//: [Previous](@previous)
import UIKit
/*:
 # Iteraciones en Diccionarios en Swift

 En Swift, los diccionarios (`Dictionary`) son colecciones desordenadas de pares clave-valor. A continuación se muestra cómo iterar sobre los elementos de un diccionario utilizando diferentes métodos.

 ## Iteración Básica sobre Claves y Valores

 Puedes iterar sobre todos los pares clave-valor de un diccionario utilizando un bucle `for-in`.
 */

// MARK: - Iteración Básica sobre Claves y Valores
/*:
 Se recorre el diccionario usando `for-in` para acceder a las claves y los valores.
 */
var edades: [String: Int] = ["Alice": 30, "Bob": 25, "Charlie": 35]
print("Iteración básica sobre el diccionario:")
for (name, age) in edades {
    print("Nombre: \(name), Edad: \(age)")
}

/*:
 ## Iteración Solo sobre Claves

 Para obtener solo las claves del diccionario, usa la propiedad `keys` y itera sobre ella.
 */

// MARK: - Iteración Solo sobre Claves
/*:
 La propiedad `keys` permite iterar sobre las claves del diccionario sin acceder a los valores.
 */
print("Iteración solo sobre las claves del diccionario:")
for name in edades.keys {
    print("Nombre: \(name)")
}

/*:
 ## Iteración Solo sobre Valores

 Para obtener solo los valores del diccionario, usa la propiedad `values` y itera sobre ella.
 */

// MARK: - Iteración Solo sobre Valores
/*:
 La propiedad `values` permite acceder solo a los valores del diccionario, sin las claves.
 */
print("Iteración solo sobre los valores del diccionario:")
for age in edades.values {
    print("Edad: \(age)")
}

/*:
 ## Iteración con Enumeración

 Usa el método `enumerated()` para obtener un índice junto con los pares clave-valor.
 */

// MARK: - Iteración con Enumeración
/*:
 El método `enumerated()` permite obtener tanto el índice como el par clave-valor.
 */
print("Iteración utilizando enumerated():")
for (index, element) in edades.enumerated() {
    let (name, age) = element
    print("Índice: \(index), Nombre: \(name), Edad: \(age)")
}

/*:
 ## Uso de Métodos de `Dictionary`

 Los métodos de `Dictionary` como `forEach`, `map`, `filter` y `reduce` permiten realizar diversas operaciones sobre los pares clave-valor.
 */

// MARK: - Métodos de Dictionary
/*:
 Métodos como `forEach`, `map`, `filter` y `reduce` ofrecen una manera eficiente de manipular diccionarios.
 */
print("Iteración usando forEach:")
edades.forEach { (name, age) in
    print("Nombre: \(name), Edad: \(age)")
}

print("Transformación de edades a un arreglo de cadenas:")
let transformedAges = edades.map { (name, age) -> String in
    return "\(name) tiene \(age) años"
}
print("Edades transformadas: \(transformedAges)")

print("Filtrado de edades mayores a 30:")
let filteredAges = edades.filter { (_, age) in
    return age > 30
}
print("Edades filtradas (mayores a 30): \(filteredAges)")

print("Suma de todas las edades:")
let sumOfAges = edades.reduce(0) { (result, element) in
    return result + element.value
}
print("Suma de todas las edades: \(sumOfAges)")

/*:
 ## Ejemplo Realista en una Aplicación

 Supongamos que tienes un diccionario con calificaciones de estudiantes y necesitas calcular el promedio, filtrar calificaciones y transformar datos.
 */

var grades: [String: Double] = ["Alice": 88.5, "Bob": 92.0, "Charlie": 76.0]

print("Promedio de calificaciones:")
let sumGrades = grades.values.reduce(0, +)
let averageGrades = sumGrades / Double(grades.count)
print("Promedio de calificaciones: \(averageGrades)")

print("Estudiantes con calificaciones mayores a 80:")
let topStudents = grades.filter { (_, grade) in
    return grade > 80
}
print("Estudiantes destacados: \(topStudents)")

print("Mensajes de calificaciones:")
let gradeMessages = grades.map { (name, grade) in
    return "\(name) tiene una calificación de \(grade)"
}
print("Mensajes de calificaciones: \(gradeMessages)")

/*:
 ## Buenas Prácticas

 1. **Elegir el Método de Iteración Adecuado**:
    - **Qué es**: Usa el método de iteración que mejor se ajuste a la tarea que necesitas realizar.
    - **Por qué es importante**: Optimiza el rendimiento y la claridad del código.
    - **Ejemplo**: Usa `forEach` para acciones sin retorno, `map` para transformaciones, y `filter` para filtrado.

 2. **Transformaciones y Filtrados**:
    - **Qué es**: Usa `map`, `filter` y `reduce` para manipular y procesar los datos del diccionario.
    - **Por qué es importante**: Proporciona una forma clara y funcional de manejar datos.
    - **Ejemplo**: Usa `filter` para obtener elementos que cumplan ciertas condiciones.

 3. **Manejo Eficiente de Datos**:
    - **Qué es**: Asegúrate de usar métodos que sean eficientes en términos de rendimiento y que mantengan la legibilidad del código.
    - **Por qué es importante**: Mejora la eficiencia y la mantenibilidad del código.
    - **Ejemplo**: Usa `reduce` para combinar valores de manera eficiente.
 */

//: [Next](@next)
