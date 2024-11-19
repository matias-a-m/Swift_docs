//: [Previous](@previous)
/*:
 # Aserciones y Precondiciones en Swift

 ## Descripción general
 
 ### En Swift, las aserciones y precondiciones se utilizan para verificar que una condición específica se cumpla durante la ejecución del programa. Estas herramientas son útiles para detectar errores en tiempo de ejecución, especialmente durante la fase de desarrollo, y aseguran que el código cumpla ciertos criterios antes de continuar su ejecución.

 Las aserciones y precondiciones permiten garantizar la integridad del programa al verificar condiciones que, si fallan, indican errores críticos.

 ## Tipos de verificaciones:
 
 1. Aserciones (`assert`)
 2. Precondiciones (`precondition`)
 */

// MARK: - 1. Aserciones (`assert`)
/*:
 Las aserciones son verificaciones que se usan durante el desarrollo. Si una aserción falla, el programa se detiene y lanza un error. Son ideales para asegurarse de que las suposiciones sobre el código se mantengan válidas en tiempo de depuración.
*/
let age = 20
assert(age >= 18, "La edad debe ser mayor o igual a 18")

/*:
 En este ejemplo, `assert` verifica que la variable `age` sea mayor o igual a 18. Si la condición no se cumple, el programa se detiene y muestra el mensaje "La edad debe ser mayor o igual a 18".

 Nota: Las aserciones son ignoradas en las compilaciones optimizadas para producción, lo que las convierte en herramientas ideales para detectar problemas durante la fase de desarrollo.
 */

// MARK: - 2. Precondiciones (`precondition`)
/*:
 Las precondiciones funcionan de manera similar a las aserciones, pero se evalúan en todas las configuraciones, incluidas las compilaciones en producción. Se utilizan cuando una condición crítica debe ser verdadera para que el programa continúe correctamente.
*/
let indices = [0, 1, 2, 3]
let index = 2 // Cambiado el índice a un valor válido

precondition(index >= 0 && index < indices.count, "El índice está fuera de rango")

print(indices[index])

/*:
 En este caso, `precondition` garantiza que el índice esté dentro de los límites válidos del array `indices`. Si la condición no se cumple, el programa se detiene, ya que se trata de un error crítico que no debería ocurrir incluso en producción.

 Nota: Las precondiciones son útiles para garantizar que el código cumpla condiciones esenciales en cualquier entorno, ya sea de desarrollo o de producción.
 */

// MARK: - 3. Diferencias entre `assert` y `precondition`
/*:
 - **Aserciones (`assert`)**: Solo se evalúan en las compilaciones de depuración, lo que las hace útiles para verificar supuestos durante el desarrollo.
 - **Precondiciones (`precondition`)**: Se evalúan en todas las compilaciones, lo que asegura que las condiciones críticas se cumplan en producción.
 */

// MARK: - 4. Usos comunes
/*:
 Aserciones y precondiciones se pueden usar para validar parámetros, asegurarse de que un cálculo tiene sentido, o prevenir estados inválidos en una aplicación.
*/
// Ejemplo: Validación de parámetros en una función
func validateAge(_ age: Int) {
    precondition(age >= 0 && age <= 120, "La edad debe estar entre 0 y 120")
}

validateAge(25)  // Pasa sin problemas
// validateAge(-5)  // Fallaría porque la edad es negativa

/*:
 Este ejemplo muestra cómo utilizar `precondition` para garantizar que la edad ingresada por el usuario esté dentro de un rango válido antes de continuar con el resto del código.
 */

// MARK: - Conclusión
/*:
 Aserciones y precondiciones son herramientas poderosas en Swift para garantizar la correcta ejecución del programa al verificar que se cumplan condiciones críticas. Usar aserciones durante el desarrollo y precondiciones en entornos de producción permite detectar errores de manera temprana y robustecer la lógica del código.
 */

// MARK: - Recomendaciones
/*:
 1. **Usar `assert` solo durante el desarrollo**: Las aserciones deben ser usadas solo en entornos de desarrollo o depuración, ya que se ignoran en compilaciones optimizadas para producción. No deberías confiar en ellas para manejar errores críticos en producción.

 2. **Usar `precondition` para condiciones críticas**: Para condiciones que son absolutamente esenciales para la correcta ejecución de tu código, como índices válidos o valores en rangos específicos, utiliza `precondition` para asegurar que se cumplan incluso en producción.

 3. **Mensajes claros y detallados**: Los mensajes de error deben ser claros y proporcionar información útil para depurar. Esto es especialmente importante en precondiciones, ya que afectan la estabilidad del código en producción.

 4. **Evitar el uso excesivo de `precondition`**: No uses `precondition` para validar entradas o errores que puedan ocurrir en situaciones comunes. En lugar de eso, usa métodos como `guard` o `if let` para manejar errores de manera más controlada.

 5. **Pruebas exhaustivas**: Es vital asegurarse de que todos los casos de uso de `assert` y `precondition` estén cubiertos por pruebas adecuadas. Esto te permitirá detectar problemas antes de que lleguen a producción.
 */

//: [Next](@next)
