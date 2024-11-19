//: [Previous](@previous)
/*:
 # Tuplas y Conjuntos en Swift
 ### En esta lección, exploraremos el uso de **tuplas** y **conjuntos** en Swift. Las **tuplas** permiten agrupar varios valores en una única entidad, mientras que los **conjuntos** (`Set`) son colecciones no ordenadas de elementos únicos. Ambos conceptos son fundamentales para estructurar datos de manera eficiente en Swift.
 */
import UIKit
// MARK: - Tuplas en Swift
/*:
 Las tuplas te permiten agrupar múltiples valores, que pueden ser de diferentes tipos de datos. Las tuplas son útiles cuando necesitas almacenar varios elementos relacionados entre sí, como los detalles de una persona (nombre, edad, altura).
 */

// Declaración de una tupla con diferentes tipos de datos
let persona = ("Juan", 28, 1.75)

// Acceso a los elementos de la tupla usando índices
let nombre = persona.0
let edad = persona.1
let altura = persona.2

// Imprime los datos de la tupla
print("Nombre: \(nombre), Edad: \(edad), Altura: \(altura)m")

// MARK: - Tuplas Nombradas
/*:
 Las tuplas pueden tener nombres para cada uno de sus valores, lo que facilita la lectura y comprensión del código.
 */
// Tupla con valores nombrados para mayor claridad
let personaNombrada = (nombre: "Ana", edad: 25, altura: 1.65)
print("Nombre: \(personaNombrada.nombre), Edad: \(personaNombrada.edad), Altura: \(personaNombrada.altura)m")

// MARK: - Uso de Tuplas como Retornos de Funciones
/*:
 Las tuplas son útiles cuando necesitas devolver múltiples valores desde una función sin la necesidad de crear estructuras adicionales. Esto puede ser útil, por ejemplo, para devolver coordenadas geográficas.
 */

// Función que retorna una tupla con coordenadas geográficas
func obtenerCoordenadas() -> (latitud: Double, longitud: Double) {
    return (37.7749, -122.4194)
}

// Obtención de coordenadas geográficas
let coordenadas = obtenerCoordenadas()
print("Latitud: \(coordenadas.latitud), Longitud: \(coordenadas.longitud)")

// MARK: - Desempaquetado de Tuplas
/*:
 Puedes desempaquetar (descomponer) los valores de una tupla en variables individuales para un acceso más directo y limpio.
 */
// Desempaquetando los valores de la tupla en variables individuales
let (nombrePersona, edadPersona, alturaPersona) = persona
print("Nombre: \(nombrePersona), Edad: \(edadPersona), Altura: \(alturaPersona)m")

// MARK: - Conjuntos (Set) en Swift
/*:
 Un conjunto en Swift es una colección no ordenada de elementos únicos. Los conjuntos son útiles cuando necesitas asegurarte de que no haya elementos duplicados. Además, las operaciones de conjuntos como unión, intersección y diferencia pueden ser muy útiles para manipular colecciones de datos.
 
 ### Creación de un Conjunto
 Puedes crear un conjunto utilizando la sintaxis de inicialización con llaves `{}`. Los conjuntos garantizan que no haya elementos duplicados.
 */

// Declaración de un conjunto de frutas
let frutas: Set<String> = ["Manzana", "Naranja", "Plátano", "Uva", "Manzana"]
print("Frutas: \(frutas)") // "Manzana" aparecerá solo una vez

// MARK: - Operaciones en Conjuntos
/*:
 Swift proporciona varias operaciones útiles para trabajar con conjuntos. A continuación se muestran ejemplos de las operaciones de unión, intersección y diferencia.
 */

// Declaración de dos conjuntos de enteros
let conjuntoA: Set<Int> = [1, 2, 3, 4, 5]
let conjuntoB: Set<Int> = [4, 5, 6, 7, 8]

// Unión: combina todos los elementos de ambos conjuntos sin duplicados
let conjuntoUnion = conjuntoA.union(conjuntoB)
print("Unión: \(conjuntoUnion)")

// Intersección: devuelve solo los elementos que están en ambos conjuntos
let conjuntoInterseccion = conjuntoA.intersection(conjuntoB)
print("Intersección: \(conjuntoInterseccion)")

// Diferencia: devuelve los elementos que están en el primer conjunto pero no en el segundo
let conjuntoDiferencia = conjuntoA.subtracting(conjuntoB)
print("Diferencia: \(conjuntoDiferencia)")

// MARK: - Verificación de Pertenencia y Otras Operaciones
/*:
 Puedes verificar si un conjunto contiene un elemento, si es un subconjunto de otro conjunto, o si es disjunto (sin elementos en común) con otro conjunto.
 */

// Declaración de un conjunto de números
let numeros: Set<Int> = [1, 2, 3, 4, 5]

// Verificar si el conjunto contiene un elemento
let contieneTres = numeros.contains(3)
print("¿El conjunto contiene el número 3?: \(contieneTres)")

// Verificar si un conjunto es subconjunto de otro
let subconjunto: Set<Int> = [1, 2]
let esSubconjunto = subconjunto.isSubset(of: numeros)
print("¿Es un subconjunto?: \(esSubconjunto)")

// Verificar si un conjunto es disjunto (sin elementos en común)
let conjuntoDisjunto: Set<Int> = [6, 7, 8]
let esDisjunto = conjuntoDisjunto.isDisjoint(with: numeros)
print("¿Es disjunto?: \(esDisjunto)")

// MARK: - Buenas Prácticas con Conjuntos
/*:
Al trabajar con conjuntos, es importante seguir ciertas buenas prácticas para garantizar la eficiencia y claridad del código:
 1. **Uso Adecuado de Conjuntos:** Utiliza conjuntos cuando necesites almacenar elementos únicos, evitando duplicados.
 2. **Operaciones de Conjuntos:** Aprovecha las operaciones de unión, intersección y diferencia para manipular conjuntos de manera eficiente.
 3. **Optimización de Búsqueda:** Los conjuntos en Swift utilizan una implementación basada en hash, lo que garantiza una búsqueda rápida de elementos.
 */

//: [Next](@next)
