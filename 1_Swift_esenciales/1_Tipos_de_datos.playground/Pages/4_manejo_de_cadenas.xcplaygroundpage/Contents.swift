//: [Previous](@previous)
/*:
 # Manejo de Cadenas en Swift
 ### Este Playground explora cómo trabajar con cadenas en Swift, incluyendo la declaración, manipulación y formateo de texto. Incluye ejemplos prácticos y buenas prácticas para el uso de cadenas.
 */
import UIKit

// MARK: - Declaración de Cadenas
/*:
 Puedes declarar cadenas utilizando comillas dobles (`" "`). Las cadenas en Swift son de tipo `String` y son colecciones de caracteres.
 */

let saludo: String = "¡Hola, mundo!"  // Declaración de una cadena
let nombre: String = "Matías"  // Otra cadena
print("Saludo: \(saludo)")
print("Nombre: \(nombre)")

// MARK: - Concatenación de Cadenas
/*:
 Para concatenar cadenas, puedes usar el operador `+` o la interpolación de cadenas con `\()`. La interpolación es más segura y legible.
 */

let saludoCompleto = saludo + " Mi nombre es " + nombre  // Concatenación utilizando el operador `+`
print("Saludo completo: \(saludoCompleto)")

let saludoInterpolado = "\(saludo) Mi nombre es \(nombre)"  // Interpolación de cadenas
print("Saludo interpolado: \(saludoInterpolado)")

// MARK: - Formateo de Cadenas
/*:
 Usa el método `String(format:)` para insertar valores dentro de un formato de cadena. Es útil cuando necesitas controlar el formato con precisión.
 */

let edad: Int = 30
let mensajeDeEdad = String(format: "Tengo %d años", edad)  // Formato con el operador `%d` para enteros
print("Mensaje formateado: \(mensajeDeEdad)")

// MARK: - Manipulación de Cadenas
/*:
 Las cadenas tienen varios métodos útiles para manipular su contenido. Puedes obtener la longitud, convertirlas a mayúsculas o minúsculas, entre otras cosas.
 */

let texto = "swift es increíble"
let longitudTexto = texto.count  // Longitud de la cadena
let textoEnMayusculas = texto.uppercased()  // Convertir a mayúsculas
let textoEnMinusculas = texto.lowercased()  // Convertir a minúsculas

print("Texto original: \(texto)")
print("Longitud del texto: \(longitudTexto) caracteres")
print("Texto en mayúsculas: \(textoEnMayusculas)")
print("Texto en minúsculas: \(textoEnMinusculas)")

// MARK: - Comparación de Cadenas
/*:
 Las cadenas pueden compararse utilizando los operadores de comparación estándar (`<`, `>`, `==`).
 */

let cadena1: String = "manzana"
let cadena2: String = "banana"

if cadena1 < cadena2 {
    print("'\(cadena1)' es menor que '\(cadena2)'")
} else {
    print("'\(cadena1)' es mayor o igual que '\(cadena2)'")
}

// MARK: - Ejemplo de Uso en Funciones
/*:
 Las cadenas son útiles en funciones para realizar operaciones y formatear resultados. Aquí tienes una función que combina un nombre y un apellido.
 */
/// Combina un nombre y un apellido en una sola cadena.
///
/// - Parámetros:
///   - primerNombre: El nombre de la persona.
///   - apellido: El apellido de la persona.
/// - Retorna: El nombre completo combinado.
func crearNombreCompleto(primerNombre: String, apellido: String) -> String {
    return "\(primerNombre) \(apellido)"  // Combina los nombres con un espacio en el medio
}

let primerNombre = "Juan"
let apellido = "Pérez"
let nombreCompleto = crearNombreCompleto(primerNombre: primerNombre, apellido: apellido)
print("Nombre completo: \(String(nombreCompleto))")

// MARK: - Buenas Prácticas
/*:
 1. **Uso de Interpolación**: Utiliza la interpolación de cadenas (`\(variable)`) para combinar texto y variables de manera más clara y segura.
 2. **Evitar Concatenación Extensa**: Si estás concatenando muchas cadenas, es mejor usar la interpolación de cadenas o el formateo con `String(format:)`. Esto mejora la legibilidad.
 3. **Manejo de Opcionales**: Si una cadena puede ser `nil`, usa `String(describing:)` para convertir cualquier valor opcional en una cadena de forma segura. Esto evita errores por desempaquetado forzado.
 4. **Formateo Consistente**: Para mantener la presentación de datos consistente, utiliza el formateo de cadenas en lugar de concatenar valores directamente.
 */

//: [Next](@next)
