//: [Previous](@previous)
import UIKit
/*:
 # Estructura de Control Repeat-While en Swift

 ### La estructura de control repeat-while permite ejecutar un bloque de código al menos una vez y luego repetirlo mientras se cumpla una condición específica. A continuación, se presenta un ejemplo que integra funciones y parámetros.

 */

// MARK: - Uso Básico de Repeat-While
/*:
 En este ejemplo, se usa un bucle repeat-while para contar hasta un número dado.
 */
func contarHastaConRepeat(limite: Int) {
    var contador = 1
    repeat {
        print("Contador: \(contador)")
        contador += 1
    } while contador <= limite
}

// Ejemplo de uso
contarHastaConRepeat(limite: 5)

// MARK: - Suma Acumulativa con Repeat-While
/*:
 Aquí, se usa repeat-while para calcular la suma de los números hasta un límite.
 */
func sumaAcumulativaConRepeat(limite: Int) -> Int {
    var suma = 0
    var contador = 1
    repeat {
        suma += contador
        contador += 1
    } while contador <= limite
    return suma
}

// Ejemplo de uso
let resultadoSumaRepeat = sumaAcumulativaConRepeat(limite: 5)
print("La suma acumulativa hasta 5 es: \(resultadoSumaRepeat)") // Imprime: La suma acumulativa hasta 5 es: 15

// MARK: - Validación de Entrada con Repeat-While
/*:
 A continuación, se presenta un ejemplo donde se valida la entrada del usuario hasta que se proporcione un valor válido.
 */
func solicitarNumeroValidoRepeat() -> Int {
    var numero: Int?
    repeat {
        print("Introduce un número entre 1 y 10:")
        if let entrada = readLine(), let valor = Int(entrada), valor >= 1 && valor <= 10 {
            numero = valor
        } else {
            print("Número no válido. Inténtalo de nuevo.")
        }
    } while numero == nil
    
    return numero!
}

// Ejemplo de uso (ejecuta en un entorno que soporte la entrada del usuario)
// let numeroValidoRepeat = solicitarNumeroValidoRepeat()
// print("Número válido introducido: \(numeroValidoRepeat)")

//: [Next](@next)
