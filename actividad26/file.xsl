<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/rss/channel">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>EL PAÍS</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
            </head>
            <body>
                <header>
                    <section>
                        <nav style="background-color: #CCD2C9">
                            <h1 style="text-align: center; font-size: 40; "><a href="{link}" style="color:black; text-decoration: none"> EL PAÍS: el periódico global</a></h1>
                            <h6 style="text-align: right; margin-top: -34px"><xsl:value-of select="lastBuildDate"/></h6>
                        </nav>
                    </section>
                </header>
                <main>
                  <section class="row justify-content-center">
                    <div id="carouselExampleControls" class="carousel slide w-75" data-bs-ride="carousel">
                      <div class="carousel-inner">
                        <xsl:for-each select="item/media:content"> 
                          <xsl:choose>
                            <xsl:when test="position() =1">  
                             <div class="carousel-item active">
                                <section style="float:left;width:100%">
                                  <img src="{@url}" class="d-block w-100 img-fluid"/>
                                  <h5><xsl:value-of select="media:text"/></h5>
                                  <p><xsl:value-of select="media:credit"/></p>
                                </section>
                                <section style="float:left;width:100%">
                                  <xsl:value-of select="../dcterms:alternative"/>. 
                                  <a href="{../guid}"> leer mas...</a>
                                </section>
                              </div>
                            </xsl:when>
                           <xsl:otherwise>
                             <div class="carousel-item">
                                <section>
                                  <img src="{@url}" class="d-block w-100 img-fluid"/>
                                  <h5><xsl:value-of select="media:text"/></h5>
                                  <p><xsl:value-of select="media:credit"/></p>
                                </section>
                                <section style="float:left;width:100%">
                                  <xsl:value-of select="../dcterms:alternative"/>. 
                                  <a href="{../guid}">leer mas...</a>
                                </section>
                             </div>
                            </xsl:otherwise>
                        </xsl:choose>
                        </xsl:for-each>
                        </div>
                      <button id="button1" class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                      </button>
                      <button id="button2" class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                      </button>
                    </div>
                  </section>
                  
                </main>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>            </body>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        </html>
    </xsl:template>
</xsl:stylesheet>