<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat" />
    <xsl:template match="/product">
        <html class="no-js" lang="en">
            <head>
                <title><xsl:value-of select="./details/short/@value"/></title>
                <meta charset="UTF-8" />
                <meta http-equiv="x-ua-compatible" content="ie=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <meta name="description">
                  <xsl:attribute name="content"><xsl:value-of select="./details/short/@value"/></xsl:attribute>
                </meta>
                <meta property="og:title">
                  <xsl:attribute name="content"><xsl:value-of select="./details/short/@value"/></xsl:attribute>
                </meta>
                <meta property="og:description">
                  <xsl:attribute name="content"><xsl:value-of select="./details/long/@value"/></xsl:attribute>
                </meta>
                <meta property="article:published_time">
                  <xsl:attribute name="content"><xsl:value-of select="./details/datetime/@value"/></xsl:attribute>
                </meta>
                <meta name="twitter:card">
                  <xsl:attribute name="content"><xsl:value-of select="./details/short/@value"/></xsl:attribute>
                </meta>
                <meta name="twitter:title">
                  <xsl:attribute name="content"><xsl:value-of select="./details/short/@value"/></xsl:attribute>
                </meta>
                <meta name="twitter:description">
                  <xsl:attribute name="content"><xsl:value-of select="./details/long/@value"/></xsl:attribute>
                </meta>
                <link rel="dns-prefetch" href="//s.w.org" />
                <link rel="icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-32x32.png" sizes="32x32" />
                <link rel="icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-192x192.png" sizes="192x192" />
                <link rel="apple-touch-icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-180x180.png" />
                <meta name="msapplication-TileImage" content="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-270x270.png" />
                <meta property="article:author" content="Watchologyy"/>
                <meta property="og:type" content="product"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/font-awesome.min.css"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/loftloader.min.css"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/page.css"/>
                <link rel="stylesheet" href="css/slide.css"/>
            </head>
        </html>
        <body class=" loftloader-lite-enabled">
          <div id="loftloader-wrapper" class="pl-frame" data-show-close-time="15000" data-max-load-time="0"><div class="loader-inner"><div id="loader"><img data-no-lazy="1" class="skip-lazy" alt="loader image" src="https://watchologyy.com/img/FASHLUXEE-LOGO-01.png"/><span></span></div></div><div class="loader-section section-slide-up"></div><div class="loader-close-button"><span class="screen-reader-text">Close</span></div></div>
            <div class="topnav" id="myTopnav">
                <a href="https://watchologyy.com">Watchologyy</a>
                <a href="https://watchologyy.com/shop">Shop</a>
                <a href="https://watchologyy.com/cart">Cart</a>
            </div>
            <div class="break"></div>
            <div class="slideshow-container">
              <xsl:for-each select="./details/imgs/img">
                <div class="mySlides fade">
                  <xsl:copy-of select="."/>
                </div>
              </xsl:for-each>
              <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
              <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <div class="content">
              <label class="bold h5">INR&#32;</label><em class="bold h3"><xsl:value-of select="format-number(./details/price,'#,##,###')"/>&#47;&#45;</em>
              <a class="btn mr1">Add to Cart</a>
              <div class="break"></div>
              <label class="bold h4"><xsl:value-of select="./details/short/@value"/></label>
              <div class="break"></div>
              <h5 class="underline">Description</h5>
              <xsl:copy-of select="./details/desc/*" />
            </div>
            <footer>
              Copyright 2019, Watchologyy - Partnership with
              <a href="https://fashluxee.in/" target="_blank">FASHLUXEE</a>
            </footer>
            <script type='text/javascript' src='https://watchologyy.com/js/loftloader.min.js'></script>
            <script src="slide.js"></script>
            <script>window.addEventListener('beforeunload',function(e){document.body.classList.remove("loaded");},false);</script>
        </body>
    </xsl:template>
</xsl:stylesheet>