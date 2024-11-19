//: [Previous](@previous)
/*:
 # Comparación de datos en Swift
 ### Este Playground explora el uso de operadores de comparación en Swift para distintos tipos de datos.
 Los operadores de comparación son esenciales para tomar decisiones en el flujo de un programa y nos permiten evaluar relaciones entre valores.
 */
import UIKit
import Foundation

// MARK: - Declaración de Datos
/*:
 Empezaremos declarando diferentes tipos de datos que podemos comparar en Swift.
 */

// Enteros
let puntajeActual: Int = 85
let puntajeObjetivo: Int = 100

// Puntos flotantes
let precioProducto: Double = 29.99
let presupuestoMaximo: Double = 30.0

// Cadenas de texto
let nombreUsuarioIngresado: String = "user123"
let nombreUsuarioRegistrado: String = "user123"

// Booleanos
let autenticado: Bool = true
let modoOscuroActivo: Bool = false

// Fechas
let fechaLimite = Date().addingTimeInterval(60 * 60 * 24 * 7) // 1 semana a partir de hoy
let fechaActual = Date() 

// Enumeraciones
enum EstadoPedido {
    case pendiente
    case procesando
    case completado
    case cancelado
}

let estadoActualPedido: EstadoPedido = .procesando

// Tuplas
let usuario1 = (nombre: "Laura", edad: 30)
let usuario2 = (nombre: "Laura", edad: 30)
let usuario3 = (nombre: "Pedro", edad: 28)

// Colecciones
let tareasPendientes = ["Ejercicio", "Leer un libro", "Comprar víveres"]
let tareasCompletadas = ["Ejercicio"]

// MARK: - Operadores de Comparación
/*:
 Los operadores de comparación se utilizan para comparar dos valores y determinar su relación. Los operadores más comunes incluyen:
 - `==`: Igual a
 - `!=`: Diferente de
 - `<`: Menor que
 - `>`: Mayor que
 - `<=`: Menor o igual que
 - `>=`: Mayor o igual que
 */

// MARK: - Comparación de Enteros (Int)
if puntajeActual < puntajeObjetivo {
    print("¡Sigue esforzándote para alcanzar el objetivo!")
} else {
    print("¡Felicitaciones, has alcanzado tu objetivo!")
}

// MARK: - Comparación de Puntos Flotantes (Double)
if precioProducto <= presupuestoMaximo {
    print("El producto está dentro de tu presupuesto.")
} else {
    print("El producto supera tu presupuesto.")
}

// MARK: - Comparación de Cadenas (String)
if nombreUsuarioIngresado == nombreUsuarioRegistrado {
    print("Bienvenido, \(nombreUsuarioIngresado)!")
} else {
    print("Nombre de usuario incorrecto.")
}

// MARK: - Comparación de Booleanos (Bool)
if autenticado {
    print("Acceso concedido")
} else {
    print("Acceso denegado")
}

if modoOscuroActivo {
    print("Modo oscuro activado")
} else {
    print("Modo oscuro desactivado")
}

// MARK: - Comparación de Fechas (Date)
if fechaActual > fechaLimite {
    print("La fecha límite ha pasado")
} else {
    print("La fecha límite está próxima")
}

// MARK: - Comparación de Enumeraciones (enum)
switch estadoActualPedido {
case .pendiente:
    print("El pedido está pendiente.")
case .procesando:
    print("El pedido está en proceso.")
case .completado:
    print("El pedido ha sido completado.")
case .cancelado:
    print("El pedido ha sido cancelado.")
}

// MARK: - Comparación de Tuplas
if usuario1 == usuario2 {
    print("Usuario1 es igual a Usuario2")
} else {
    print("Usuario1 es diferente de Usuario2")
}

if usuario1 != usuario3 {
    print("Usuario1 es diferente de Usuario3")
}

// MARK: - Comparación de Colecciones

// Array
if tareasCompletadas.count < tareasPendientes.count {
    print("Aún tienes tareas pendientes por completar.")
}

// Set
let categoriasDisponibles: Set = ["Electrónica", "Muebles", "Ropa"]
let categoriasSeleccionadas: Set = ["Ropa", "Electrónica"]

if categoriasDisponibles.isSuperset(of: categoriasSeleccionadas) {
    print("Todas las categorías seleccionadas están disponibles.")
}

// Dictionary
let configuracionUsuario: [String: Bool] = ["notificaciones": true, "modoOscuro": true]
let configuracionPorDefecto: [String: Bool] = ["notificaciones": true, "modoOscuro": false]

if configuracionUsuario != configuracionPorDefecto {
    print("La configuración del usuario ha cambiado.")
}

// MARK: - Buenas Prácticas
/*:
 1. **Nombres Claros**: Utiliza nombres descriptivos para las variables, como `puntajeActual`, `precioProducto`, `autenticado`, etc.
 2. **Evita Redundancias**: No escribas expresiones como `if esVerdadero == true`. Usa simplemente `if esVerdadero`.
 3. **Uso Adecuado de Tipos**: Emplea el tipo de dato adecuado; por ejemplo, `Double` o `Decimal` para manejar valores monetarios, en lugar de `Int`.
 4. **Evita Hardcoding**: Define constantes o usa `Calendar` en lugar de valores constantes como `60 * 60 * 24 * 7`.
 5. **Optimización de Comparaciones**: Para grandes conjuntos de datos, utiliza estructuras como `Set` o `Dictionary` para obtener mejor rendimiento en las búsquedas.
 6. **Manejo de Errores**: Implementa el manejo adecuado de errores con `try`, `catch` y `throws` cuando trabajes con operaciones que pueden fallar, como lectura de archivos.
*/

//: [Next](@next)
