//: [Previous](@previous)
import UIKit

// MARK: - Constructores (Inicializadores) en Swift
/*:
 # Constructores en Swift

 Los constructores, o inicializadores, son métodos especiales que se utilizan para crear instancias de clases y estructuras en Swift. Aprenderás a definir diferentes tipos de constructores y cómo aplicarlos en tus proyectos.
 */

// MARK: - Declaración de una Clase con un Constructor
/*:
 ## 1. Constructor Personalizado

 Vamos a definir una clase llamada `Libro` con un constructor que inicializa sus propiedades.
 */

class Libro {
    // Propiedades
    var titulo: String
    var autor: String
    var anioPublicacion: Int
    
    // Inicializador
    init(titulo: String, autor: String, anioPublicacion: Int) {
        self.titulo = titulo
        self.autor = autor
        self.anioPublicacion = anioPublicacion
    }
    
    // Método para describir el libro
    func descripcion() -> String {
        return "El libro '\(titulo)' fue escrito por \(autor) y publicado en \(anioPublicacion)."
    }
}

// MARK: - Creación de Instancias Usando el Constructor
/*:
 Puedes crear instancias de la clase `Libro` proporcionando valores para el constructor.
 */

let libro1 = Libro(titulo: "1984", autor: "George Orwell", anioPublicacion: 1949)
let libro2 = Libro(titulo: "Cien Años de Soledad", autor: "Gabriel García Márquez", anioPublicacion: 1967)

print(libro1.descripcion()) // Imprime: El libro '1984' fue escrito por George Orwell y publicado en 1949.
print(libro2.descripcion()) // Imprime: El libro 'Cien Años de Soledad' fue escrito por Gabriel García Márquez y publicado en 1967.

// MARK: - Constructores por Defecto
/*:
 ## 2. Constructor por Defecto

 Swift genera automáticamente un constructor por defecto si todas las propiedades tienen valores iniciales o predeterminados.
 */

struct Persona {
    var nombre: String
    var edad: Int = 30 // Valor predeterminado

    // Constructor personalizado
    init(nombre: String) {
        self.nombre = nombre
    }
}

// Creando una instancia de Persona
let persona1 = Persona(nombre: "Alice")
print("Nombre: \(persona1.nombre), Edad: \(persona1.edad)") // Imprime: Nombre: Alice, Edad: 30

// MARK: - Constructores Fails
/*:
 ## 3. Constructores Fails (Fallables)

 Puedes definir un constructor que falle al intentar crear una instancia si no se cumplen ciertas condiciones.
 */

class Producto {
    var nombre: String
    var precio: Double
    
    // Constructor failable
    init?(nombre: String, precio: Double) {
        guard precio >= 0 else {
            return nil // Falla si el precio es negativo
        }
        self.nombre = nombre
        self.precio = precio
    }
}

// Intentando crear instancias de Producto
if let producto1 = Producto(nombre: "Laptop", precio: 1200) {
    print("Producto creado: \(producto1.nombre), Precio: \(producto1.precio)")
} else {
    print("Error: No se pudo crear el producto.")
}

if let producto2 = Producto(nombre: "Smartphone", precio: -500) {
    print("Producto creado: \(producto2.nombre), Precio: \(producto2.precio)")
} else {
    print("Error: No se pudo crear el producto con precio negativo.")
}
// MARK: - Constructores de Clase Base y Heredados
/*:
 ## 4. Constructores en Herencia

 Las subclases pueden usar el constructor de su clase base para inicializar las propiedades heredadas.
 */

class Vehiculo {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
}

class Coche: Vehiculo {
    var anio: Int
    
    // Inicializador que llama al constructor de la clase base
    init(marca: String, modelo: String, anio: Int) {
        self.anio = anio
        super.init(marca: marca, modelo: modelo)
    }
}

// Creando una instancia de Coche
let coche1 = Coche(marca: "Tesla", modelo: "Model S", anio: 2020)
print("Coche: \(coche1.marca) \(coche1.modelo), Año: \(coche1.anio)")

// MARK: - Buenas Prácticas
/*:
 ## 5. Buenas Prácticas para Constructores

 ### 1. Definir Constructores Claros
 - **Qué es**: Los constructores deben ser fáciles de entender, con nombres de parámetros descriptivos.
 - **Por qué es importante**: Mejora la legibilidad y el mantenimiento del código.
 - **Ejemplo**: Usa valores predeterminados para reducir la cantidad de argumentos necesarios.

 ### 2. Utilizar Constructores Fails
 - **Qué es**: Úsalos para manejar errores durante la inicialización.
 - **Por qué es importante**: Garantiza que no se creen instancias en un estado inválido.
 - **Ejemplo**: Un constructor failable para validar datos de entrada.

 ### 3. Aprovechar la Herencia
 - **Qué es**: Reutiliza los constructores de la clase base en las subclases.
 - **Por qué es importante**: Simplifica y unifica la lógica de inicialización.
 - **Ejemplo**: Llama al constructor de la clase base con `super.init`.

 */

//: [Next](@next)

