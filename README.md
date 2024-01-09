# Aplicación de Login con API Integration

Esta aplicación iOS proporciona una pantalla de login con características de validación y conexión a una API para autenticar a los usuarios.

## Configuración del Proyecto

### Requisitos

- Xcode 12.0 o superior
- Swift 5.0 o superior
- Dispositivo o simulador con iOS 14.0 o superior
- Conexión a Internet

### Cómo Iniciar

1. Clona este repositorio:
   ```bash
   git clone https://github.com/TuUsuario/LoginWithApi-iOS.git
   ```

2. Abre el proyecto en Xcode.

3. Ejecuta la aplicación en el simulador o dispositivo iOS.

## Características de la Aplicación

### Pantalla de Login

1. **Validación de Campos:**
   - Muestra un mensaje de error si los campos están vacíos al pulsar el botón de login.

2. **Validación de Longitud:**
   - Muestra un mensaje de error si el campo de usuario o la contraseña tienen menos de 6 caracteres.

3. **Acceso con Contraseña Específica:**
   - Permite el acceso con una contraseña que sea igual al nombre de usuario seguido de un punto.

4. **Autenticación con API:**
   - Envía una petición a la API `https://qastusoft.com.es/apis/login.php` con los parámetros "user" y "pass".

5. **Modelo para Datos de la API:**
   - Utiliza un modelo para los datos recibidos de la API.

6. **Manejo de Errores de la API:**
   - Si la API devuelve un error, muestra el mensaje en la aplicación.

7. **Pantalla de Saludo:**
   - Al acceder con éxito, muestra otra pantalla con un saludo que incluye el nombre de usuario.

8. **Icono de la Aplicación y Pantalla de Carga:**
   - Establece un icono para la aplicación y muestra una pantalla de carga durante las operaciones críticas.

## Modelos de Datos

### Respuestas de la API

1. **Faltan Datos:**
   ```json
   {"code": -1, "data": "Faltan datos"}
   ```

2. **Credenciales No Válidas:**
   ```json
   {"code": -2, "data": "Credenciales no válidas"}
   ```

3. **Éxito:**
   ```json
   {"code": 1, "data": "ok"}
   ```

La aplicación ofrece una experiencia de login segura y conectada a una API para mejorar la autenticación y proporcionar información relevante al usuario. ¡Explora las funcionalidades y disfruta de la conexión API en tu aplicación de login!
