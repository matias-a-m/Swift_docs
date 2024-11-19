//: [Previous](@previous)
/*:
 # Gestión de Errores en Swift
 ### La gestión de errores es una parte fundamental de la programación que permite manejar situaciones inesperadas y garantizar que el programa funcione correctamente. En Swift, se utiliza un enfoque basado en errores para capturar y gestionar problemas que pueden ocurrir durante la ejecución del código. A continuación, exploraremos cómo trabajar con errores utilizando `do-catch`, `throw` y el protocolo `Error`.

 ## Tipos de Gestión de Errores en Swift
 1. Definir Errores
 2. Lanzar Errores
 3. Capturar Errores
 4. Propagación de Errores
 */

// MARK: - 1. Definir Errores
/*:
 En Swift, puedes definir tus propios errores utilizando una enumeración que conforme al protocolo `Error`. Esto te permite especificar los tipos de errores que tu función puede lanzar.
*/
enum FileError: Error {
    case fileNotFound
    case permissionDenied
    case invalidFormat
}

// MARK: - 2. Lanzar Errores
/*:
 Para lanzar un error, se utiliza la palabra clave `throw` seguida del error que deseas lanzar. Esto detiene la ejecución normal y transfiere el control al bloque `catch` que maneja el error.
*/
func readFile(name: String) throws -> String {
    if name.isEmpty {
        throw FileError.fileNotFound
    }
    // Simulación de éxito en la lectura del archivo
    return "Contenido del archivo"
}

// MARK: - 3. Capturar Errores
/*:
 Los errores lanzados se capturan utilizando un bloque `do-catch`. Dentro del bloque `catch`, puedes manejar el error de manera adecuada dependiendo del tipo de error.
*/
do {
    let content = try readFile(name: "")
    print("Contenido: \(content)")
} catch FileError.fileNotFound {
    print("Error: Archivo no encontrado.")
} catch FileError.permissionDenied {
    print("Error: Permiso denegado.")
} catch FileError.invalidFormat {
    print("Error: Formato de archivo inválido.")
} catch {
    print("Error desconocido: \(error)")
}

// MARK: - 4. Propagación de Errores
/*:
 Puedes propagar errores a través de varias capas de tu código utilizando la palabra clave `throws` en la declaración de funciones. Esto permite que una función maneje errores generados en funciones que llama.
*/
func processFile(name: String) throws {
    do {
        let content = try readFile(name: name)
        print("Archivo procesado con contenido: \(content)")
    } catch {
        throw error  // Propagar el error
    }
}

do {
    try processFile(name: "")
} catch {
    print("Error al procesar el archivo: \(error)")
}

// MARK: - Usos Prácticos de la Gestión de Errores

// MARK: - 4.1. Validación de Entradas
/*:
 La gestión de errores es útil para validar datos ingresados por el usuario y manejar entradas incorrectas de manera controlada.
*/
func validateAge(age: Int) throws -> String {
    if age < 0 {
        throw FileError.invalidFormat
    } else if age < 18 {
        return "Edad no permitida."
    } else {
        return "Edad permitida."
    }
}

do {
    let message = try validateAge(age: -5)
    print(message)
} catch FileError.invalidFormat {
    print("Error: Edad inválida.")
} catch {
    print("Error desconocido: \(error)")
}

// MARK: - 4.2. Manejo de Excepciones en Operaciones de Red
/*:
 La gestión de errores también es importante para manejar excepciones en operaciones de red, como fallos en la conexión o respuestas inesperadas.
*/
enum NetworkError: Error {
    case connectionFailed
    case unexpectedResponse
}

func performRequest() throws {
    // Simulación de error de red
    throw NetworkError.connectionFailed
}

do {
    try performRequest()
} catch NetworkError.connectionFailed {
    print("Error: Conexión de red fallida.")
} catch NetworkError.unexpectedResponse {
    print("Error: Respuesta inesperada.")
} catch {
    print("Error desconocido: \(error)")
}

// MARK: - Recomendaciones de Mejores Prácticas
/*:
 1. **Uso de `do-catch`:** Utiliza bloques `do-catch` para capturar errores que pueden ocurrir en funciones que lanzan errores. Siempre maneja los errores de manera específica antes de usar un bloque `catch` genérico.
 2. **Propagación de errores:** Asegúrate de propagar errores de manera controlada en lugar de manejarlos siempre localmente. Esto facilita la depuración y mantiene el código más limpio y modular.
 3. **Definición clara de errores:** Usa enumeraciones conformadas al protocolo `Error` para definir claramente los posibles errores en tu código. Esto ayuda a mejorar la legibilidad y hace que el código sea más fácil de mantener.
 4. **Revisión de errores en APIs:** Si estás trabajando con operaciones de red o APIs externas, asegúrate de manejar bien las excepciones y validar los posibles errores de conexión o respuesta, como el ejemplo `NetworkError`.
 5. **Mensajes claros y específicos:** Los mensajes de error deben ser lo suficientemente claros y específicos como para que el desarrollador pueda identificar el problema rápidamente.
 6. **No ignorar errores:** Nunca ignores los errores utilizando constructores como `try?` sin manejar los casos específicos. Siempre proporciona un manejo adecuado para mejorar la robustez de la aplicación.
 */

//: [Next](@next)
