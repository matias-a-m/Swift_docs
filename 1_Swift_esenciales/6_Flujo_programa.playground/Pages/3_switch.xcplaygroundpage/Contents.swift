//: [Previous](@previous)
import UIKit

/*:
 # Sintaxis Básica de Switch
 ### Las estructuras de control `switch` permiten evaluar una variable contra múltiples posibles valores y ejecutar un bloque de código basado en la coincidencia. A continuación, se presenta un ejemplo que clasifica los días de la semana.
 */

// MARK: - Clasificación de Días de la Semana
/*:
 La función `clasificarDia` toma un parámetro `dia` de tipo `Int` que representa el número del día de la semana y retorna el nombre correspondiente del día.

 ### Consideraciones:
 - El `switch` evalúa el valor de `dia` y ejecuta el bloque de código correspondiente.
 - El caso `default` se usa para manejar cualquier valor fuera de los rangos esperados.
 */

func clasificarDia(dia: Int) -> String {
    switch dia {
    case 1:
        return "Lunes"
    case 2:
        return "Martes"
    case 3:
        return "Miércoles"
    case 4:
        return "Jueves"
    case 5:
        return "Viernes"
    case 6:
        return "Sábado"
    case 7:
        return "Domingo"
    default:
        return "Día inválido"
    }
}

// Ejemplos de uso
let resultadoDia1 = clasificarDia(dia: 3)
let resultadoDia2 = clasificarDia(dia: 8)

print("Día 3 es: \(resultadoDia1)") // Imprime: Día 3 es: Miércoles
print("Día 8 es: \(resultadoDia2)") // Imprime: Día 8 es: Día inválido

// MARK: - Uso de Rangos
/*:
 Puedes usar rangos en un `switch` para evaluar un conjunto de valores. A continuación, un ejemplo que clasifica las calificaciones de un estudiante.

 ### Consideraciones:
 - El `switch` con rangos es eficiente cuando tienes un conjunto de valores consecutivos.
 - Usar rangos permite cubrir intervalos de valores sin tener que escribir múltiples `case`.
 */

func clasificarNota(puntaje: Int) -> String {
    switch puntaje {
    case 90...100:
        return "Excelente"
    case 80..<90:
        return "Muy buena"
    case 70..<80:
        return "Buena"
    case 60..<70:
        return "Satisfactoria"
    case 0..<60:
        return "Insuficiente"
    default:
        return "Puntaje inválido"
    }
}

// Ejemplos de uso
let resultadoNota1 = clasificarNota(puntaje: 85)
let resultadoNota2 = clasificarNota(puntaje: -5)

print("Nota 1: \(resultadoNota1)") // Imprime: Nota 1: Muy buena
print("Nota 2: \(resultadoNota2)") // Imprime: Nota 2: Puntaje inválido

// MARK: - Uso de Tuplas
/*:
 El `switch` también se puede utilizar con tuplas para evaluar múltiples valores. A continuación, un ejemplo que determina el estado del tráfico basado en un semáforo.

 ### Consideraciones:
 - Usar tuplas permite evaluar más de una variable en una sola condición, facilitando la lógica compleja.
 - Los patrones como `let` y `where` permiten agregar más flexibilidad a las condiciones.
 */

func estadoSemaforo(color: String, tiempo: Int) -> String {
    switch (color, tiempo) {
    case ("rojo", _):
        return "Detenerse"
    case ("verde", let t) where t > 0:
        return "Avanzar por \(t) segundos"
    case ("amarillo", _):
        return "Precaución"
    default:
        return "Estado inválido"
    }
}

// Ejemplos de uso
let resultadoSemaforo1 = estadoSemaforo(color: "verde", tiempo: 30)
let resultadoSemaforo2 = estadoSemaforo(color: "rojo", tiempo: 0)

print("Semáforo 1: \(resultadoSemaforo1)") // Imprime: Semáforo 1: Avanzar por 30 segundos
print("Semáforo 2: \(resultadoSemaforo2)") // Imprime: Semáforo 2: Detenerse

// MARK: - Ejemplo de Clasificación de Meses
/*:
 En este ejemplo, se utiliza un `switch` para clasificar los meses del año según la estación.

 ### Consideraciones:
 - Usamos el `switch` para agrupar los meses por estaciones.
 - La estructura mejora la legibilidad al separar claramente las estaciones.
 */

func clasificarMes(mes: Int) -> String {
    switch mes {
    case 3, 4, 5:
        return "Primavera"
    case 6, 7, 8:
        return "Verano"
    case 9, 10, 11:
        return "Otoño"
    case 12, 1, 2:
        return "Invierno"
    default:
        return "Mes inválido"
    }
}

// Ejemplos de uso
let resultadoMes1 = clasificarMes(mes: 4)
let resultadoMes2 = clasificarMes(mes: 13)

print("Mes 4 es: \(resultadoMes1)") // Imprime: Mes 4 es: Primavera
print("Mes 13 es: \(resultadoMes2)") // Imprime: Mes 13 es: Mes inválido

// MARK: - Conclusión
/*:
 Las estructuras de control `switch` son útiles para evaluar una variable contra múltiples valores y pueden mejorar la legibilidad del código en comparación con múltiples sentencias `if-else`. Al integrarlas con funciones, se crea un código modular y más fácil de mantener.
 */


//: [Next](@next)
