//: [Previous](@previous)
import UIKit

// MARK: - Instancias en Swift
/*:
 # Instancias en Swift

 En Swift, una instancia es un objeto creado a partir de una clase o estructura. En esta sección, aprenderás cómo crear y trabajar con instancias, así como las diferencias clave entre clases (tipos de referencia) y estructuras (tipos de valor).
 */

// MARK: - Declaración de una Clase
/*:
 ## 1. Declarar una Clase

 Vamos a definir una clase `Coche` para representar vehículos. Esta clase tendrá propiedades como `marca`, `modelo` y `año`, además de un método para describir el coche.
 */

class Coche {
    // Propiedades
    var marca: String
    var modelo: String
    var año: Int
    
    // Inicializador
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    // Método para describir el coche
    func descripcion() -> String {
        return "Coche: \(marca) \(modelo), Año: \(año)"
    }
}

// MARK: - Creación de Instancias
/*:
 ## 2. Crear Instancias

 Puedes crear instancias de la clase `Coche` proporcionando valores para sus propiedades y luego llamar a sus métodos.
 */

let coche1 = Coche(marca: "Toyota", modelo: "Corolla", año: 2020)
let coche2 = Coche(marca: "Ford", modelo: "Mustang", año: 2022)

// Llamando al método descripcion
print(coche1.descripcion()) // Imprime: Coche: Toyota Corolla, Año: 2020
print(coche2.descripcion()) // Imprime: Coche: Ford Mustang, Año: 2022

// MARK: - Comparación de Instancias
/*:
 ## 3. Diferencia entre Tipos de Referencia y Tipos de Valor

 En Swift, las clases son **tipos de referencia**, lo que significa que varias variables pueden referirse al mismo objeto en memoria. Por otro lado, las estructuras son **tipos de valor**, lo que significa que cada variable tiene su propia copia del objeto.
 */

struct Punto {
    var x: Int
    var y: Int
}

// Creando instancias de Punto (estructura)
var punto1 = Punto(x: 10, y: 20)
var punto2 = punto1 // Se copia el valor de punto1 en punto2

// Modificando punto2
punto2.x = 30

print("Punto 1: (\(punto1.x), \(punto1.y))") // Imprime: Punto 1: (10, 20)
print("Punto 2: (\(punto2.x), \(punto2.y))") // Imprime: Punto 2: (30, 20)

// MARK: - Referencias de Instancias
/*:
 ## 4. Referencias en Clases

 Al asignar una instancia de clase a otra variable, ambas variables apuntan a la misma instancia en memoria. Cualquier cambio realizado en una afectará a la otra.
 */

class Circulo {
    var radio: Double
    
    init(radio: Double) {
        self.radio = radio
    }
}

// Creando instancias de Circulo (clase)
let circulo1 = Circulo(radio: 5.0)
let circulo2 = circulo1 // circulo2 es una referencia a circulo1

// Modificando circulo2
circulo2.radio = 10.0

print("Círculo 1: Radio: \(circulo1.radio)") // Imprime: Círculo 1: Radio: 10.0
print("Círculo 2: Radio: \(circulo2.radio)") // Imprime: Círculo 2: Radio: 10.0

// MARK: - Métodos de Instancia
/*:
 ## 5. Métodos de Instancia

 Las instancias pueden tener métodos que operen sobre sus datos internos o realicen operaciones relacionadas. También puedes usar **extensiones** para agregar métodos adicionales a las clases o estructuras existentes.
 */

extension Coche {
    // Método para determinar si el coche es nuevo
    func esNuevo() -> Bool {
        return año == Calendar.current.component(.year, from: Date())
    }
}

// Verificando si los coches son nuevos
print("¿El coche 1 es nuevo? \(coche1.esNuevo())") // Imprime: ¿El coche 1 es nuevo? false
print("¿El coche 2 es nuevo? \(coche2.esNuevo())") // Imprime: ¿El coche 2 es nuevo? false

// MARK: - Buenas Prácticas
/*:
 ## 6. Buenas Prácticas para Trabajar con Instancias

 ### 1. Usar Instancias para Modelar Datos
 Las instancias permiten modelar objetos del mundo real en el código. Asegúrate de que las clases y estructuras que defines sean representativas y claras.
 - **Ejemplo**: Representa un coche, usuario o producto como una instancia con sus propiedades relevantes.

 ### 2. Diferenciar entre Clases y Estructuras
 - **Clases**: Úsalas cuando necesites compartir referencias a un objeto mutable.
 - **Estructuras**: Úsalas para datos inmutables o cuando no necesites compartir referencias.
 - **Ejemplo**: Usa una estructura para coordenadas (como `Punto`) y una clase para objetos con estado (como `Circulo`).

 ### 3. Extensiones para Métodos de Instancia
 Usa extensiones para añadir funcionalidad a las clases y estructuras sin modificar su definición original. Esto organiza mejor el código y promueve la reutilización.
 - **Ejemplo**: Agrega un método para verificar si un coche es nuevo usando una extensión.

 */

//: [Next](@next)
