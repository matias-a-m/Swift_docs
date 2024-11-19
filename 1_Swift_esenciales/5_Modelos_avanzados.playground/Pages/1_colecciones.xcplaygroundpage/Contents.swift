//: [Previous](@previous)
import UIKit
/*:
 # Introducción a las Colecciones en Swift

 En Swift, las colecciones son estructuras de datos que permiten almacenar grupos de valores. Los tres tipos principales de colecciones son **Arrays**, **Conjuntos** y **Diccionarios**. Cada uno tiene características particulares que los hacen adecuados para diferentes necesidades en el desarrollo de aplicaciones.
*/

// MARK: - Arrays
/*:
 Un **Array** es una colección ordenada de elementos que se acceden mediante un índice. Los arrays permiten almacenar elementos del mismo tipo y son ideales cuando se necesita mantener un orden específico o acceder a los elementos por su posición.

 Ejemplo:
*/

var nombres: [String] = ["Alice", "Bob", "Charlie"]
print("Array de nombres: \(nombres)")

// MARK: - Conjuntos
/*:
 Un **Conjunto** (`Set`) es una colección desordenada de elementos únicos. Los conjuntos no permiten duplicados y son útiles cuando no se necesita un orden específico. Además, proporcionan operaciones de conjunto como la unión, intersección y diferencia.

 Ejemplo:
*/

var numeros: Set<Int> = [1, 2, 3, 4, 5]
print("Conjunto de números: \(numeros)")

// MARK: - Diccionarios
/*:
 Un **Diccionario** (`Dictionary`) es una colección desordenada de pares clave-valor. Cada clave debe ser única, y se usa para acceder a los valores asociados a estas claves.

 Ejemplo:
*/

var edades: [String: Int] = ["Alice": 30, "Bob": 25, "Charlie": 35]
print("Diccionario de edades: \(edades)")

// MARK: - Ejemplo de Uso en Aplicaciones Reales
/*:
 Imagina que estás desarrollando una aplicación para gestionar contactos. En este caso, puedes usar diferentes tipos de colecciones para almacenar y organizar los datos:

 - Un **Array** para almacenar una lista de nombres.
 - Un **Conjunto** para asegurar que no haya números de teléfono duplicados.
 - Un **Diccionario** para asociar los nombres con sus detalles de contacto (como el correo electrónico).

 Ejemplo:
*/

print("Ejemplo de uso de colecciones en una aplicación:")

let contactos: [String] = ["Alice", "Bob", "Charlie"]
let numerosTelefono: Set<String> = ["123-456-7890", "987-654-3210"]
let detallesContacto: [String: String] = ["Alice": "alice@example.com", "Bob": "bob@example.com"]

print("Contactos: \(contactos)")
print("Números de teléfono únicos: \(numerosTelefono)")
print("Detalles de contacto: \(detallesContacto)")

// MARK: - Buenas Prácticas
/*:
 A continuación, se presentan algunas buenas prácticas al trabajar con colecciones en Swift:

 1. **Selecciona el Tipo Adecuado**:
    - **Qué es**: Elige el tipo de colección que mejor se ajuste a tus necesidades de almacenamiento y acceso a datos.
    - **Por qué es importante**: Cada tipo de colección tiene características únicas que afectan el rendimiento y la funcionalidad de tu aplicación.
    - **Ejemplo**: Utiliza un array cuando necesites un orden específico y acceso por índice. Usa un conjunto cuando quieras garantizar que los elementos sean únicos sin importar el orden. Usa un diccionario para acceder rápidamente a datos mediante claves.

 2. **Manejo de Elementos Duplicados**:
    - **Qué es**: Evita duplicados en conjuntos y controla la adición de elementos duplicados en arrays.
    - **Por qué es importante**: Gestionar adecuadamente los duplicados asegura la integridad de los datos y previene errores.
    - **Ejemplo**: Antes de agregar un elemento a un conjunto, verifica que no exista ya.

 3. **Acceso Eficiente a Datos**:
    - **Qué es**: Utiliza las características específicas de cada colección para acceder a los datos de manera eficiente.
    - **Por qué es importante**: Optimizar el rendimiento y la claridad del código utilizando las herramientas adecuadas.
    - **Ejemplo**: Usa índices para acceder a los elementos en arrays, claves para acceder a valores en diccionarios y operaciones de conjunto para manipular elementos en conjuntos.
*/

//: [Next](@next)
