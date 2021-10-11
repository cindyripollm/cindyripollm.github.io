---
layout: post
title: "Comentario sobre Text Encoding Intiative"
date: 2021-10-11
author: Cindy Ripoll-Martinez
---

# Text Encoding Initiative 
<img src="/assets/images/img/004.png" align="center" border="5px solid #000000">
<br> 

## Declaración XML
```
<?xml version="1.0" encoding="UTF-8"?>
```
Generalmente, un documento TEI empieza con una declaración del lenguaje de marca que se utilizara. En este caso, y en mayoria de los casos, el lenguaje en uso es XML version 1.0. Esto le deja saber al interpretador que el documento contiene XML. Al igual, la declaración indica la codificación especfica. En este ejemplo vemos que el documento contiene texto cifrado en UniCode (UTF-8). 

## Esquema (.rng)
```
<?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml"
	schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
Aquí el cogido indica el esquema del documento. Establecer un esquema es importante y necesario para tener un documento valido. Tener un documento valido se significa que el documento actual sigue las reglas y la estructura básica detallada en el esquema que elijas. 

## Declaración del espacio de nombre: Elemento raíz  
```
<TEI xmlns="http://www.tei-c.org/ns/1.0">
```
El URL en esta línea de codigo le informa al interpretador que tipos de atributos se utilizaran para el contenido. En este caso, la necessidad de esta línea no es evidente, pero es muy útil cuando un documento requiere el uso de diferentes sistemas de marcado.  

## Encabezado (teiHeader) 
Aquí se contiene algunos elementos importantes:
```
  <teiHeader>
```
Esto es basicamente el nombre del encabezado. 

```
      <fileDesc>
```
Este elemento es obligatorio para el teiHeader porque contiene información sobre el fichero XML y tambien información sobre la fuente primaria o fuente de origen. 

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
```
  <text>
      <body>
         <p>Aquí va el texto. Ya sea de un ensayo, poema, etc</p>
      </body>
  </text>
</TEI>
```
En el cuerpo del documento hay tres (sub)elementos que se pueden incluir (i.e., front, body, and back). Sin embargo, aquí solo se detalla el (sub)elemento obligatorio (i.e., body) el que incluye el texto. Este ejemplo usa el atributo <p> para señalar un párrafo, pero también se puede usar <stanza> para poemas y otros atributos semejantes dependiendo en el texto. 
