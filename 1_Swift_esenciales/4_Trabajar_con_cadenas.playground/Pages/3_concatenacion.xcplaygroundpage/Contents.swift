//: [Previous](@previous)
import UIKit
import Foundation

/*:
 # Concatenación de Cadenas en Swift

 ### Este Playground explora diferentes formas de concatenar cadenas en Swift. Veremos cómo combinar varias cadenas utilizando distintos métodos y cómo optimizar el proceso en situaciones comunes.
 */

// MARK: - Concatenación Básica con el Operador `+`
/*:
 El operador `+` se utiliza comúnmente para concatenar dos o más cadenas de forma directa.
 */

let string1 = "Hola"
let string2 = "Mundo"
let mensajeConcatenado = string1 + " " + string2 + "!"
print("Mensaje concatenado con '+': \(mensajeConcatenado)") // Resultado esperado: Hola Mundo!

// MARK: - Concatenación con `append`
/*:
 El método `append` añade el contenido de una cadena a otra. Este método es útil cuando trabajas con cadenas mutables y deseas agregar contenido dinámicamente.
 */

var saludo = "Hola"
saludo.append(", Mundo!")
print("Saludo después de `append`: \(saludo)") // Resultado esperado: Hola, Mundo!

// MARK: - Interpolación de Cadenas
/*:
 La interpolación de cadenas en Swift permite combinar variables y expresiones dentro de una cadena de manera fácil y legible.
 */

let nombre = "Carlos"
let edad = 28
let mensajeInterpolado = "Me llamo \(nombre) y tengo \(edad) años."
print("Mensaje interpolado: \(mensajeInterpolado)") // Resultado esperado: Me llamo Carlos y tengo 28 años.

// MARK: - Concatenación de Cadenas Multilínea
/*:
 Swift soporta literales de cadena multilínea, lo que te permite combinar texto en varias líneas mientras mantienes la legibilidad del código.
 */

let mensajeMultilinea = """
Este es un ejemplo de una \
cadena multilínea en Swift.
Puedes escribir en varias líneas \
sin problemas de formato.
"""
print("Mensaje multilínea:\n\(mensajeMultilinea)")

// MARK: - Concatenación de Varias Cadenas con `reduce`
/*:
 Si tienes una colección de cadenas que deseas concatenar, puedes usar el método `reduce` para combinarlas en una sola cadena.
 */

let arrayDeCadenas = ["Swift", "es", "un", "lenguaje", "potente"]
let mensajeReducido = arrayDeCadenas.reduce("", { $0 + " " + $1 }).trimmingCharacters(in: .whitespaces)
print("Mensaje reducido con `reduce`: \(mensajeReducido)") // Resultado esperado: Swift es un lenguaje potente

/*:
 ## Consideraciones para la Concatenación

 1. **Uso del Operador `+`**:
    - **Qué es**: El operador `+` es simple y directo, pero no es el más eficiente para muchas concatenaciones.
    - **Por qué es importante**: Aunque es fácil de usar, concatenar cadenas grandes o hacerlo repetidamente con `+` puede ser menos eficiente en términos de rendimiento.
    - **Ejemplo**: Usa `+` para concatenar pequeñas cadenas o en situaciones donde el rendimiento no es crítico.

 2. **Uso de `append`**:
    - **Qué es**: `append` es útil cuando trabajas con cadenas mutables y deseas agregar contenido dinámicamente.
    - **Por qué es importante**: Es más eficiente que `+` para construir cadenas de manera incremental.
    - **Ejemplo**: Usa `append` en bucles o cuando necesites agregar contenido a una cadena de forma gradual.

 3. **Interpolación de Cadenas**:
    - **Qué es**: La interpolación de cadenas permite combinar variables y expresiones en una cadena de manera legible.
    - **Por qué es importante**: Mejora la legibilidad del código cuando estás trabajando con varias variables o expresiones en la concatenación.
    - **Ejemplo**: Usa interpolación cuando estés construyendo mensajes que incluyan variables.

 4. **Manejo de Cadena Multilínea**:
    - **Qué es**: Los literales multilínea en Swift permiten escribir texto en múltiples líneas sin necesidad de concatenar explícitamente.
    - **Por qué es importante**: Mejora la legibilidad y mantenimiento del código, especialmente cuando trabajas con texto largo o plantillas de texto.
    - **Ejemplo**: Usa literales multilínea para construir mensajes largos o contenido con saltos de línea.

 5. **Optimización con Bucle y `append`**:
    - **Qué es**: Cuando necesitas concatenar un gran número de cadenas, usar `append` en un bucle es más eficiente que usar el operador `+`.
    - **Por qué es importante**: Minimiza el coste de crear nuevas instancias de cadena repetidamente.
    - **Ejemplo**: Usa bucles y `append` cuando trabajes con colecciones de cadenas grandes.
 */

//: [Next](@next)

