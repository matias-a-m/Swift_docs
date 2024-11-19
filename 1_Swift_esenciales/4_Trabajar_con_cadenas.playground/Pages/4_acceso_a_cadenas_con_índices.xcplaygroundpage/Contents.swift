//: [Previous](@previous)
import UIKit
import Foundation

/*:
 # Acceso y Manipulación de Cadenas en Swift

 ## Este Playground explora varias formas de acceder y manipular cadenas en Swift, incluyendo el uso de índices, métodos para verificar prefijos y sufijos, y otros métodos útiles para el manejo de cadenas.
 */

// MARK: - Índices en Cadenas
/*:
 Los índices en Swift te permiten acceder a caracteres específicos de una cadena de forma segura. Aquí veremos cómo trabajar con los índices.
 */

let text = "Swift is powerful and flexible."

// Obtener el índice del primer carácter
let startIndex = text.startIndex
let firstCharacter = text[startIndex]
print("Primer carácter: \(firstCharacter)") // Resultado esperado: S

// Obtener el índice del último carácter
let endIndex = text.index(before: text.endIndex)
let lastCharacter = text[endIndex]
print("Último carácter: \(lastCharacter)") // Resultado esperado: .

// Moverse 6 posiciones desde el inicio para obtener el séptimo carácter
let seventhCharacterIndex = text.index(text.startIndex, offsetBy: 6)
let seventhCharacter = text[seventhCharacterIndex]
print("Séptimo carácter: \(seventhCharacter)") // Resultado esperado: e

// Obtener el carácter antes del índice actual
let previousIndex = text.index(before: seventhCharacterIndex)
let previousCharacter = text[previousIndex]
print("Carácter antes del séptimo: \(previousCharacter)") // Resultado esperado: c

// MARK: - Subcadenas Usando Índices
/*:
 Puedes obtener subcadenas específicas utilizando rangos de índices.
 */

// Definir un rango desde el índice inicial hasta el séptimo carácter
let range = text.startIndex...seventhCharacterIndex
let substring = text[range]
print("Subcadena hasta el séptimo carácter: \(substring)") // Resultado esperado: Swift e

// Convertir Subcadena a String Completa
let completeString = String(substring)
print("Cadena completa a partir de la subcadena: \(completeString)") // Resultado esperado: Swift e

// MARK: - Verificación de Prefijos y Sufijos
/*:
 Swift proporciona métodos para verificar si una cadena empieza o termina con un prefijo o sufijo específico.
 */

// Verificar si la cadena tiene un prefijo
let hasPrefix = text.hasPrefix("Swift")
print("¿La cadena tiene el prefijo 'Swift'? \(hasPrefix)") // Resultado esperado: true

// Verificar si la cadena tiene un sufijo
let hasSuffix = text.hasSuffix("flexible.")
print("¿La cadena tiene el sufijo 'flexible.'? \(hasSuffix)") // Resultado esperado: true

// MARK: - Métodos Adicionales Útiles
/*:
 Existen varios otros métodos que puedes usar para manipular cadenas en Swift.
 */

// Verificar si la cadena contiene una subcadena específica
let containsWord = text.contains("potente")
print("¿La cadena contiene 'potente'? \(containsWord)") // Resultado esperado: true

// Reemplazar todas las ocurrencias de una subcadena por otra
let replacedText = text.replacingOccurrences(of: "potente", with: "increíble")
print("Texto después de reemplazo: \(replacedText)") // Resultado esperado: Swift es increíble y flexible.

// Convertir la cadena a mayúsculas
let textInUppercase = text.uppercased()
print("Texto en mayúsculas: \(textInUppercase)") // Resultado esperado: SWIFT ES POTENTE Y FLEXIBLE.

// Convertir la cadena a minúsculas
let textInLowercase = text.lowercased()
print("Texto en minúsculas: \(textInLowercase)") // Resultado esperado: swift es potente y flexible.

// Eliminar los espacios al principio y al final
let textWithSpaces = "   Swift es increíble y flexible.   "
let trimmedText = textWithSpaces.trimmingCharacters(in: .whitespaces)
print("Texto sin espacios al principio y al final: '\(trimmedText)'") // Resultado esperado: 'Swift es increíble y flexible.'

// Dividir una cadena en un array de subcadenas usando un delimitador
let words = text.split(separator: " ")
print("Palabras en la cadena: \(words)") // Resultado esperado: ["Swift", "es", "potente", "y", "flexible."]

// Unir un array de subcadenas en una sola cadena usando un delimitador
let joinedText = words.joined(separator: " ")
print("Texto unido: \(joinedText)") // Resultado esperado: Swift es potente y flexible.

/*:
 ## Consideraciones de Seguridad con Cadenas

 1. **Uso de Índices Seguros**:
    - **Qué es**: Usa métodos como `index(_:offsetBy:)` para acceder a caracteres sin causar errores.
    - **Por qué es importante**: Previene errores de desbordamiento y asegura el acceso correcto a los caracteres.

 2. **Verificación de Prefijos y Sufijos**:
    - **Qué es**: Los métodos `hasPrefix` y `hasSuffix` ayudan a verificar si una cadena comienza o termina con una subcadena específica.
    - **Por qué es importante**: Útil para validar formatos y contenidos de cadenas.

 3. **Métodos Adicionales**:
    - **Qué es**: Métodos como `contains`, `replacingOccurrences(of:with:)`, `uppercased()`, `lowercased()`, `trimmingCharacters(in:)`, `split(separator:)`, y `joined(separator:)` proporcionan funcionalidades útiles para la manipulación de cadenas.
    - **Por qué es importante**: Facilita la búsqueda, reemplazo, formateo y segmentación de cadenas.
 */

//: [Next](@next)
