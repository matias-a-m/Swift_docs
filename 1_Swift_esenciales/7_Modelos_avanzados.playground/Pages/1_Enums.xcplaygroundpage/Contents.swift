//: [Previous](@previous)
import UIKit

// MARK: - Declaración de un Enumerador Simple
/*:
 # Enumeradores en Swift

 Los enumeradores (`enum`) en Swift permiten definir un conjunto de valores relacionados que pueden representar diferentes estados o tipos. Son útiles cuando necesitas agrupar valores que tienen una relación lógica. En esta sección, exploraremos cómo declarar y utilizar enumeradores en Swift, incluyendo valores asociados y el uso del `switch` para gestionar diferentes casos.

 ## 1. Declaración de un Enumerador Simple

 A continuación se muestra un ejemplo donde representamos los días de la semana mediante un enumerador con valores asociados a enteros.
 */

enum DiaDeLaSemana: Int {
    case domingo = 1, lunes, martes, miércoles, jueves, viernes, sábado
}

// Uso del enumerador
let hoy = DiaDeLaSemana.viernes
print("Hoy es: \(hoy) (\(hoy.rawValue))") // Imprime: Hoy es: viernes (5)

// MARK: - Uso de Switch con Enumeradores
/*:
 ## 2. Mensajes Basados en el Enumerador

 Los enumeradores se integran muy bien con la declaración `switch`. A continuación, mostramos cómo puedes personalizar mensajes para diferentes días de la semana basados en el valor del enumerador.
 */

func mensajeParaElDia(dia: DiaDeLaSemana) {
    switch dia {
    case .domingo:
        print("¡Es domingo! Un buen día para descansar.")
    case .lunes:
        print("¡Es lunes! Una nueva semana comienza.")
    case .martes:
        print("¡Es martes! Mantente motivado.")
    case .miércoles:
        print("¡Es miércoles! Estamos a mitad de semana.")
    case .jueves:
        print("¡Es jueves! Ya casi es viernes.")
    case .viernes:
        print("¡Es viernes! El fin de semana está cerca.")
    case .sábado:
        print("¡Es sábado! Disfruta tu día.")
    }
}

// Ejemplo de uso
mensajeParaElDia(dia: hoy) // Imprime: ¡Es viernes! El fin de semana está cerca.

// MARK: - Enumeradores con Valores Asociados
/*:
 ## 3. Enumerador con Valores Asociados

 Los enumeradores también pueden almacenar valores adicionales asociados a cada uno de sus casos. Esto agrega flexibilidad al uso de los enumeradores. A continuación, representamos los resultados de un examen con dos posibles casos: uno para aprobado, que incluye una puntuación, y otro para reprobado, sin puntuación.
 */

enum ResultadoExamen {
    case aprobado(puntaje: Int)
    case reprobado
}

// MARK: - Evaluación de Resultados con Switch
/*:
 ## 4. Evaluación del Resultado del Examen

 Usamos `switch` para evaluar los resultados del examen. Aprovechamos los valores asociados en el caso aprobado para mostrar información adicional.
 */
func evaluarResultado(resultado: ResultadoExamen) {
    switch resultado {
    case .aprobado(let puntaje):
        let mensaje: String
        switch puntaje {
        case ..<4:
            mensaje = "Lo siento, no has aprobado. El puntaje obtenido es insuficiente. ¡No te rindas, intenta nuevamente!"
        case 4...7:
            mensaje = "¡Felicidades, has aprobado con un puntaje de \(puntaje)! Aunque aprobaste, deberás rendir un examen final. ¡Prepárate para continuar!"
        case 8...10:
            mensaje = "¡Excelente trabajo! Has promocionado la materia con un puntaje de \(puntaje). ¡Sigue así!"
        default:
            mensaje = "Error: Puntaje fuera de rango"
        }
        print(mensaje)
        
    case .reprobado:
        print("Lo siento, no has aprobado. El puntaje no alcanzó el mínimo. ¡No te preocupes, puedes intentarlo nuevamente!")
    }
}

// Ejemplo de uso
let resultadoExamen1 = ResultadoExamen.aprobado(puntaje: 7)
evaluarResultado(resultado: resultadoExamen1)

let resultadoExamen2 = ResultadoExamen.reprobado
evaluarResultado(resultado: resultadoExamen2) 

// MARK: - Buenas Prácticas
/*:
 ## 5. Buenas Prácticas con Enumeradores

 ### Usar Enumeradores para Agrupar Valores Relacionados
 Los enumeradores son ideales para representar un conjunto de valores relacionados. Ejemplos comunes incluyen los días de la semana, los estados de una aplicación o los tipos de respuestas en una encuesta. Esto mejora la legibilidad y seguridad en el manejo de los datos.

 ### Aprovechar los Valores Asociados
 Los valores asociados permiten adjuntar información adicional a cada caso del enumerador. Esto añade flexibilidad y facilita la gestión de escenarios complejos, como el caso de un examen con un puntaje específico.

 ### Control de Flujo con Switch
 Usar `switch` junto con enumeradores facilita el control de flujo al ejecutar código basado en el valor del enumerador. Además, cuando se utilizan valores asociados, `switch` proporciona una forma eficiente y segura de manejar diferentes casos.
 */

//: [Next](@next)
