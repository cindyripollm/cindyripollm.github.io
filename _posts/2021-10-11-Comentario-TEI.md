---
layout: post
title: "Comentario sobre la Text Encoding Intiative"
date: 2021-10-11
author: Cindy Ripoll-Martinez
---

# Text Encoding Initiative 
<img src="/assets/images/img/004.png" align="center" border="5px solid #000000">
<br> 

En este breve post comentaré la estructura básica de un documento XML-TEI. 

## Declaración XML

```
<?xml version="1.0" encoding="UTF-8"?>
```
De manera sistemática y obligatoria, un documento XML empieza siempre con una declaración del lenguaje de marcado que se utilizará. En este caso, y en mayoria de los casos, la versión utilizada del lenguaje XML es la 1.0. Esto le deja saber al interpretador que el documento contiene XML. Igualmente, la declaración indica la codificación especfica, por lo general, todo documento contiene el texto cifrado en UniCode (UTF-8). 

## Esquema (.rng)

A continuación aparece la referencia al esquema del que depende el documento XML-TEI: 

```
<?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

Aquí el cogido indica el esquema del documento. Establecer un esquema es importante y necesario para tener un documento válido. Tener un documento válido significa que el documento actual sigue las reglas y la estructura básica detallada en el esquema que elijas. 

## Declaración del espacio de nombre: Elemento raíz 

Sigue, también de manera obligatoria, el elemento raíz que englobará todos los otros elementos, en este caso y siempre que se utilice este tipo de marcado será `TEI`:

```
<TEI xmlns="http://www.tei-c.org/ns/1.0">
```

Además, la URL en esta línea de codigo informa al interpretador qué tipos de atributos se utilizaran para el contenido. En este caso, la necessidad de esta línea no es evidente, pero es muy útil cuando un documento requiere el uso de diferentes sistemas de marcado.  

## Encabezado (teiHeader) 

El elemento genérico `teiHeader` corresponde al encabezado y contiene a su vez elementos importantes que concierenen los metadatos del documento que estamos codificando:

```
  <teiHeader>
```

En su interior encontramos `fileDesc`, que es obligatorio dentro del `teiHeader` porque contiene información sobre el fichero XML y tambien información sobre la fuente primaria o fuente de origen (metadatos). La información básica requerida es la siguiente:

```
         <titleStmt>
            <title>Aquí va el título del texto</title>
         </titleStmt>
         <publicationStmt>
            <p>Aquí va informacion sobré la publicación digital</p>
         </publicationStmt>
         <sourceDesc>
            <p>Aquí va informacion sobré la publicación original</p>
         </sourceDesc>
      </fileDesc>
  </teiHeader>
```

## Cuerpo del documento 

Le sigue el cuerpo del documento propiamente dicho: 

```
  <text>
      <body>
         <p>Aquí va el texto. Ya sea de un ensayo, poema, etc</p>
      </body>
  </text>
</TEI>
```
En el cuerpo aparecen tres (sub)elementos que se pueden incluir (i.e., front, body, and back). Sin embargo, aquí solo se detalla el (sub)elemento obligatorio (i.e., body), el que incluye el texto que vamos a editar y codificar. Este ejemplo usa el atributo `<p>` para señalar un párrafo, pero también se puede usar otros elementos como por ejemplo `<lg>` para poemas y otros semejantes dependiendo de la naturaleza del texto. 
