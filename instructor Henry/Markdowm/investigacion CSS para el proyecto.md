
# Investigación de CSS

## 1. Propiedades de CSS

CSS (Cascading Style Sheets) es el lenguaje utilizado para describir la presentación de documentos HTML. A continuación, se detallan algunas de las propiedades más importantes y comunes de CSS:

### Propiedades de Texto y Fuentes

- **`color`**: Define el color del texto.
  ```css
  p {
      color: #333333;
  }
  ```

- **`font-family`**: Establece la fuente del texto.
  ```css
  body {
      font-family: 'Arial', sans-serif;
  }
  ```

- **`font-size`**: Especifica el tamaño de la fuente.
  ```css
  h1 {
      font-size: 24px;
  }
  ```

- **`font-weight`**: Controla el grosor de la fuente.
  ```css
  strong {
      font-weight: bold;
  }
  ```

- **`text-align`**: Alinea el texto dentro de su contenedor.
  ```css
  h2 {
      text-align: center;
  }
  ```

- **`text-decoration`**: Añade decoraciones al texto, como subrayado o tachado.
  ```css
  a {
      text-decoration: none;
  }
  ```

### Propiedades de Fondo

- **`background-color`**: Define el color de fondo de un elemento.
  ```css
  div {
      background-color: #f4f4f4;
  }
  ```

- **`background-image`**: Establece una imagen de fondo.
  ```css
  body {
      background-image: url('fondo.jpg');
  }
  ```

- **`background-size`**: Controla el tamaño de la imagen de fondo.
  ```css
  .hero {
      background-size: cover;
  }
  ```

### Propiedades de Caja (Box Model)

- **`width` y `height`**: Especifican el ancho y alto de un elemento.
  ```css
  .contenedor {
      width: 100%;
      height: 200px;
  }
  ```

- **`padding`**: Añade espacio interno dentro de un elemento.
  ```css
  .contenedor {
      padding: 20px;
  }
  ```

- **`margin`**: Añade espacio externo fuera de un elemento.
  ```css
  .contenedor {
      margin: 10px;
  }
  ```

- **`border`**: Establece el borde de un elemento.
  ```css
  .contenedor {
      border: 1px solid #000;
  }
  ```

### Propiedades de Posicionamiento

- **`position`**: Define el método de posicionamiento de un elemento.
  ```css
  .elemento {
      position: relative;
      top: 10px;
      left: 20px;
  }
  ```

- **`display`**: Controla cómo se muestra un elemento.
  ```css
  .elemento {
      display: block;
  }
  ```

- **`flex`**: Habilita el modo de diseño flexible.
  ```css
  .contenedor {
      display: flex;
      justify-content: space-between;
  }
  ```

- **`z-index`**: Controla la superposición de elementos.
  ```css
  .elemento {
      position: absolute;
      z-index: 10;
  }
  ```

## 2. Responsive Design

El diseño responsive es una técnica utilizada en el desarrollo web para crear sitios que se adapten a diferentes tamaños de pantalla y dispositivos, como computadoras de escritorio, tabletas y teléfonos móviles.

### Principios del Responsive Design

- **Diseño Fluido**: Utiliza unidades relativas (como porcentajes o `em`) en lugar de unidades fijas (como `px`) para que los elementos puedan adaptarse dinámicamente al tamaño de la pantalla.
  ```css
  .contenedor {
      width: 80%;
  }
  ```

- **Media Queries**: Permiten aplicar estilos específicos para diferentes tamaños de pantalla.
  ```css
  @media (max-width: 768px) {
      .contenedor {
          flex-direction: column;
      }
  }
  ```

- **Flexbox** y **Grid Layout**: Herramientas de diseño CSS que permiten crear diseños complejos que se ajustan bien en diferentes dispositivos.
  ```css
  .contenedor {
      display: flex;
      flex-wrap: wrap;
  }
  ```

- **Imágenes Responsivas**: Usar imágenes que se ajusten automáticamente al ancho de su contenedor.
  ```css
  img {
      max-width: 100%;
      height: auto;
  }
  ```

### Ejemplo de Media Queries

```css
/* Estilos generales para dispositivos grandes */
body {
    font-size: 16px;
}

/* Estilos para tabletas */
@media (max-width: 768px) {
    body {
        font-size: 14px;
    }
}

/* Estilos para móviles */
@media (max-width: 480px) {
    body {
        font-size: 12px;
    }
}
```