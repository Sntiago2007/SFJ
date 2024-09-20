
# Investigación de HTML

## 1. Esqueleto Básico de un Documento HTML

Todo documento HTML comienza con una estructura básica que incluye las siguientes partes:

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Título de la Página</title>
</head>
<body>
    <!-- Aquí va el contenido de la página -->
</body>
</html>
```

### Explicación del Esqueleto

- **`<!DOCTYPE html>`**: Declara el tipo de documento como HTML5.
- **`<html lang="es">`**: Etiqueta que envuelve todo el contenido de la página, con el atributo `lang` que define el idioma del documento (en este caso, español).
- **`<head>`**: Contiene metadatos sobre el documento, como el conjunto de caracteres (`charset`), el título de la página, y otros elementos como estilos y scripts.
- **`<meta charset="UTF-8">`**: Define la codificación de caracteres como UTF-8, lo que permite representar la mayoría de los caracteres del mundo.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`**: Configura la ventana gráfica para dispositivos móviles, asegurando que la página se vea bien en diferentes tamaños de pantalla.
- **`<title>`**: Define el título de la página que aparece en la pestaña del navegador.
- **`<body>`**: Contiene el contenido visible de la página, como texto, imágenes, enlaces, etc.

## 2. Etiquetas Principales de HTML

HTML utiliza diferentes etiquetas para estructurar y definir el contenido de una página web. Algunas de las etiquetas más comunes son:

- **Encabezados (`<h1>` a `<h6>`)**:

  ```html
  <h1>Este es un Encabezado Principal</h1>
  <h2>Este es un Encabezado Secundario</h2>
  ```

  Los encabezados se utilizan para organizar el contenido en secciones. `<h1>` es el más importante y `<h6>` el menos importante.

- **Párrafos (`<p>`)**:

  ```html
  <p>Este es un párrafo de texto.</p>
  ```

  Utilizado para definir bloques de texto.

- **Imágenes (`<img>`)**:

  ```html
  <img src="imagen.jpg" alt="Descripción de la imagen">
  ```

  Muestra una imagen en la página. `src` define la ruta del archivo de la imagen y `alt` proporciona un texto alternativo.

- **Enlaces (`<a>`)**:

  ```html
  <a href="https://www.ejemplo.com">Visita Ejemplo</a>
  ```

  Crea un hipervínculo. `href` define la URL del enlace.

- **Listas (`<ul>`, `<ol>`, `<li>`)**:

  ```html
  <ul>
    <li>Elemento de lista no ordenada</li>
    <li>Otro elemento</li>
  </ul>

  <ol>
    <li>Elemento de lista ordenada</li>
    <li>Otro elemento</li>
  </ol>
  ```

  - `<ul>` crea listas no ordenadas (con viñetas).
  - `<ol>` listas ordenadas (con números).
  - `<li>` define cada elemento de la lista.

- **Divisiones (`<div>`)** y **Span (`<span>`)**:

  ```html
  <div>
    <p>Este es un bloque de contenido.</p>
  </div>

  <span>Este es un contenido en línea.</span>
  ```

  - `<div>` es un contenedor genérico para agrupar bloques de contenido.
  - `<span>` se usa para agrupar contenido en línea.

## 3. Vincular Archivos en HTML

HTML permite vincular diferentes tipos de archivos para añadir estilos, scripts o fuentes externas.

- **Vincular una hoja de estilos CSS**:

  ```html
  <link rel="stylesheet" href="estilos.css">
  ```

  Se usa dentro del `<head>` y el atributo `href` apunta a la ubicación del archivo CSS.

- **Vincular un archivo JavaScript**:

  ```html
  <script src="script.js"></script>
  ```

  Se puede usar en el `<head>` o al final del `<body>`. `src` apunta al archivo JavaScript.

- **Vincular fuentes externas**:

  ```html
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  ```

  Importa fuentes desde Google Fonts u otros proveedores.

- **Vincular un favicon (ícono de la página)**:

  ```html
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  ```

  Define el ícono que aparece en la pestaña del navegador.
