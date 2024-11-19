//: [Previous](@previous)
import Foundation

/*:
 # Literales en Swift y Manipulación de Cadenas

 Este Playground explora cómo los literales en Swift afectan el manejo de cadenas y cómo podemos trabajar con ellos de manera efectiva. Analizaremos diferentes tipos de literales y operaciones comunes con cadenas, incluyendo concatenación, manipulación y validación.

 ## 1. Literales de Cadenas
 Los literales de cadenas son secuencias de caracteres especificadas directamente en el código. Swift permite varias formas de definirlos, como cadenas simples, multilínea e interpoladas.
 */

// MARK: - Literales de Cadenas

// Literal de cadena simple
let saludo: String = "¡Hola, mundo!"
print("Saludo: \(saludo)") // Resultado esperado: ¡Hola, mundo!

// Literal de cadena multilínea
let mensajeMultilinea: String = """
Este es un literal de cadena
multilínea en Swift.
Puedes incluir saltos de línea
y tabulaciones.
"""
print("Mensaje multilínea: \n\(mensajeMultilinea)")

// Literal de cadena interpolada
let nombre = "Juan"
let edad = 30
let mensajeInterpolado = "Mi nombre es \(nombre) y tengo \(edad) años."
print("Mensaje interpolado: \(mensajeInterpolado)")

/*:
 ## 2. Concatenación de Cadenas
 Puedes combinar cadenas usando el operador `+` o el método `append`. La concatenación es útil para construir mensajes dinámicos o combinar contenido de varias fuentes.
 */

// MARK: - Concatenación de Cadenas

let cadena1: String = "Hola"
let cadena2: String = "mundo"
let mensajeConcatenado = cadena1 + ", " + cadena2 + "!"
print("Mensaje concatenado: \(mensajeConcatenado)") // Resultado esperado: Hola, mundo!

var cadenaMutable: String = "Hola"
cadenaMutable.append(", mundo!")
print("Cadena después de append: \(cadenaMutable)") // Resultado esperado: Hola, mundo!

/*:
 ## 3. Manipulación de Cadenas
 Swift proporciona métodos útiles para manipular y examinar cadenas. Estas herramientas son clave para realizar transformaciones o validar contenido.
 */

// MARK: - Manipulación de Cadenas

let textoOriginal = "  swift es un lenguaje de programación  "
let textoSinEspacios = textoOriginal.trimmingCharacters(in: .whitespacesAndNewlines)
print("Texto sin espacios: '\(textoSinEspacios)'") // Resultado esperado: swift es un lenguaje de programación

let textoEnMayusculas = textoOriginal.uppercased()
print("Texto en mayúsculas: '\(textoEnMayusculas)'") // Resultado esperado: SWIFT ES UN LENGUAJE DE PROGRAMACIÓN

let textoEnMinusculas = textoOriginal.lowercased()
print("Texto en minúsculas: '\(textoEnMinusculas)'") // Resultado esperado: swift es un lenguaje de programación

/*:
 ## 4. Literales Especiales
 En Swift, puedes usar literales especiales para representar caracteres específicos o datos binarios.
 */

// MARK: - Literales Especiales

let emoji: Character = "🙂"
print("Emoji: \(emoji)") // Resultado esperado: 🙂

let binario: String = "0b1010" // Literal binario como cadena
if let numeroBinario = Int(binario, radix: 2) {
    print("Número binario convertido: \(numeroBinario)") // Resultado esperado: 10
}

/*:
 ## 5. Aplicaciones en Desarrollo iOS

 ### Ejemplos de uso y buenas prácticas:
 
 1. **Uso Eficiente de Literales**:
    - **Qué es**: Aprovecha literales de cadena y literales especiales para representar datos en tu aplicación de manera clara y concisa.
    - **Por qué es importante**: Facilita la lectura y mantenimiento del código, mejorando la representatividad de los datos.
    - **Ejemplo**: Usa literales multilínea para mensajes extensos y literales interpolados para mensajes dinámicos.

 2. **Manipulación y Validación**:
    - **Qué es**: Manipula y valida cadenas para asegurar que los datos mostrados sean correctos.
    - **Por qué es importante**: Previene errores y garantiza que la información presentada sea precisa.
    - **Ejemplo**: Utiliza métodos como `trimmingCharacters` y `uppercased` para ajustar y validar cadenas.

 3. **Conversión de Datos**:
    - **Qué es**: Convierte literales especiales y datos binarios a formatos útiles para su procesamiento.
    - **Por qué es importante**: Permite manipular y analizar datos en formatos específicos.
    - **Ejemplo**: Convierte literales binarios a enteros para cálculos.

 Este Playground proporciona ejemplos prácticos de cómo trabajar con literales y manipulación de cadenas en Swift, útiles para la representación y manejo de datos en tus aplicaciones iOS.
 */

//: [Next](@next)

