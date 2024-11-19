//: [Previous](@previous)
/*:
 # Comentarios en Swift
 ### Los comentarios son esenciales para agregar notas y explicaciones en el código sin que afecten su ejecución. Swift soporta varios tipos de comentarios: **comentarios de una línea**, **comentarios de múltiples líneas** y **comentarios de documentación**.
 */
import UIKit
// MARK: - Comentarios de Una Sola Línea
/*:
 Se utilizan dos barras inclinadas (`//`) para escribir comentarios de una sola línea. Todo el texto después de `//` en esa línea será ignorado por el compilador.
 */
let saludo = "Hola, mundo"  // Este es un comentario de una sola línea
print(saludo)  // Imprime "Hola, mundo"
/*:
 Los comentarios de una sola línea son útiles para agregar breves notas o explicar una línea específica de código.
 */

// MARK: - Comentarios de Múltiples Líneas
/*
 Los comentarios de múltiples líneas comienzan con `/*` y terminan con `*/`. Pueden abarcar más de una línea y son útiles para descripciones o explicaciones más largas.
 */
let ciudad = "Madrid"
/*
 Este es un comentario
 que abarca múltiples líneas.
 Es útil para agregar descripciones más detalladas en el código.
 */
print("Hola, \(ciudad)")  // Aquí se usa `ciudad` en lugar de un nombre genérico

// MARK: - Comentarios Anidados
/*:
 Swift permite anidar comentarios de múltiples líneas, es decir, incluir un comentario dentro de otro comentario. Esto es útil, por ejemplo, para desactivar temporalmente partes del código que ya contienen comentarios.
 */

let numero = 10
/*
 Este es un comentario de múltiples líneas
    
    /* Comentario anidado */
    Los comentarios pueden estar dentro de otros comentarios.
*/
print("Número: \(numero)")

// MARK: - Comentarios de Documentación
/*:
 Los comentarios de documentación se utilizan para generar documentación estructurada y automática sobre el código. Estos comentarios comienzan con tres barras inclinadas (`///`) y son importantes para describir funciones, clases, estructuras, propiedades y otros elementos del código.
 */
/// Esta función suma dos números enteros.
/// - Parameters:
///   - a: Primer número.
///   - b: Segundo número.
/// - Returns: La suma de ambos números.
func sumar(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let resultadoSuma = sumar(5, 3)
print("Resultado de la suma: \(resultadoSuma)")
/*:
 Los comentarios de documentación son esenciales para describir el propósito de clases, estructuras, funciones o propiedades, y mejoran la comprensión del código para otros desarrolladores. Puedes usar marcadores como `- Parameters:` y `- Returns:` para estructurar mejor la explicación.
 */

/// [Descripción General]
/// Describe de manera clara y concisa la función, método, clase o estructura. La descripción debe dar al lector
/// una idea rápida de qué hace este elemento de código y su propósito general. Evita detalles excesivos
/// aquí; esos irán en los campos específicos.
///
/// - Parameters:
///   - [nombreParametro1]: Describe el primer parámetro de la función.
///     - **¿Qué incluir?** Explica brevemente para qué se utiliza el parámetro. Si existen restricciones en su
///       valor o tipo, menciónalo aquí (por ejemplo, "Este valor debe ser mayor a cero").
///   - [nombreParametro2]: Describe el segundo parámetro de la función.
///     - **¿Qué incluir?** Cada parámetro debe estar claramente explicado. Si el valor tiene un propósito específico
///       o condiciona la ejecución, añádelo aquí.
///
/// - Throws: [ErrorType] Describe los errores o excepciones que puede lanzar la función.
///     - **¿Qué incluir?** Si la función puede lanzar errores, documenta aquí los posibles errores y bajo qué
///       circunstancias ocurren. Indica tanto el tipo de error (si existe una estructura específica, como `InvalidThresholdError`)
///       como la condición que lo desencadena.
///
/// - Returns: Describe el valor de retorno de la función.
///     - **¿Qué incluir?** Indica qué devuelve la función, su tipo, y cualquier característica importante sobre el
///       valor retornado. Menciona aspectos como si el valor depende de condiciones de los parámetros o si tiene un
///       formato específico.
///
/// - Precondition: Describe cualquier condición que deba cumplirse antes de ejecutar la función.
///     - **¿Qué incluir?** Si la función tiene alguna precondición (como que un parámetro no puede ser `nil` o debe
///       tener un valor mínimo), descríbelo aquí. Una precondición que no se cumpla puede llevar a un fallo en la ejecución.
///
/// - Postcondition: Define el estado esperado después de ejecutar la función.
///     - **¿Qué incluir?** Describe cualquier cambio esperado en el estado del programa después de la ejecución.
///       Por ejemplo, “La lista resultante no contiene valores menores a cero”. Útil para aclarar el efecto de la función.
///
/// - Complexity: Indica la complejidad temporal o espacial de la función.
///     - **¿Qué incluir?** Si la función tiene una complejidad notable (por ejemplo, O(n) o O(log n)), indícalo
///       aquí. Esto es especialmente relevante para funciones que procesan grandes cantidades de datos.
///
/// - Note: Proporciona información adicional o consideraciones sobre la función.
///     - **¿Qué incluir?** Añade detalles secundarios o aclaraciones que pueden ayudar al usuario, pero no son
///       esenciales. Por ejemplo, “Esta función no es segura para utilizarse en múltiples hilos”.
///
/// - Warning: Advierte sobre aspectos importantes o riesgos del uso de la función.
///     - **¿Qué incluir?** Si el uso de la función podría causar un problema (como pérdida de datos o errores), adviértelo aquí.
///       Este campo es útil para evitar usos indebidos o fuera de contexto.
///
/// - SeeAlso: Referencias a otros elementos relacionados.
///     - **¿Qué incluir?** Menciona otras funciones, clases o métodos que podrían ser relevantes en el mismo contexto
///       o que sean útiles para entender el funcionamiento o alternativas de esta función.
///
/// - Invariant: Explica cualquier propiedad que se mantendrá constante durante la ejecución.
///     - **¿Qué incluir?** Este campo es útil en funciones complejas o algoritmos, donde un valor debe permanecer
///       constante. Por ejemplo, “El tamaño de la lista de entrada no cambia”.
///
/// - Important: Resalta cualquier aspecto crucial del funcionamiento de la función.
///     - **¿Qué incluir?** Destaca un detalle fundamental que el usuario no debe pasar por alto. Por ejemplo,
///       “Esta función ejecuta el multiplicador antes de filtrar valores, lo cual afecta los resultados”.
///
/// - Example: Proporciona un ejemplo de uso claro y funcional de la función.
///     - **¿Qué incluir?** Ofrece un ejemplo en código para que el usuario entienda cómo utilizar la función.
///       Esto es útil para ilustrar casos específicos y contextos en los que se emplea la función.
/// Ejemplo de uso de la función `funcionEjemplo`:
///
/// ```swift
/// let resultado = funcionEjemplo(param1: 5, param2: 10)
/// print(resultado) // Imprime el resultado esperado basado en la lógica de `funcionEjemplo`
/// ```



// MARK: - Buenas Prácticas para Comentarios
/*:
 Algunas buenas prácticas a seguir al agregar comentarios en tu código son:

 1. **Escribe Comentarios Claros:** Explica el "por qué" del código, no solo lo que hace. Los comentarios deben agregar valor y mejorar la comprensión del código.
 2. **Mantén los Comentarios Actualizados:** Asegúrate de que los comentarios reflejen siempre el estado actual del código, ya que los comentarios desactualizados pueden causar confusión.
 3. **Documenta las APIs Públicas:** Usa comentarios de documentación en APIs públicas para facilitar el uso y comprensión del código por parte de otros desarrolladores.
 4. **Evita Comentarios Redundantes:** Si el código es lo suficientemente claro por sí mismo, evita comentarios innecesarios que repitan lo que ya está implícito.

 Los comentarios son herramientas poderosas para mejorar la legibilidad y la mantenibilidad del código, pero deben usarse de forma consciente y efectiva para evitar sobrecargar el código con información innecesaria.
 */

//: [Next](@next)

