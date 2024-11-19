//: [Previous](@previous)
import UIKit
/*:
 # Uso Básico de While
 ### La estructura de control `while` permite ejecutar un bloque de código mientras se cumpla una condición específica. A continuación, se presenta un ejemplo que usa un bucle `while` para contar hasta un número dado.
 
 ## Objetivo:
 Aprender a usar la estructura `while` para ejecutar un bloque de código repetidamente mientras se cumpla una condición.
 */

func contarHasta(limite: Int) {
    var contador = 1
    while contador <= limite {
        print("Contador: \(contador)")
        contador += 1
    }
    
    // optimizacion
//    (1...limite).forEach { contador in
//         print("Contador: \(contador)")
//     }
}

// Ejemplo de uso:
contarHasta(limite: 5)

// MARK: - Ejemplo de Suma Acumulativa
/*:
 En este ejemplo, se usa `while` para calcular la suma de los números hasta un límite.
 
 ## Consideraciones:
 - Este tipo de bucle es útil cuando no sabes cuántas veces debe ejecutarse el bloque, pero sí conoces la condición de paro (en este caso, el límite).
 - Al integrar variables como `sum` y `counter`, puedes realizar acumulaciones y otras operaciones iterativas.
 */

func sumaAcumulada(limite: Int) -> Int {
//    var suma = 0
//    var contador = 1
//    while contador <= limite {
//        suma += contador
//        contador += 1
//    }
//    return suma
    return (1...limite).reduce(0, +)
}

// Ejemplo de uso:
let resultadoSuma = sumaAcumulada(limite: 5)
print("La suma acumulativa hasta 5 es: \(resultadoSuma)") // Imprime: La suma acumulativa hasta 5 es: 15

// MARK: - Ejemplo de Validación de Entrada
/*:
 A continuación, se presenta un ejemplo donde se valida la entrada del usuario hasta que se proporcione un valor válido.
 
 ## Consideraciones:
 - En lugar de un `while` simple, usamos `repeat-while`, que garantiza que el código se ejecute al menos una vez.
 - Este enfoque es útil para pedir al usuario que ingrese datos correctos de forma iterativa.
 */

func solicitarNumeroValido() -> Int {
    var numero: Int?
    repeat {
        print("Por favor ingrese un número entre 1 y 10:")
        if let entrada = readLine(), let valor = Int(entrada), valor >= 1 && valor <= 10 {
            numero = valor
        } else {
            print("Número inválido. Intenta nuevamente.")
        }
    } while numero == nil
    
    return numero!
}

// Ejemplo de uso (ejecuta en un entorno que soporte la entrada del usuario):
// let numeroValido = solicitarNumeroValido()
// print("Número válido ingresado: \(numeroValido)")

//: [Next](@next)
