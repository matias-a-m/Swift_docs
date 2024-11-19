//: [Previous](@previous)
import UIKit
/*:
 # Iteración Básica sobre Arrays
 ### La estructura de control `for-in` permite iterar sobre colecciones, como arrays, diccionarios y rangos. A continuación, se presenta un ejemplo que imprime los nombres de una lista.
 
 ## Objetivo:
 Aprender a usar la estructura de control `for-in` para iterar sobre colecciones en Swift y realizar operaciones sobre cada elemento de la colección.
 */

func imprimirNombres(nombres: [String]) {
    for nombre in nombres {
        print("Nombre: \(nombre)")
    }
}

// Ejemplo de uso:
let listaDeNombres = ["Alice", "Bob", "Charlie"]
imprimirNombres(nombres: listaDeNombres)

// MARK: - Iteración sobre Diccionarios
/*:
 También puedes utilizar `for-in` para iterar sobre los pares clave-valor de un diccionario. A continuación, se muestra un ejemplo que imprime la edad de cada persona.
 
 ## Consideraciones:
 - Iteramos sobre el diccionario `edades` para obtener tanto las claves (`nombre`) como los valores (`edad`).
 - Esta técnica es útil cuando necesitas realizar operaciones sobre cada par clave-valor de un diccionario.
 */

func imprimirEdades(edades: [String: Int]) {
    for (nombre, edad) in edades {
        print("Nombre: \(nombre), Edad: \(edad)")
    }
}

// Ejemplo de uso:
let listaDeEdades = ["Alice": 30, "Bob": 25, "Charlie": 35]
imprimirEdades(edades: listaDeEdades)

// MARK: - Iteración sobre Rangos
/*:
 La estructura `for-in` también se puede usar para iterar sobre rangos. A continuación, se muestra un ejemplo que imprime los números del 1 al 5.
 
 ## Consideraciones:
 - Los rangos en Swift pueden ser abiertos o cerrados, permitiendo iterar sobre una secuencia de valores. En este caso, estamos usando un rango cerrado de 1 a 5.
 */

func imprimirNumeros(rango: ClosedRange<Int>) {
    for numero in rango {
        print("Número: \(numero)")
    }
}

// Ejemplo de uso:
imprimirNumeros(rango: 1...5)

// MARK: - Iteración con Enumeración
/*:
 Puedes usar el método `enumerated()` para obtener tanto el índice como el valor durante la iteración. A continuación, se muestra un ejemplo que imprime el índice y el nombre.
 
 ## Consideraciones:
 - `enumerated()` devuelve una secuencia de pares `(índice, valor)`, lo cual es útil cuando necesitas tanto la posición de un elemento como su valor en una colección.
 - Este método es especialmente útil cuando trabajas con arrays y necesitas saber la posición de un elemento.
 */

func imprimirNombresConIndices(nombres: [String]) {
    for (indice, nombre) in nombres.enumerated() {
        print("Índice: \(indice), Nombre: \(nombre)")
    }
}

// Ejemplo de uso:
imprimirNombresConIndices(nombres: listaDeNombres)

// MARK: - Ejemplo de Cálculo de Suma
/*:
 En este ejemplo, se usa `for-in` para calcular la suma de un array de números.
 
 ## Objetivo:
 Aprender a usar `for-in` para realizar cálculos sobre los elementos de un array.
 */

func calcularSuma(numeros: [Int]) -> Int {
//    var suma = 0
//    for numero in numeros {
//        suma += numero
//    }
//    return suma
    return numeros.reduce(0) { $0 + $1 }
}

// Ejemplo de uso:
let listaDeNumeros = [1, 2, 3, 4, 5]
let resultadoSuma = calcularSuma(numeros: listaDeNumeros)
print("La suma es: \(resultadoSuma)") // Imprime: La suma es: 15

// MARK: - Conclusión
/*:
 La estructura de control `for-in` es útil para iterar sobre colecciones y realizar operaciones en sus elementos. Al integrarla con funciones, se crea un código modular y más fácil de mantener.
 */

//: [Next](@next)
