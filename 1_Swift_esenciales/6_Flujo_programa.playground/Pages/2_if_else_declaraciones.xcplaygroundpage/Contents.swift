//: [Previous](@previous)

import UIKit

/*:
 # Estructuras de Control If-Else en Swift

 ### Las estructuras de control `if-else` permiten ejecutar diferentes bloques de código según si se cumplen ciertas condiciones. A continuación, se presentan ejemplos que integran funciones y parámetros.

 ## Objetivo:
 Aprender a implementar estructuras `if-else` en Swift para tomar decisiones en el flujo del programa, manejando múltiples condiciones y operadores lógicos.

 */

// MARK: - Sintaxis Básica de If-Else
/*:
 La sintaxis básica de una estructura `if-else` en Swift es la siguiente:

 La función `verificarMayorDeEdad` recibe un parámetro `edad` de tipo `Int` y devuelve un `String` indicando si la persona es mayor de edad o no, según el valor del parámetro.

 ### Consideraciones:
 - La condición `if` verifica si `edad` es mayor o igual a 18.
 - Si la condición es verdadera, la función retorna `"Eres mayor de edad."`.
 - Si es falsa, se ejecuta el bloque de código del `else`, retornando `"Eres menor de edad."`.
 */

func verificarMayorDeEdad(edad: Int) -> String {
    if edad >= 18 {
        return "Eres mayor de edad."
    } else {
        return "Eres menor de edad."
    }
}

// Ejemplos de uso:
let resultado1 = verificarMayorDeEdad(edad: 20)
let resultado2 = verificarMayorDeEdad(edad: 16)

print(resultado1) // Imprime: Eres mayor de edad.
print(resultado2) // Imprime: Eres menor de edad.

// MARK: - If-Else con Múltiples Condiciones
/*:
 Puedes usar `else if` para manejar múltiples condiciones.

 La función `clasificarNota` recibe un parámetro `nota` de tipo `Double` y devuelve un `String` indicando la clasificación de la nota.

 ### Consideraciones:
 - Usamos `else if` para evaluar diferentes rangos de notas.
 - Si la nota es mayor o igual a 90, el resultado será `"Excelente"`. Si es mayor o igual a 80 pero menor a 90, será `"Muy buena"`, y así sucesivamente.
 - Este enfoque permite clasificar las notas en función de rangos predefinidos, asegurando claridad y escalabilidad en la lógica de clasificación.
 */

func clasificarNota(nota: Double) -> String {
    if nota >= 90 {
        return "Excelente"
    } else if nota >= 80 {
        return "Muy buena"
    } else if nota >= 70 {
        return "Buena"
    } else if nota >= 60 {
        return "Satisfactoria"
    } else {
        return "Insuficiente"
    }
}

// Ejemplos de uso:
let resultadoClasificacion1 = clasificarNota(nota: 85)
let resultadoClasificacion2 = clasificarNota(nota: 55)

print("Clasificación 1: \(resultadoClasificacion1)") // Imprime: Clasificación 1: Muy buena
print("Clasificación 2: \(resultadoClasificacion2)") // Imprime: Clasificación 2: Insuficiente

// MARK: - Uso de Operadores Lógicos
/*:
 Puedes combinar condiciones usando operadores lógicos como `&&` (AND) y `||` (OR).

 La función `verificarAcceso` acepta dos parámetros: `edad` de tipo `Int` y `tienePermiso` de tipo `Bool`. Si la edad es mayor o igual a 18 y se tiene permiso (`tienePermiso == true`), se retorna `"Acceso permitido."`. De lo contrario, se retorna `"Acceso denegado."`.

 ### Consideraciones:
 - El operador `&&` asegura que ambas condiciones deben ser verdaderas para otorgar acceso.
 - Si alguna de las dos condiciones es falsa, la función deniega el acceso.
 - Esta técnica es esencial cuando múltiples factores determinan el resultado de una decisión.
 */

func verificarAcceso(edad: Int, tienePermiso: Bool) -> String {
    if edad >= 18 && tienePermiso {
        return "Acceso permitido."
    } else {
        return "Acceso denegado."
    }
}

// Ejemplos de uso:
let resultadoAcceso1 = verificarAcceso(edad: 19, tienePermiso: true)
let resultadoAcceso2 = verificarAcceso(edad: 17, tienePermiso: false)

print(resultadoAcceso1) // Imprime: Acceso permitido.
print(resultadoAcceso2) // Imprime: Acceso denegado.

// MARK: - Ejemplo de un Sistema de Recompensas
/*:
 En este ejemplo, se determina si un usuario califica para una recompensa en función de su edad y número de puntos acumulados.

 La función `verificarRecompensa` toma dos parámetros: `edad` y `puntos`. Si el usuario es mayor de edad y tiene al menos 100 puntos, califica para una recompensa. Si no cumple estos requisitos, no califica.

 ### Consideraciones:
 - Se utilizan condicionales anidados para verificar tanto la edad como los puntos.
 - Esta estructura permite aplicar reglas adicionales dentro de las condiciones primarias, asegurando que solo se otorguen recompensas a usuarios calificados.
 - Es un ejemplo claro de cómo los condicionales pueden manejar reglas de negocio complejas.
 */

func verificarRecompensa(edad: Int, puntos: Int) -> String {
    if edad >= 18 {
        if puntos >= 100 {
            return "Calificas para una recompensa."
        } else {
            return "No calificas para una recompensa. Necesitas más puntos."
        }
    } else {
        return "Eres menor de edad. No calificas para una recompensa."
    }
}

func verificarRecompensaMejorada(edad: Int, puntos: Int) -> String {
    
    // Simplifica la lógica eliminando anidamiento mediante condiciones de salida temprana.
    guard edad >= 18 else {
        return "Eres menor de edad. No calificas para una recompensa."
    }
    
    guard puntos >= 100 else {
        return "No calificas para una recompensa. Necesitas más puntos."
    }
    
    return "Calificas para una recompensa."
}


// Ejemplos de uso:
let resultadoRecompensa1 = verificarRecompensa(edad: 20, puntos: 150)
let resultadoRecompensa2 = verificarRecompensa(edad: 16, puntos: 50)

let resultadoRecompensa3 = verificarRecompensaMejorada(edad: 20, puntos: 150)
let resultadoRecompensa4 = verificarRecompensaMejorada(edad: 16, puntos: 50)

print(resultadoRecompensa1) // Imprime: Calificas para una recompensa.
print(resultadoRecompensa2) // Imprime: Eres menor de edad. No calificas para una recompensa.
print(resultadoRecompensa3) // Imprime: Calificas para una recompensa.
print(resultadoRecompensa4) // Imprime: Eres menor de edad. No calificas para una recompensa.



/*:
 ## Buenas Prácticas

 1. **Condicionales Claros**:
    - **Qué es**: Mantén las condiciones de los `if` claras y fáciles de entender.
    - **Por qué es importante**: Evita errores lógicos y facilita la lectura del código.
    - **Ejemplo**: Prefiere `if edad >= 18 && tienePermiso` sobre condiciones muy largas y complejas.

 2. **Evita Anidación Innecesaria**:
    - **Qué es**: Reduce la cantidad de condicionales anidados cuando sea posible.
    - **Por qué es importante**: Mejora la legibilidad del código y evita confusiones.
    - **Ejemplo**: Usa `guard` en lugar de `if` para manejar casos de salida anticipada.

 3. **Uso de Operadores Lógicos**:
    - **Qué es**: Asegúrate de que el uso de operadores como `&&` y `||` esté justificado.
    - **Por qué es importante**: Garantiza que las condiciones sean explícitas y comprensibles.
    - **Ejemplo**: Prefiere `edad >= 18 && tienePermiso` sobre usar demasiadas combinaciones complejas.

 */

/*:
 ## Resumen claro de las reglas y escenarios de uso de guard e if:

 **Validaciones y condiciones negativas**:
 guard es ideal para validaciones rápidas y salidas tempranas. Permite verificar condiciones negativas al principio y salir del flujo si no se cumplen. Usar if en este caso genera más anidamiento, lo que puede dificultar la lectura.
 
 **Lógica condicional múltiple**:
 guard no es adecuado para manejar múltiples condiciones o ramas dentro de un mismo bloque, ya que está diseñado para salidas tempranas. En cambio, if es perfecto para manejar varias ramas condicionales de manera clara y sencilla.
 
 **Validaciones en un bucle**:
 guard es útil dentro de bucles para verificar condiciones y, en caso de no cumplirlas, continuar o romper el flujo. Si el flujo dentro del bucle es más complejo, if podría ser la opción adecuada para manejar esas lógicas más complicadas.
 
 **Bloques de decisión**:
 guard no está diseñado para tomar decisiones dentro de bloques condicionales complejos. Por el contrario, if es la herramienta más adecuada para evaluar y tomar decisiones basadas en diferentes condiciones.
 
 **En resumen**:
 Usa guard para limpiar y validar el flujo temprano, asegurando que las condiciones se cumplan antes de continuar. Usa if cuando necesites manejar decisiones más complejas o estructuras condicionales con múltiples ramas.
 */


//: [Next](@next)
