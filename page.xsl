<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat" />
    <xsl:template match="/page">
        <html class="no-js" lang="en">
            <head>
                <title><xsl:value-of select="./short/@value"/></title>
                <meta name="description">
                  <xsl:attribute name="content">
                    <xsl:value-of select="./short/@value"/>
                    <xsl:value-of select="./long/@value"/>
                  </xsl:attribute>
                </meta>
                <meta property="og:title">
                  <xsl:attribute name="content"><xsl:value-of select="./short/@value"/></xsl:attribute>
                </meta>
                <meta property="og:description">
                  <xsl:attribute name="content">
                     <xsl:value-of select="./short/@value"/>
                     <xsl:value-of select="./long/@value"/>
                  </xsl:attribute>
                </meta>
                <meta property="article:published_time">
                  <xsl:attribute name="content"><xsl:value-of select="./datetime/@value"/></xsl:attribute>
                </meta>
                <meta name="twitter:card" content="summary"/>
                <meta name="twitter:title">
                  <xsl:attribute name="content"><xsl:value-of select="./short/@value"/></xsl:attribute>
                </meta>
                <meta name="twitter:description">
                  <xsl:attribute name="content">
                     <xsl:value-of select="./short/@value"/>
                     <xsl:value-of select="./long/@value"/>
                  </xsl:attribute>
                </meta>
                <xsl:copy-of select="./head/*" />
                <meta charset="UTF-8" />
                <meta http-equiv="x-ua-compatible" content="ie=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="dns-prefetch" href="//s.w.org" />
                <link rel="icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-32x32.png" sizes="32x32" />
                <link rel="icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-192x192.png" sizes="192x192" />
                <link rel="apple-touch-icon" href="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-180x180.png" />
                <meta name="msapplication-TileImage" content="https://watchologyy.com/img/cropped-FASHLUXEE-LOGO-01-270x270.png" />
                <meta property="article:author" content="Watchologyy"/>
                <meta property="og:type" content="website"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/font-awesome.min.css"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/loftloader.min.css"/>
                <link rel="stylesheet" href="https://watchologyy.com/css/page.css"/>
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
            <xsl:copy-of select="./body/*" />
            <footer>
              Copyright 2019, Watchologyy - Partnership with
              <a href="https://fashluxee.in/" target="_blank">FASHLUXEE</a>
            </footer>
            <script type='text/javascript' src='https://watchologyy.com/js/loftloader.min.js'></script>
            <script>window.addEventListener('beforeunload',function(e){document.body.classList.remove("loaded");},false);</script>
        </body>
    </xsl:template>
</xsl:stylesheet>
