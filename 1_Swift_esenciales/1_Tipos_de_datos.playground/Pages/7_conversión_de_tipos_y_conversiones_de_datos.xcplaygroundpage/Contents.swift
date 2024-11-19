//: [Previous](@previous)
/*:
 # Casting y Conversiones en Swift
 ### Este Playground explora cómo realizar casting y conversiones entre diferentes tipos de datos en Swift. A continuación, veremos cómo convertir entre enteros, flotantes, strings y tipos avanzados como `Double` e `Int`, y se destacarán las mejores prácticas para evitar errores comunes.
*/
import UIKit
// MARK: - Conversión de Enteros y Flotantes
// Conversión de Int a Float
let integer: Int = 42
let float: Float = 3.14

let integerToFloat = Float(integer)
print("Conversión de Int a Float: \(integerToFloat)") // Resultado esperado: 42.0

// Conversión de Float a Int (redondeo hacia abajo)
let floatToInteger = Int(float)
print("Conversión de Float a Int: \(floatToInteger)") // Resultado esperado: 3

// MARK: -  Casting de Tipos
/*:
 El casting permite convertir un tipo de dato en otro tipo compatible en Swift. Es útil cuando se trabaja con clases base y derivadas, pero es importante hacerlo de manera segura.
*/

class Animal {
    func makeSound() {
        print("El animal hace un sonido")
    }
}

class Dog: Animal {
    func bark() {
        print("¡Guau!")
    }
}

class Cat: Animal {
    func meow() {
        print("¡Miau!")
    }
}

// Casting a una clase derivada
let myAnimal: Animal = Cat()
myAnimal.makeSound()

// Intentamos hacer un casting a Dog de manera segura
if let myDog = myAnimal as? Dog {
    myDog.bark()
} else {
    print("Error de casting: myAnimal no es un tipo de Dog.")
}

// MARK: -  Conversión de Strings
/*:
 Convertir un `String` a otros tipos de datos, como `Int` o `Double`, es común. Es esencial hacerlo de forma segura para evitar errores en tiempo de ejecución.
*/

let numberAsString: String = "123"
let convertedNumber = Int(numberAsString)

if let convertedNumber = convertedNumber {
    print("Conversión de String a Int: \(convertedNumber)") // Resultado esperado: 123
} else {
    print("Error: No se pudo convertir el String '\(numberAsString)' a Int.")
}

// MARK: - Conversión Avanzada entre `Double` e `Int`
/*:
 Aquí veremos cómo convertir entre `Double` e `Int`. Hay que tener cuidado de que el valor decimal se pierda durante la conversión.
*/

let decimal: Double = 42.99
let integerFromDouble = Int(decimal)
print("Conversión de Double a Int: \(integerFromDouble)") // Resultado esperado: 42

let decimalString: String = "123.45"
if let decimalFromString = Double(decimalString) {
    print("Conversión de String a Double: \(decimalFromString)") // Resultado esperado: 123.45
} else {
    print("Error: No se pudo convertir el String '\(decimalString)' a Double.")
}

// MARK: -  Manejo de Conversiones Inseguras
/*:
 Las conversiones de `String` a tipos numéricos pueden fallar si el `String` no contiene un valor válido. Aquí mostramos cómo manejar este caso usando `guard let` para verificar si la conversión es exitosa.
 */

let possibleNumberAsString: String = "abc"
if let validNumber = Int(possibleNumberAsString) {
    print("Conversión exitosa: \(validNumber)")
} else {
    print("Error: No se pudo convertir '\(possibleNumberAsString)' a Int.")
}

// MARK: - Uso de `NumberFormatter` para Conversión de Strings a Números
/*:
 Cuando trabajamos con cadenas de texto que representan números con puntos decimales, es preferible usar un `NumberFormatter` para manejar correctamente la conversión según el formato local.
 */

let formattedString: String = "123,45"
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = .decimal
numberFormatter.locale = Locale(identifier: "es_ES") // Forzar la configuración regional española

if let formattedNumber = numberFormatter.number(from: formattedString)?.doubleValue {
    print("Conversión con NumberFormatter: \(formattedNumber)") // Resultado esperado: 123.45
} else {
    print("Error: No se pudo convertir el String '\(formattedString)' a Double con el formato local.")
}

// MARK: - Buenas Prácticas
/*:
1. **Verificación de Conversiones**: Siempre verifica si la conversión es exitosa usando `guard let`, `if let`, o `do-try-catch` para evitar errores en tiempo de ejecución. Esto previene problemas de desbordamiento o pérdida de datos.
2. **Uso de `as?` para Casting Seguro**: Utiliza `as?` para realizar casting seguro y manejar posibles fallos. El uso de `guard` es recomendado cuando se espera una conversión exitosa.
3. **Uso de `NumberFormatter`**: Utiliza `NumberFormatter` cuando necesites convertir cadenas que representen números en diferentes formatos (como con comas decimales).
4. **Manejo de Errores**: Siempre que la conversión pueda fallar, maneja el error de manera clara y con un mensaje útil para el usuario.
*/


//: [Next](@next)

