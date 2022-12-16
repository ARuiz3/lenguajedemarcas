<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
                    
                        <xsl:for-each select="item/media:content">
                        
                        </xsl:for-each>
                        
                      
                </main>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>