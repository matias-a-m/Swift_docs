//: [Previous](@previous)
/*:
 # Operadores Lógicos en Swift
 ## Descripción General
 ### Los operadores lógicos son fundamentales para evaluar expresiones booleanas y tomar decisiones en el código. En Swift, estos operadores permiten combinar o negar condiciones, facilitando el control del flujo del programa. A continuación, exploraremos los operadores lógicos más comunes y cómo usarlos en diferentes escenarios.

 ## Tipos de Operadores Lógicos en Swift
 1. Operador AND (`&&`)
 2. Operador OR (`||`)
 3. Operador NOT (`!`)
 4. Combinación de Operadores
 */

// MARK: - Operador AND (`&&`)
/*:
El operador AND (`&&`) evalúa como `true` solo si **ambas** condiciones son verdaderas. Se utiliza cuando es necesario que todas las condiciones se cumplan para que la expresión sea verdadera.
 */
let esSoleado = true
let tieneTiempoLibre = false

let puedeIrAlParque = esSoleado && tieneTiempoLibre
print("¿Vamos al parque? \(puedeIrAlParque)")  // Output: false

// En este caso, aunque sea un día soleado, no hay tiempo libre, por lo que no se puede ir al parque.

// MARK: - Operador OR (`||`)
/*:
El operador OR (`||`) evalúa como `true` si **al menos una** de las condiciones es verdadera. Se utiliza cuando basta con que una de las condiciones se cumpla para que la expresión sea verdadera.
 */
let esFinDeSemana = true
let tienePlanes = false

let puedeIrDeEscapada = esFinDeSemana || tienePlanes
print("¿Vamos de escapada? \(puedeIrDeEscapada)")  // Output: true

// En este caso, como es fin de semana, podemos ir de escapada, sin importar los planes que tengamos.

// MARK: - Operador NOT (`!`)
/*:
El operador NOT (`!`) invierte el valor booleano de una condición. Se utiliza para negar una condición, cambiando `true` a `false` y viceversa.
 */
let noEsSoleado = !esSoleado
print("¿No es un día soleado? \(noEsSoleado)")  // Output: false

// Aquí, como el día es soleado, la expresión `noEsSoleado` evalúa a `false`.

// MARK: - Combinación de Operadores
/*:
Puedes combinar múltiples operadores lógicos para crear condiciones más complejas y precisas. Esto permite manejar casos más detallados y tomar decisiones más finas.
 */
let edad = 25
let esEstudiante = true
let tienePermiso = false

let puedeEntrar = (edad > 18 && esEstudiante) || tienePermiso
print("¿Puede entrar? \(puedeEntrar)")  // Output: true

// En este caso, como la persona es mayor de 18 años y es estudiante, puede entrar, a pesar de no tener permiso.

// MARK: - Usos Prácticos de Operadores Lógicos
/*:
 ## Validación de Formularios
 Los operadores lógicos se utilizan comúnmente en la validación de datos ingresados por el usuario para asegurar que cumplen con ciertos criterios.
 */
let edadUsuario = 20
let tieneMembresia = true

let accesoPermitido = edadUsuario >= 18 && tieneMembresia
print("Acceso permitido: \(accesoPermitido)")  // Output: true

// Aquí, el usuario tiene acceso porque cumple con ambos criterios: tiene 20 años y tiene membresía.

// MARK: - Control de Flujo en Aplicaciones
/*:
Los operadores lógicos también son útiles para controlar el flujo en una aplicación, como permitir acceso a funciones o mostrar mensajes basados en ciertas condiciones.
 */
let funcionDisponible = true
let usuarioRegistrado = false

let mostrarMensaje = funcionDisponible || usuarioRegistrado
print("Mostrar mensaje: \(mostrarMensaje)")  // Output: true

// En este caso, como la función está disponible, se muestra el mensaje, independientemente del estado del usuario.

// MARK: - Buenas Prácticas
/*:
 1. **Claridad en el código**: Usa operadores lógicos solo cuando las condiciones sean claras y no ambiguas. Esto mejora la legibilidad y el mantenimiento del código.
 2. **Uso de paréntesis**: En expresiones complejas, usa paréntesis para agrupar condiciones y hacer explícita la prioridad de los operadores. Aunque el operador AND tiene prioridad sobre OR, usar paréntesis puede evitar errores de interpretación.
 3. **Optimización de expresiones**: Los operadores lógicos no siempre evalúan ambos lados (evaluación perezosa). Aprovecha esto para mejorar la eficiencia, evaluando primero las condiciones más probables de ser verdaderas o falsas.
 4. **Comentarios útiles**: Incluye comentarios explicativos cuando las condiciones sean complejas, para mejorar la comprensión por parte de otros desarrolladores.
 */

//: [Next](@next)
