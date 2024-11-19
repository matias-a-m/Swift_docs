//: [Previous](@previous)
//:  # Variables, Constantes, Aritmética y Conversión de Tipos en Swift
//: **Variables y Constantes**: En Swift, las **variables** son valores que pueden cambiar durante la ejecución del programa. Se declaran utilizando la palabra clave `var`. Por otro lado, las **constantes** son valores que no cambian después de ser asignados, y se declaran utilizando `let`.
//:
//: **Aritmética en Swift**: Swift soporta una amplia gama de operaciones aritméticas con tipos de datos numéricos como `Int`, `Double`, `Float`. Las operaciones básicas incluyen la suma, resta, multiplicación y división, y también es posible realizar operaciones más avanzadas, como el cálculo de áreas y volúmenes.
//:
//: **Conversión de Tipos**: Swift es un lenguaje fuertemente tipado, lo que significa que cada variable tiene un tipo específico. A veces, es necesario convertir entre diferentes tipos de datos, como de `String` a `Double`, o de `Int` a `Float`. Para realizar estas conversiones, se pueden usar inicializadores o métodos específicos de cada tipo. Es importante manejar adecuadamente los errores que pueden surgir durante estas conversiones.

import Foundation

// MARK: - Declaración de Constantes
/*:
 Las constantes son valores inmutables una vez asignados. Usa `let` para declararlas.
 */

let velocidadDeLaLuz: Double = 299792458.0 // Velocidad de la luz en metros por segundo
let valorDePi: Double = 3.14159265359 // Valor constante de Pi

// Imprime los valores de las constantes
print("La velocidad de la luz es \(velocidadDeLaLuz) m/s")
print("El valor de π es \(valorDePi)")

// MARK: - Declaración de Variables
/*:
 Las variables pueden cambiar su valor durante la ejecución del programa. Usa `var` para declararlas.
 */

var temperaturaActual: Double = 20.0 // Temperatura actual en grados Celsius
var edadPersona: Int = 25 // Edad de la persona

// Modificación de variables
temperaturaActual += 5.0 // Aumenta la temperatura en 5°C
edadPersona += 1 // Incrementa la edad en 1 año

// Imprime los valores actualizados
print("La temperatura actual es \(temperaturaActual) grados Celsius")
print("La edad actual de la persona es \(edadPersona) años")

// MARK: - Aritmética Básica y Avanzada
/*:
 Realiza operaciones aritméticas básicas y avanzadas con enteros y flotantes.
 */

let distanciaRecorrida: Double = 150.0 // Distancia recorrida en kilómetros
let tiempoDeViaje: Double = 2.5 // Tiempo de viaje en horas

let velocidadPromedio = distanciaRecorrida / tiempoDeViaje // Calcula la velocidad promedio
print("La velocidad promedio durante el viaje es \(velocidadPromedio) km/h")

let radioDelCirculo: Double = 5.0 // Radio del círculo
let areaDelCirculo = valorDePi * pow(radioDelCirculo, 2) // Calcula el área del círculo
print("El área de un círculo con radio \(radioDelCirculo) es \(areaDelCirculo)")

// MARK: - Conversión de Tipos
/*:
 Convierte entre diferentes tipos de datos y maneja posibles errores.
 */

func convertirStringADouble(_ cadena: String) -> Double? {
    guard let valorDouble = Double(cadena) else {
        print("Error: No se pudo convertir la cadena a Double")
        return nil
    }
    return valorDouble
}

let conversionValida = convertirStringADouble("123.45") // Conversión válida
let conversionInvalida = convertirStringADouble("ABC") // Conversión inválida
print("Conversión válida: \(String(describing: conversionValida))")
print("Conversión inválida: \(String(describing: conversionInvalida))")

// Conversión de Int a Float
let entero: Int = 42
let flotante: Float = 3.14

let intAFloat = Float(entero) // Convierte Int a Float
print("Conversión de Int a Float: \(intAFloat)")

// Conversión de Float a Int (redondeo hacia abajo)
let floatAInt = Int(flotante) // Elimina la parte decimal
print("Conversión de Float a Int: \(floatAInt)")

// Conversión de Double a Int
let decimal: Double = 42.99
let intDesdeDouble = Int(decimal) // Redondea hacia abajo, eliminando los decimales
print("Conversión de Double a Int: \(intDesdeDouble)")

// Conversión de String a Double
let cadenaDecimal: String = "123.45"
if let decimalDesdeCadena = Double(cadenaDecimal) {
    print("Conversión de String a Double: \(decimalDesdeCadena)")
} else {
    print("Error: No se pudo convertir la cadena a Double")
}

// MARK: - Casting de Tipos
/*:
 Realiza casting seguro entre tipos de datos y maneja posibles fallos.
 */

class Animal {
    func hacerSonido() {
        print("El animal hace un sonido") // Método común para todos los animales
    }
}

class Perro: Animal {
    func ladrar() {
        print("¡Guau!") // Método específico para los perros
    }
}
    
class Gato: Animal {
    func maullar() {
        print("¡Miau!") // Método específico para los gatos
    }
}

let miAnimal: Animal = Perro() // El tipo base es Animal
miAnimal.hacerSonido() // El perro hace un sonido (método de Animal)

if let miPerro = miAnimal as? Perro {
    miPerro.ladrar() // Casting seguro: Si el objeto es un Perro, llamamos a su método específico
} else {
    print("Fallo en el casting, miAnimal no es del tipo Perro")
}

// Uso de as! con manejo de errores
let perroForzado = miAnimal as! Perro // Esto es seguro si estamos 100% seguros de que es un Perro
perroForzado.ladrar() // Llama al método específico de Perro

// MARK: - Optimización del Redondeo
/*:
 A continuación, se optimizan las operaciones de redondeo usando las técnicas más comunes en Swift.
 */

let valorFlotante: Float = 7.65

// Redondeo al entero más cercano
let valorRedondeado = valorFlotante.rounded()
print("Valor redondeado: \(valorRedondeado)")

// Redondeo hacia arriba
let redondeoHaciaArriba = valorFlotante.rounded(.up)
print("Redondeo hacia arriba: \(redondeoHaciaArriba)")

// Redondeo hacia abajo
let redondeoHaciaAbajo = valorFlotante.rounded(.down)
print("Redondeo hacia abajo: \(redondeoHaciaAbajo)")

// Redondeo con preferencia por números pares (redondeo bancario)
let redondeoBancario = valorFlotante.rounded(.toNearestOrEven)
print("Redondeo al número par más cercano: \(redondeoBancario)")

// MARK: - Ejemplo de Uso en Cálculos y Manejo de Datos
/*:
 Realiza cálculos y maneja datos con variables, constantes y conversiones.
 */

let ventasTotales: Double = 1500.0
let descuentoAplicado: Double = 0.1 // 10% de descuento
let ventasConDescuento = ventasTotales * (1 - descuentoAplicado) // Aplica el descuento
print("Las ventas totales con descuento son \(ventasConDescuento)")

// Variable de ejemplo para manejar edades
var numeroDeArticulos: Int = 100
let fechaDeNacimiento: String = "1995-06-15"
print("Número total de artículos en inventario: \(numeroDeArticulos)")
print("Fecha de nacimiento: \(fechaDeNacimiento)")

//: [Next](@next)
