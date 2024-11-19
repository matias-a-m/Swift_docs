//: [Previous](@previous)
/*:
 # Formateo de Cadenas en Swift
 ### En Swift, la función `String(format:)` permite formatear valores en cadenas de texto utilizando especificadores de formato. A continuación, exploraremos diversos especificadores de formato y cómo usarlos para formatear enteros, números de punto flotante, cadenas y más.
 */
import Foundation

// MARK: - Formateo de Enteros Decimales (`%d` y `%i`)
/*:
Los especificadores `%d` y `%i` se utilizan para formatear números enteros en base decimal.
*/

let integer = 42
let messageIntegerD = String(format: "Entero con %%d: %d", integer)
let messageIntegerI = String(format: "Entero con %%i: %i", integer)
print(messageIntegerD)  // Imprime: Entero con %d: 42
print(messageIntegerI)  // Imprime: Entero con %i: 42


// MARK: - Formateo de Números de Punto Flotante (`%f` y `%.nf`)
/*:
 - `%f` muestra un número de punto flotante con todos los dígitos significativos.
 - `%.nf` permite especificar la cantidad de dígitos decimales a mostrar (donde `n` es el número de dígitos deseado).
*/

let decimalNumber = 3.14159
let messageDecimalF = String(format: "Número decimal con %%f: %f", decimalNumber)
let messageDecimalPrecise = String(format: "Número decimal con %%.2f: %.2f", decimalNumber, decimalNumber)
print(messageDecimalF)  // Imprime: Número decimal con %f: 3.141590
print(messageDecimalPrecise)  // Imprime: Número decimal con %.2f: 3.14

// MARK: - Formateo de Cadenas de Caracteres (`%@`)
/*:
 `%@` se utiliza para formatear cualquier objeto que conforme al protocolo `CustomStringConvertible`.
*/

let name = "Carlos"
let messageName = String(format: "Nombre con %%@: %@", name)
print(messageName)  // Imprime: Nombre con %@: Carlos

// MARK: - Formateo de Números Hexadecimales (`%x` y `%X`)
/*:
 - `%x` formatea números en base hexadecimal con letras minúsculas.
 - `%X` utiliza letras mayúsculas.
*/

let hexNumber = 255
let messageHex = String(format: "Número hexadecimal con %%x: %x", hexNumber)
let messageHexUppercase = String(format: "Número hexadecimal con %%X: %X", hexNumber)
print(messageHex)  // Imprime: Número hexadecimal con %x: ff
print(messageHexUppercase)  // Imprime: Número hexadecimal con %X: FF

// MARK: - Formateo en Notación Científica (`%e`)
/*:
 `%e` representa números en notación científica, donde el número se muestra como `a.eb`, con `a` como número significativo y `b` como exponente.
*/

let scientificNumber = 123456.789
let messageScientific = String(format: "Número en notación científica con %%e: %e", scientificNumber)
print(messageScientific)  // Imprime: Número en notación científica con %e: 1.234568e+05

// MARK: - Formateo Compacto (`%g`)
/*:
 `%g` usa notación científica o notación de punto flotante según el valor y precisión del número.
*/

let messageCompact = String(format: "Número con %%g: %g", scientificNumber)
print(messageCompact)  // Imprime: Número con %g: 123457

// MARK: - Formateo de Números con Separador de Miles
/*:
 Para formatear números con separadores de miles, usamos `NumberFormatter` para lograr un formato más legible.
*/

let numberWithSeparator = 1234567.89
let formatter = NumberFormatter()
formatter.numberStyle = .decimal
formatter.groupingSeparator = ","
formatter.decimalSeparator = "."
if let messageWithSeparator = formatter.string(from: NSNumber(value: numberWithSeparator)) {
    print("Número con separador de miles: \(messageWithSeparator)")  // Imprime: Número con separador de miles: 1,234,567.89
}

// MARK: - Uso de Funciones para Formatear Números
/*:
 Crear funciones para encapsular la lógica de formateo facilita su reutilización y mantenimiento.

 ### Función para formatear números decimales:
 Formatea un número decimal a una precisión específica y devuelve el resultado como un `String` formateado.

 - Parameters:
   - value: El valor decimal que se va a formatear.
   - precision: La cantidad de dígitos decimales que se desean mostrar.
 - Returns: Una cadena con el número formateado.
*/

func formatDecimal(_ value: Double, precision: Int) -> String {
    return String(format: "Número formateado: %.\(precision)f", value)
}

let formattedDecimal = formatDecimal(decimalNumber, precision: 2)
print(formattedDecimal)  // Imprime: Número formateado: 3.14

// MARK: - Resumen
/*:
 - **`%d` y `%i`**: Enteros decimales.
 - **`%f` y `%.nf`**: Números de punto flotante, con precisión personalizada.
 - **`%@`**: Cadenas de caracteres.
 - **`%x` y `%X`**: Números hexadecimales, con letras minúsculas y mayúsculas.
 - **`%e`**: Notación científica.
 - **`%g`**: Notación científica o de punto flotante, según el valor.
 - **`NumberFormatter`**: Para formateo de números con separadores de miles.
 - **Funciones de formateo**: Encapsulan la lógica de formateo para facilitar su reutilización.
*/

/*:
 Estos especificadores de formato permiten un control detallado sobre la presentación de datos en cadenas, facilitando la creación de mensajes y reportes en el formato deseado.
*/

//: [Next](@next)

