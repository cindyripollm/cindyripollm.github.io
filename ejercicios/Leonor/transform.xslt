<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei">

    <!-- <xsl:strip-space elements="*"/>-->
    <xsl:template match="comment() | processing-instruction()"/>
    <!--   <xsl:template match="/tei:TEI">
        <xsl:apply-templates/>
    </xsl:template>-->

    <xsl:output method="html"/>
    <xsl:template match="/tei:TEI/tei:teiHeader"/>

    <xsl:template match="/tei:TEI/tei:text">
        <xsl:element name="html">
            <!-- metadonnees simples. -->
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <title>Tarea 6: Codificación XML-TEI y Transformacion </title>
                <link rel="stylesheet" href="https://dh-miami.github.io/assets/css/style.css"/>
                <link rel="stylesheet" href="https://dh-miami.github.io/Leonor/estilo.css"/>
            </head>
            <body>
                <header class="site-header">
                    <div class="wrapper">
                        <a class="site-title" rel="author" href="/">Digital Humanities @ UM - SPA 410</a>
                        <nav class="site-nav">
                            <input type="checkbox" id="nav-trigger" class="nav-trigger"/>
                            <label for="nav-trigger">
                                <span class="menu-icon">
                                    <!--<svg viewBox="0 0 18 15" width="18px" height="15px">
                            <path
                                d="M18,1.484c0,0.82-0.665,1.484-1.484,1.484H1.484C0.665,2.969,0,2.304,0,1.484l0,0C0,0.665,0.665,0,1.484,0 h15.032C17.335,0,18,0.665,18,1.484L18,1.484z M18,7.516C18,8.335,17.335,9,16.516,9H1.484C0.665,9,0,8.335,0,7.516l0,0 c0-0.82,0.665-1.484,1.484-1.484h15.032C17.335,6.031,18,6.696,18,7.516L18,7.516z M18,13.516C18,14.335,17.335,15,16.516,15H1.484 C0.665,15,0,14.335,0,13.516l0,0c0-0.82,0.665-1.483,1.484-1.483h15.032C17.335,12.031,18,12.695,18,13.516L18,13.516z"
                                ></path>
                        </svg>--></span>
                            </label>
                            <div class="trigger">
                                <a class="page-link" href="/sobre_mi/">Sobre mi</a>
                                <a class="page-link" href="/blog/">Blog</a>
                                <a class="page-link" href="/ejercicios/">Ejercicios</a>
                            </div>
                        </nav>
                    </div>
                </header>
                <main class="page-content" aria-label="Content">
                    <div class="wrapper">
                        <div class="home">
                            <h2>
                                <xsl:value-of
                                    select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                />
                            </h2>
                            <div id="metadatos">
                                <b>Tarea 6: </b>
                                <xsl:value-of
                                    select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
                                <br/>
                                <span>
                                    <b>Editores: </b>
                                    <xsl:for-each
                                        select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:editor">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="following-sibling::node()">
                                            <xsl:text>, </xsl:text>
                                        </xsl:if>
                                    </xsl:for-each>
                                </span>
                                <br/>

                                <span>
                                    <b>Descripción de la fuente: </b>
                                    <xsl:value-of
                                        select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                                    <a
                                        href="https://archive.org/details/n16365laespaamoderna14madruoft/page/n125/mode/2up"
                                        >https://archive.org/details/n16365laespaamoderna14madruoft/page/n125/mode/2up</a>
                                </span>
                                <br/>
                                <p>Consulta el <a href="https://dh-miami.github.io/ejercicios/mapa.html">mapa con el recorrido de Leonor</a></p>
                            </div>

                            <xsl:apply-templates/>
                        </div>
                    </div>
                </main>
                <footer class="site-footer h-card">
                    <!--  <data class="u-url" href="/"></data>-->
                    <div class="wrapper">
                        <div class="footer-col-wrapper">
                            <div class="footer-col">
                                <p class="feed-subscribe">
                                    <a href="/feed.xml">
                                        <!--<svg class="svg-icon orange"></svg>-->
                                        <span>Subscribe</span>
                                    </a>
                                </p>
                                <ul class="contact-list">
                                    <li class="p-name">Susanna Alles-Torrent</li>
                                    <li>
                                        <a class="u-email" href="mailto:susanna_alles@miami.edu"
                                            >susanna_alles@miami.edu</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="footer-col">
                                <p>Prueba de la página DH Miami para mis estudiantes que son todos
                                    estupendos. </p>
                            </div>
                        </div>
                        <div class="social-links">
                            <ul class="social-media-list">
                                <li>
                                    <a rel="me" href="https://github.com/susannalles"
                                        title="susannalles">
                                        <!--<svg class="svg-icon grey"></svg>--></a>
                                </li>
                                <li>
                                    <a rel="me" href="https://twitter.com/sallesto" title="sallesto">
                                        <!--<svg class="svg-icon grey"></svg>--></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </footer>
            </body>

        </xsl:element>
    </xsl:template>

    <xsl:template match="/tei:TEI/tei:text/tei:body/tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <xsl:template match="tei:placeName">
        <span class="placeName" title="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="tei:persName" priority="99">
        
        <xsl:if test="attribute::key">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@key"/>
            </xsl:attribute>
            <xsl:attribute name="title">Enlace a la Wikipedia</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
        </xsl:if>
        <xsl:if test="not(attribute::key)">
            <span class="persName" title="persName">
            <xsl:apply-templates/>
            </span>
        </xsl:if>
    </xsl:template>

    <xsl:template match="tei:persName">
        <span class="persName" title="persName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:placeName">
        <span class="placeName" title="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="tei:name">
        <span class="name">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="tei:q">
        <span class="q">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="/tei:bibl/tei:title">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>

    <xsl:template match="tei:ref" priority="99">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@target"/>
            </xsl:attribute>
            <xsl:attribute name="title">Enlace</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>



    <xsl:template match="tei:num">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>

    <xsl:template match="tei:lg">
        <div id="poema">
            <xsl:for-each select="tei:l">
                <xsl:apply-templates/>
                <br/>
            </xsl:for-each>
        </div>
    </xsl:template>

</xsl:stylesheet>
