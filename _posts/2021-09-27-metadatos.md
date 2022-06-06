---
layout: post
title: "Un ejercicio sobre metadatos en Dublin Core"
date: 2021-09-27
author: Cindy Ripoll-Martinez 
---

[Dublin Core](https://es.wikipedia.org/wiki/Dublin_Core) es un modelo de metadatos para asignar contenido semántico y utilizado en instituciones culturales, como bibliotecas o archivos. En este post, comentaré cada uno los 15 elementos permitidos en este modelo, utilizando una postal que se encuentra en la biblioteca Richter de la University of Miami con el identificador [chc5324000010](https://merrick.library.miami.edu/cdm/compoundobject/collection/chc5324/id/31/rec/19).


En esta primera porción de código se señala el tipo de documento (XML) y aparece el elemento raíz `metadata` donde se incluirán todos los elementos de Dublin Core:

```
    <?xml version="1.0"?>
    <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
    ...
    </metadata>
```

Aquí aparece el título de la postal. El titulo es sencillo y, en este caso, puede percibirse como una breve descripción de la tarjeta postal:

```
    <dc:title> 
        Postal de Federico García Lorca a José María Chacón (1942)
    </dc:title>
```

Mientras consideramos en clase cómo rellenar este elemento, encontramos algo de confusión, pues no sabíamos si el creador era el creador de la postal, o nosotros ya que somos los que creábamos los metadatos. Al final concluimos que el creador era Federico García Lorca, el creador original.

```
    <dc:creator> 
        García Lorca, Federico
    </dc:creator>
```

`Subject` equivale a "palabaras claves". Básicamente, si alguien busca en la web una de las palabas utilizadas, queremos que esta imagen aparezca:

```
    <dc:subject> 
        Madrid
    </dc:subject>
    <dc:subject> 
        Federico García Lorca
    </dc:subject>
    <dc:subject> 
        Postales
    </dc:subject>
    <dc:subject> 
        Correspondencia
    </dc:subject>
    
```

A continuación, tenemos la sección de descripción. Aquí tambien estuvimos un poco confundidos, porque esta sección requiere nuestra interpretación del contenido. 
Decidimos elaborar una descripción sencilla en la cual explicamos que se trata de la carta de Federico mandada a su amigo Chacón. También describimos un aspecto unico de la postal: el dibujo de una flor.

```
    <dc:description> 
        Carta personal de Federico García Lorca de Lanjaron a su amigo José María Chacón. La postal tiene una pequeña flor dibujada en la parte de atrás.
    </dc:description>
    
```

Esta sección require que indique quien es el editor. Primero pensamos que era la Universidad de Miami, pero luego nos dimos cuenta de que la postal indicaba "Edición José Galvez" en la parte del frente.

```
    <dc:publisher> 
        Edición José Galvez
    </dc:publisher>
    
```

El `contribudor` se refiere a alguien que contribuyó a la postal con excepción del creador. En esta sección ingresamos la persona que recibío la misiva:

```

    <dc:contributor> 
        José María Chacón
    </dc:contributor>
```

La fecha en la postal estaba un poquito borrosa, pero desciframos el año "1924":

```
    <dc:date> 
        (1924-09-17)
    </dc:date>
```

Aquí se indica qué tipo de archivo es. Al ser una postal, decídimos que era una imagen y un texto. 

```
    <dc:type> 
        Imagen
    </dc:type>
    <dc:type> 
        Texto
    </dc:type> 
```

El formato de esta imagen es JPG:

```
    <dc:format> 
        JPG
    </dc:format>    
```

El `identifier` se entiende como la ubicación donde está el objeto: 

```
    <dc:identifier> 
        https://merrick.library.miami.edu/cdm/compoundobject/collection/chc5324/id/31/rec/19
    </dc:identifier>
   
```

El `source` o la fuente se indicó como la biblioteca de la Uiversidad de Miami:

```
    <dc:source> 
        University of Miami Libraries Digital Collection
    </dc:source>
 ```
 
 La lengua de la postal es español:
 
 ```
    <dc:language> 
        SPA
    </dc:language>
    
```

El `coverage` o ubicación original de la postal es España, como deducimos del título de la postal. Al principio, estabamos confundidos porque no sabíamos dónde estaba Lanjaron, pero lo solucionamos rápido:

```
    <dc:coverage> 
        España
    </dc:coverage>
    <dc:coverage> 
        1898-1936
    </dc:coverage>
    <dc:rights> 
        Dominio Publico
    </dc:rights>
```

En conclusión, me encantó llevar a cabo este ejercicio de metadatos. Cuando oí por primera vez la palabra "metadatos" me asusté un poco, porque no sabía qué era "meta" ni "datos". Pero después de leer las notas de clase y la presentación en clase de Elliot Williams, me sentí mucho mejor. Con respecto al nivel de dificultad, diría que fue relativamente fácil. La plantilla ofrecida para ingresar la información (disponible [aquí](http://metadataetc.org/dctemplate.php)) fue realmente clara y facíl de entender. Creó que la dificultad se presentó cuando teníamos que interprertar el archivo. Me fascina que los que trabajan en la biblioteca hagan este trabajo. La habilidad de interpretar un archivo de una manera tan precisa y objetiva es simplemente impresionante. 
