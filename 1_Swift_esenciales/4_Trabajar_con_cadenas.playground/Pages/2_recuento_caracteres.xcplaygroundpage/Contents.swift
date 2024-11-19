//: [Previous](@previous)
import UIKit
import Foundation

/*:
 # Contando Caracteres en Swift

 ### Este Playground explora diferentes formas de contar caracteres en cadenas en Swift. Veremos cómo contar el total de caracteres, excluir espacios, contar caracteres específicos y otras operaciones relacionadas con el recuento.
 */

// MARK: - Recuento Básico de Caracteres
/*:
 Swift tiene una propiedad incorporada llamada `count` que permite contar el número total de caracteres en una cadena.
 */

let texto: String = "Swift es un lenguaje de programación moderno y potente."
let totalDeCaracteres: Int = texto.count
print("Número total de caracteres: \(totalDeCaracteres)") // Resultado esperado: 54

// MARK: - Excluir Espacios del Recuento
/*:
 Si deseas contar solo los caracteres que no son espacios, puedes usar el método `filter` para excluir los espacios en blanco.
 */

let caracteresSinEspacios: Int = texto.filter { !$0.isWhitespace }.count
print("Número de caracteres excluyendo espacios: \(caracteresSinEspacios)") // Resultado esperado: 47

// MARK: - Contar Caracteres Específicos
/*:
 También puedes contar cuántas veces aparece un carácter específico en una cadena. Por ejemplo, veamos cuántas letras "e" hay en el texto.
 */

let caracterEspecifico: Character = "e"
let conteoEspecifico: Int = texto.filter { $0 == caracterEspecifico }.count
print("Número de veces que aparece la letra '\(caracterEspecifico)': \(conteoEspecifico)") // Resultado esperado: 6

// MARK: - Contar Palabras
/*:
 Además de contar caracteres, también puedes contar cuántas palabras tiene una cadena. Una manera sencilla es dividir la cadena por espacios y contar el número de componentes.
 */

let conteoDePalabras: Int = texto.split(separator: " ").count
print("Número de palabras: \(conteoDePalabras)") // Resultado esperado: 9

// MARK: - Recuento de Caracteres Únicos
/*:
 Si necesitas contar los caracteres únicos en una cadena, puedes convertir la cadena en un conjunto (`Set`), ya que los conjuntos no permiten duplicados.
 */

let caracteresUnicos: Set<Character> = Set(texto)
print("Número de caracteres únicos: \(caracteresUnicos.count)") // Resultado esperado: 23

// MARK: - Casos Especiales: Caracteres Unicode y Emojis
/*:
 Los emojis y caracteres especiales en Unicode pueden ocupar más de un "code point". Es importante contar correctamente estos caracteres, ya que `count` se encarga de manejar los caracteres Unicode correctamente.
 */

let textoConEmoji: String = "Swift es divertido 🥳🎉"
let numeroDeCaracteresConEmoji: Int = textoConEmoji.count
print("Número de caracteres incluyendo emoji: \(numeroDeCaracteresConEmoji)") // Resultado esperado: 20

/*:
 ## Consideraciones para el Recuento de Caracteres

 1. **Caracteres Unicode**:
    - **Qué es**: El recuento de caracteres en Swift soporta nativamente los caracteres Unicode, incluidos los emojis y caracteres combinados.
    - **Por qué es importante**: Evita que se cuenten incorrectamente los caracteres que ocupan más de un "code point".
    - **Ejemplo**: `count` maneja correctamente el recuento de emojis como un solo carácter.

 2. **Filtros Personalizados**:
    - **Qué es**: Puedes filtrar caracteres específicos o tipos de caracteres, como espacios o símbolos, para obtener un recuento más personalizado.
    - **Por qué es importante**: Proporciona flexibilidad para contar solo los caracteres que son relevantes para el contexto de tu aplicación.
    - **Ejemplo**: Usa `filter` para contar solo letras o números en una cadena.

 3. **Procesamiento de Texto Complejo**:
    - **Qué es**: Si tu aplicación trabaja con texto complejo, como scripts multilingües o emojis, asegúrate de realizar pruebas adicionales para garantizar un recuento preciso.
    - **Por qué es importante**: Algunos idiomas o emojis pueden influir en el recuento si no se manejan correctamente.
    - **Ejemplo**: Verifica el comportamiento en diferentes idiomas o al trabajar con texto que incluye caracteres combinados.
 */

//: [Next](@next)
