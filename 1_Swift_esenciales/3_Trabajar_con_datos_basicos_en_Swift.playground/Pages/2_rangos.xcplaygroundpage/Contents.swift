//: [Previous](@previous)
/*:
 # Rangos en Swift
 ## Descripción General
 ### En Swift, los rangos son estructuras que representan un intervalo de valores. Son útiles para validar datos, iterar sobre secuencias, acceder a subconjuntos de colecciones o definir límites en parámetros. Swift soporta varios tipos de rangos, cada uno adecuado para diferentes situaciones. En este desarrollo, exploraremos desde los rangos más simples hasta los más avanzados, como los rangos unilaterales.

 Tipos de Rangos en Swift:
 1. Rango Cerrado (`ClosedRange`)
 2. Rango Abierto (`Range`)
 3. Rangos Unilaterales
 - Rango unilateral inferior
 - Rango unilateral superior
 */

// MARK: - Rango Cerrado (`ClosedRange`)
/*:
 Un rango cerrado incluye tanto el límite inferior como el límite superior. Se define usando el operador `...`. Este tipo de rango es útil cuando se quiere especificar claramente ambos extremos.
 */
let rangoCerrado: ClosedRange<Int> = 1...10
let valor = 5

if rangoCerrado.contains(valor) {
    print("El valor \(valor) está dentro del rango.")
} else {
    print("El valor \(valor) está fuera del rango.")
}

// En este ejemplo, `rangoCerrado` incluye los valores desde 1 hasta 10, y el valor 5 está dentro de este rango.

for numero in 1...5 {
    print("Número: \(numero)")
}

// Este bucle imprime los números del 1 al 5 (inclusive) utilizando un rango cerrado.

// MARK: - Rango Abierto (`Range`)
/*:
 Un rango abierto incluye el límite inferior pero excluye el límite superior. Se define usando el operador `..<`. Es útil cuando se necesita trabajar con intervalos que no incluyen el valor final.
 */
let rangoAbierto: Range<Int> = 1..<10
let valor2 = 10

if rangoAbierto.contains(valor2) {
    print("El valor \(valor2) está dentro del rango.")
} else {
    print("El valor \(valor2) está fuera del rango.")
}

// En este caso, `rangoAbierto` incluye los valores desde 1 hasta 9, excluyendo el 10.

for numero2 in 1..<5 {
    print("Número: \(numero2)")
}
// Este bucle imprime los números del 1 al 4, ya que el 5 está excluido.

// MARK: - Rangos Unilaterales
/*:
 Los rangos unilaterales se utilizan cuando solo necesitas definir un extremo del rango, ya sea el límite superior o el límite inferior. Estos rangos son útiles para iterar hasta el final de una colección o desde un punto en adelante sin especificar un límite exacto.
 */

// MARK: -  Rango Unilateral Inferior
/*:
 Un rango unilateral inferior especifica solo el límite inferior y se extiende hacia valores superiores indefinidamente (o hasta donde lo permita el contexto). Se define utilizando `x...`.
 */
let rangoInferior = 5...
let valor3 = 10

if rangoInferior.contains(valor3) {
    print("El valor \(valor3) está dentro del rango inferior.")
} else {
    print("El valor \(valor3) está fuera del rango inferior.")
}

// Aquí, `rangoInferior` incluye todos los valores a partir de 5 en adelante.

// MARK: - Rango Unilateral Superior
/*:
 Un rango unilateral superior especifica solo el límite superior y se extiende hacia los valores más bajos indefinidamente. Se define utilizando `...x`.
 */
let rangoSuperior = ...5
let valor4 = 3

if rangoSuperior.contains(valor4) {
    print("El valor \(valor4) está dentro del rango superior.")
} else {
    print("El valor \(valor4) está fuera del rango superior.")
}

// En este caso, `rangoSuperior` incluye todos los valores hasta 5 (excluyendo valores superiores).

// MARK: - Usos Prácticos de Rangos
/*:
 ## Validación de Rangos en Formularios
 Los rangos son útiles para validar valores ingresados por el usuario, como la edad en un formulario de registro.
 */
let rangoEdadPermitida: ClosedRange<Int> = 18...65
let edadUsuario = 30

if rangoEdadPermitida.contains(edadUsuario) {
    print("Edad permitida.")
} else {
    print("Edad fuera del rango permitido.")
}

// Aquí validamos que la edad ingresada esté dentro del rango permitido para el registro.

// MARK: - Subconjuntos de Colecciones
/*:
 Los rangos también permiten extraer subconjuntos de colecciones, como acceder a un segmento de un array o string.
 */
let nombres = ["Ana", "Pedro", "Luis", "Sofía", "Miguel"]
let subArray = nombres[1...3]  // Accede a los elementos desde el índice 1 hasta el 3 (inclusivo)
print(subArray)  // ["Pedro", "Luis", "Sofía"]

// Este ejemplo muestra cómo acceder a un subconjunto del array `nombres` utilizando un rango cerrado.

let texto = "Bienvenido"
let indiceFinal = texto.index(texto.startIndex, offsetBy: 5)
let subTexto = texto[..<indiceFinal]  // "Bienv"
print(subTexto)  // "Bienv"

// Aquí, utilizamos un rango abierto para extraer los primeros 5 caracteres del string `texto`.

// MARK: - Buenas Prácticas
/*:
 1. **Usa nombres descriptivos para las variables de rangos:** Asegúrate de que los nombres de los rangos sean claros en su propósito. Ejemplos como `rangoEdadPermitida` o `rangoInferior` son fáciles de entender.
 2. **Evita el uso de valores mágicos:** Utiliza constantes con nombres descriptivos en lugar de valores hardcodeados. Por ejemplo, en `let rangoCerrado = 1...10`, el `10` debería ser una constante que indique un límite superior claro.
 3. **Optimiza el uso de rangos:** Usa rangos para operaciones eficientes de acceso a colecciones y evita la sobrecarga de bucles innecesarios.
 4. **Comprueba los límites de los rangos:** Asegúrate de que los valores estén dentro de los rangos y que no provoquen errores en operaciones como el acceso a índices fuera del rango en colecciones.

 Este Playground cubre el uso de rangos en Swift, desde los más básicos hasta los más avanzados, y sus aplicaciones en validaciones y manipulación de colecciones.
 */

//: [Next](@next)
