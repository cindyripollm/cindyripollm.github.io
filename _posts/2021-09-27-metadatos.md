---
layout: post
title: "Commentario's sobre metadatos realizados con Dublin Core"
date: 2021-09-27
author: Cindy Ripoll-Martinez 
---

Esta pagina se dedicara a explicar que es Dublin Core. Al igual se comentara en la metadata atenida a travez de Dubin Core. 
El contenido de la metadata es sobre un postal que se encuentra en University of Miami Digital Library.


Esta porcion se utiliza para indicar el tipo de codigo. En este caso se utilizo xml.

```
<?xml version="1.0"?>
<metadata
    xmlns:dc="http://purl.org/dc/elements/1.1/">
```

Aqui se entra el titulo del postal. El titulo es sencillo y puede percibirse como una breve descripción de la tarjeta postal.

```
    <dc:title> 
        Postal de Federico García Lorca a José María Chacón (1942)
    </dc:title>
```

Para esta sección hubo un poco de confusión. No sabíamos si el creador era el creador del postal, o nosotros ya que somos los que crearon la metadata. 
Al final concluimos que el creador es Fereico Lorca García, el creador original.

```
    <dc:creator> 
        García Lorca, Federico
    </dc:creator>
```

"Subject" en el codigo es semejante a "palabaras claves" Basicamente, si alguien busca en el web una de las palabas utilizadas, queremos que esta imagen aparezca.

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
Aqui tenemos la sección de descripcion. Aquí tambien estuvimos un poco confundidos, porque esta seccion requiere nuestra interpretación de contenido. 
Decidimos tener una descripcion cencilla en la cual explicamos a quien Federico le mando la carta. Tambien describimos un aspecto unico del posted: la flor.

```
    <dc:description> 
        Carta personal de Federico García Lorca de Lanjaron a su amigo José María Chacón. La postal tiene una pequeña flor dibujada en la parte de atrás.
    </dc:description>
    
```

Esta sección require que indique quien es el editor. Primero pensamos que era la Universidad de Miami, pero luego nos dimos cuenta que el postal indico "Edición José Galvez" en la parte del frente.

```
    <dc:publisher> 
        Edición José Galvez
    </dc:publisher>
    
```

El contribudor se refiere a alguien que contribuyo al postel con excepción del creador. En esta sección ingresamos a la persona que recibío esté postal.

```

    <dc:contributor> 
        José María Chacón
    </dc:contributor>
```

La fecha en el postal estuvo un poquito borrosa, pero desciframos el año como 1924.
```

    <dc:date> 
        (1924-09-17)
    </dc:date>
    
```

Aquí se indica que tipo es el archivo. Como es una postal, decídimos que era una imagen y texto. 

```
    <dc:type> 
        Imagen
    </dc:type>
    <dc:type> 
        Texto
    </dc:type>
    
```

El formato de esta imagen es JPG.

```
    <dc:format> 
        JPG
    </dc:format>
    
```

El identifier se puede ver como la ubicacion.

```
    <dc:identifier> 
        https://merrick.library.miami.edu/cdm/compoundobject/collection/chc5324/id/31/rec/19
    </dc:identifier>
   
```

El "source" o la fuente se indico como la libreria digital de la Uiversidad de Miami.

```
    <dc:source> 
        University of Miami Libraries Digital Collection
    </dc:source>
    
 ```
 
 El lenguaje del postal es Español.
 
 ```
    <dc:language> 
        SPA
    </dc:language>
    
```

El "coverage" o ubícacion original del postal fue deducido como España. Al principio estabamos confundidos porque no sabíamos adonde estaba Lanjeron.

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
Esta frase indica que el codigo o metadata esta terminado. 

```
</metadata>
```
