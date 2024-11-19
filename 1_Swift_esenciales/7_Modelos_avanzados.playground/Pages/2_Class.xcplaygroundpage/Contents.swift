//: [Previous](@previous)
import UIKit

// MARK: - Clases en Swift
/*:
 # Clases en Swift

 Las clases en Swift son tipos que permiten crear objetos con propiedades y métodos. En esta sección, aprenderemos cómo declarar y usar clases, incluyendo conceptos importantes como la herencia y los métodos estáticos.
 */

// MARK: - Declaración de una Clase
/*:
 ## 1. Definir una Clase

 En Swift, una clase se utiliza para representar un objeto que tiene propiedades y comportamientos (métodos). Vamos a crear una clase llamada `Persona` con dos propiedades básicas: `nombre` y `edad`.
 */

class Persona {
    // Propiedades
    var nombre: String
    var edad: Int

    // Inicializador
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }

    // Método para presentar a la persona
    func presentar() {
        print("Hola, soy \(nombre) y tengo \(edad) años.")
    }
}

// MARK: - Creación de Instancias
/*:
 ## 2. Crear Instancias de una Clase

 Una vez que has definido una clase, puedes crear instancias (objetos) de esa clase, es decir, crear objetos con los valores deseados para las propiedades.
 */

let persona1 = Persona(nombre: "Alice", edad: 30)
let persona2 = Persona(nombre: "Bob", edad: 25)

// Llamando al método presentar para cada persona
persona1.presentar() // Imprime: Hola, soy Alice y tengo 30 años.
persona2.presentar() // Imprime: Hola, soy Bob y tengo 25 años.

// MARK: - Herencia de Clases
/*:
 ## 3. Herencia de Clases

 En Swift, las clases pueden heredar propiedades y métodos de otras clases. Esto permite crear una clase hija que comparte comportamientos de una clase base. A continuación, creamos una clase `Estudiante` que hereda de la clase `Persona`.
 */

class Estudiante: Persona {
    var carrera: String

    // Inicializador
    init(nombre: String, edad: Int, carrera: String) {
        self.carrera = carrera
        super.init(nombre: nombre, edad: edad)
    }

    // Método para presentar al estudiante (sobrescribimos el método de la clase base)
    override func presentar() {
        print("Hola, soy \(nombre), tengo \(edad) años y estudio \(carrera).")
    }
}

// MARK: - Creación de Instancias de Clases Derivadas
/*:
 ## 4. Crear Instancias de Clases Derivadas

 Puedes crear instancias de la clase derivada `Estudiante` y llamar a los métodos definidos en ella. Observa cómo el método `presentar` se sobrescribe para ofrecer un comportamiento específico para los estudiantes.
 */

let estudiante1 = Estudiante(nombre: "Charlie", edad: 22, carrera: "Ingeniería")
estudiante1.presentar() // Imprime: Hola, soy Charlie, tengo 22 años y estudio Ingeniería.

// MARK: - Uso de Métodos de Clases
/*:
 ## 5. Métodos Estáticos y de Clase

 Las clases pueden tener métodos estáticos y de clase que se pueden llamar sin necesidad de crear una instancia de la clase. A continuación, creamos una clase `MathHelper` que tiene un método estático para calcular el cuadrado de un número.
 */

class MathHelper {
    // Método estático para calcular el cuadrado de un número
    static func cuadrado(_ numero: Int) -> Int {
        return numero * numero
    }
}

// Llamando al método estático sin crear una instancia
let resultado = MathHelper.cuadrado(5)
print("El cuadrado de 5 es \(resultado).") // Imprime: El cuadrado de 5 es 25.

// MARK: - Buenas Prácticas
/*:
 ## 6. Buenas Prácticas con Clases

 ### 1. Usar Clases para Representar Objetos Complejos
 Las clases son ideales para representar objetos con estado (propiedades) y comportamiento (métodos). Utiliza clases cuando necesites agrupar estos elementos.
   - **Ejemplo**: Usa una clase `Persona` para representar a una persona con propiedades como nombre y edad, y métodos como `presentar`.

 ### 2. Beneficios de la Herencia
 La herencia te permite crear jerarquías de clases y reutilizar código. Las clases hijas pueden heredar propiedades y métodos de las clases base y, además, sobrescribirlos si es necesario.
   - **Ejemplo**: Una clase `Estudiante` puede heredar de `Persona` y añadir una nueva propiedad como `carrera`.

 ### 3. Métodos Estáticos y de Clase
 Los métodos estáticos permiten realizar operaciones que no requieren una instancia de la clase. Son útiles para funciones generales o utilitarias que pertenecen a la clase, pero no a sus instancias.
   - **Ejemplo**: Un método estático `cuadrado` en la clase `MathHelper` puede ser utilizado sin crear una instancia de la clase, facilitando el acceso a la funcionalidad.

 */

//: [Next](@next)
