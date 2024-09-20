
# Investigación de JavaScript

## 1. Vinculación de Documentos JavaScript

JavaScript se puede vincular a un documento HTML de varias maneras. La vinculación permite que el script interactúe con el contenido de la página web y responda a eventos del usuario.

### Vinculación Externa

La forma más común de incluir JavaScript en un documento HTML es vinculando un archivo externo. Esto permite mantener el código JavaScript separado del HTML, lo que mejora la organización y la mantenibilidad del código.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo de JavaScript Externo</title>
    <script src="script.js"></script>
</head>
<body>
    <h1>Hola, Mundo</h1>
</body>
</html>
```

- **`<script src="script.js"></script>`**: Este atributo `src` apunta al archivo JavaScript externo. El script se ejecuta cuando el navegador llega a esta línea del código HTML.

### Vinculación Interna

JavaScript también se puede incluir directamente en el documento HTML usando la etiqueta `<script>` dentro del mismo archivo HTML.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo de JavaScript Interno</title>
    <script>
        console.log('Hola desde un script interno');
    </script>
</head>
<body>
    <h1>Hola, Mundo</h1>
</body>
</html>
```

- **`<script>`**: El código JavaScript se escribe directamente dentro de esta etiqueta.

### Vinculación en el Cuerpo (`body`)

JavaScript también se puede colocar al final del cuerpo (`<body>`) del documento para garantizar que todo el contenido HTML se haya cargado antes de que el script se ejecute.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript en el cuerpo</title>
</head>
<body>
    <h1>Hola, Mundo</h1>
    <script src="script.js"></script>
</body>
</html>
```

- **`<script>` al final del `<body>`**: Colocar el script al final del cuerpo permite una carga más rápida de la página, ya que el contenido se muestra antes de que se ejecute el JavaScript.

## 2. Declaración de Variables en JavaScript

JavaScript ofrece diferentes maneras de declarar variables, cada una con sus propias características.

### `var`

`var` es la forma más antigua de declarar variables en JavaScript. Las variables declaradas con `var` tienen un alcance de función o global si se declaran fuera de una función.

```javascript
var nombre = "Juan";
console.log(nombre); // Output: Juan
```

- **Alcance de función o global**: Si `var` se declara dentro de una función, es local a esa función. Si se declara fuera de cualquier función, es global.

### `let`

`let` es una forma moderna de declarar variables, introducida en ES6. Las variables declaradas con `let` tienen un alcance de bloque, lo que significa que solo son accesibles dentro del bloque `{}` en el que se declaran.

```javascript
let edad = 25;
console.log(edad); // Output: 25
```

- **Alcance de bloque**: Las variables declaradas con `let` solo están disponibles dentro del bloque donde fueron declaradas.

### `const`

`const` también fue introducido en ES6 y se utiliza para declarar variables que no deben ser reasignadas. Al igual que `let`, `const` tiene un alcance de bloque.

```javascript
const PI = 3.1416;
console.log(PI); // Output: 3.1416
```

- **Inmutabilidad**: Aunque `const` impide la reasignación de la variable, no hace que los objetos o arreglos sean inmutables.

## 3. Declaración de Funciones en JavaScript

Las funciones en JavaScript son bloques de código que se pueden reutilizar. Se pueden declarar de varias maneras:

### Función Declarada

Esta es la forma clásica de declarar una función en JavaScript. Las funciones declaradas se elevan ("hoisted") al comienzo de su ámbito, lo que significa que se pueden llamar antes de ser declaradas en el código.

```javascript
function saludar() {
    console.log('Hola, Mundo');
}

saludar(); // Output: Hola, Mundo
```

- **Hoisting**: Las funciones declaradas se mueven al inicio de su contexto de ejecución, lo que permite llamarlas antes de su declaración.

### Función Expresada

Las funciones también se pueden definir como expresiones y asignarlas a una variable. Estas funciones no se elevan, lo que significa que no se pueden llamar antes de ser definidas.

```javascript
const despedir = function() {
    console.log('Adiós, Mundo');
};

despedir(); // Output: Adiós, Mundo
```

- **Sin hoisting**: A diferencia de las funciones declaradas, las funciones expresadas no se elevan.

### Funciones Flecha (Arrow Functions)

Las funciones flecha son una sintaxis más concisa para escribir funciones, introducida en ES6. No tienen su propio contexto `this` y no pueden ser utilizadas como constructores.

```javascript
const sumar = (a, b) => a + b;
console.log(sumar(2, 3)); // Output: 5
```

- **Sintaxis Concisa**: Si la función solo tiene una expresión, no es necesario usar llaves `{}` ni la palabra clave `return`.

### Función Anónima

Una función anónima es una función que no tiene nombre. Estas funciones suelen ser utilizadas como argumentos en otras funciones, como en los callbacks.

```javascript
setTimeout(function() {
    console.log('Esto se ejecuta después de 2 segundos');
}, 2000);
```