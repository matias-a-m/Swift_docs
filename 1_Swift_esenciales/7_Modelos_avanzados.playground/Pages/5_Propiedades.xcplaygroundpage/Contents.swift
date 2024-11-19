//: [Previous](@previous)
import UIKit

// MARK: - Propiedades en Swift
/*:
 # Propiedades en Swift

 Las propiedades son variables o constantes asociadas a clases, estructuras o enumeraciones. Este Playground cubre los diferentes tipos de propiedades, cómo usarlas y sus mejores prácticas.
 */

// MARK: - Propiedades Almacenadas
/*:
 ## 1. Propiedades Almacenadas

 Estas propiedades almacenan valores constantes o variables como parte de una instancia.
 */

class Estudiante {
    // Propiedades almacenadas
    var nombre: String
    var edad: Int
    let matricula: String
    
    // Inicializador
    init(nombre: String, edad: Int, matricula: String) {
        self.nombre = nombre
        self.edad = edad
        self.matricula = matricula
    }
}

// Creando una instancia de Estudiante
let estudiante1 = Estudiante(nombre: "Alice", edad: 20, matricula: "123456")
print("Estudiante: \(estudiante1.nombre), Edad: \(estudiante1.edad), Matrícula: \(estudiante1.matricula)")

// MARK: - Propiedades Computadas
/*:
 ## 2. Propiedades Computadas

 Las propiedades computadas no almacenan un valor; en su lugar, proporcionan un cálculo dinámico a través de un *getter* y opcionalmente un *setter*.
 */

class Circulo {
    let radio: Double
    
    // Propiedad computada para calcular el área
    var area: Double {
        return Double.pi * radio * radio
    }
    
    // Inicializador
    init(radio: Double) {
        self.radio = radio
    }
}

// Creando una instancia de Circulo
let circulo1 = Circulo(radio: 5)
print("Área del círculo con radio \(circulo1.radio): \(circulo1.area)")

// MARK: - Propiedades Observadas
/*:
 ## 3. Propiedades Observadas

 Estas propiedades permiten ejecutar código cuando cambian de valor. Se usan `willSet` (antes del cambio) y `didSet` (después del cambio).
 */

class Contador {
    var cuenta: Int = 0 {
        willSet {
            print("La cuenta cambiará de \(cuenta) a \(newValue)")
        }
        didSet {
            print("La cuenta cambió de \(oldValue) a \(cuenta)")
        }
    }
}

// Usando la clase Contador
let contador = Contador()
contador.cuenta = 10 // Observa cambios en la propiedad
contador.cuenta = 20 // Observa cambios nuevamente

// MARK: - Propiedades de Clase y de Instancia
/*:
 ## 4. Propiedades de Clase y de Instancia

 Las propiedades de **clase** (`static`) son compartidas entre todas las instancias, mientras que las propiedades de **instancia** son únicas para cada objeto.
 */

actor Vehiculo {
    private static var cantidadDeVehiculos = 0 // Propiedad de clase

    var marca: String
    
    init(marca: String) {
        self.marca = marca
        Self.incrementarCantidad() // Incrementa el contador al crear un vehículo
    }
    
    // Método para incrementar la cantidad de vehículos
    private static func incrementarCantidad() {
        cantidadDeVehiculos += 1
    }

    // Método para obtener la cantidad de vehículos
    static func obtenerCantidadDeVehiculos() -> Int {
        return cantidadDeVehiculos
    }
}

// Función para crear vehículos
func crearVehiculos() {
    let vehiculo1 = Vehiculo(marca: "Toyota")
    let vehiculo2 = Vehiculo(marca: "Honda")
    
    let cantidad = Vehiculo.obtenerCantidadDeVehiculos()
    print("Total de vehículos creados: \(cantidad)")
}

// Llamando a la función
Task {
    crearVehiculos()
}

// MARK: - Buenas Prácticas
/*:
 ## 5. Buenas Prácticas para Propiedades

 ### 1. Usar Propiedades Almacenadas para Datos Persistentes
 - **Qué es**: Ideal para valores que deben mantenerse en el objeto.
 - **Por qué es importante**: Facilita el manejo de datos y la estructura del objeto.
 - **Ejemplo**: Nombre y matrícula en un objeto `Estudiante`.

 ### 2. Utilizar Propiedades Computadas para Cálculos
 - **Qué es**: Calcula valores dinámicos bajo demanda.
 - **Por qué es importante**: Reduce el uso de memoria al evitar el almacenamiento innecesario.
 - **Ejemplo**: Área de un círculo basada en su radio.

 ### 3. Implementar Propiedades Observadas para Cambios
 - **Qué es**: Responde a modificaciones en el estado del objeto.
 - **Por qué es importante**: Permite gestionar efectos secundarios.
 - **Ejemplo**: Actualizar la interfaz al cambiar un valor.

 ### 4. Usar Propiedades de Clase para Datos Compartidos
 - **Qué es**: Ideal para datos globales o contadores.
 - **Por qué es importante**: Centraliza y sincroniza la información entre instancias.
 - **Ejemplo**: Contador de vehículos creados.

 */

//: [Next](@next)
