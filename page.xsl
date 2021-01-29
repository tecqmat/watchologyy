<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat" />
  <xsl:template match="/page">
    <html class="no-js" lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="dns-prefetch" href="//s.w.org" />
        <link rel="icon" href="img/cropped-FASHLUXEE-LOGO-01-32x32.png" sizes="32x32" />
        <link rel="icon" href="img/cropped-FASHLUXEE-LOGO-01-192x192.png" sizes="192x192" />
        <link rel="apple-touch-icon" href="img/cropped-FASHLUXEE-LOGO-01-180x180.png" />
        <meta name="msapplication-TileImage" content="img/cropped-FASHLUXEE-LOGO-01-270x270.png" />
        <meta property="article:author" content="Watchologyy"/>
        <meta property="og:type" content="website"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <style>
        *,html,head,body {
          margin: 0;
          font-family: calibri,sans-serif,sans;
          text-transform:uppercase;
        }

        .topnav {
          overflow: hidden;
          background-color: #333;
        }

        .topnav a {
          float: left;
          display: block;
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }

        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }

        .topnav a.active {
          background-color: #4CAF50;
          color: white;
        }

        .topnav .icon {
          display: none;
        }

        @media screen and (max-width: 600px) {
          .topnav a:not(:first-child) {display: none;}
          .topnav a.icon {
            float: right;
            display: block;
          }
        }

        @media screen and (max-width: 600px) {
          .topnav.responsive {position: relative;}
          .topnav.responsive .icon {
            position: absolute;
            right: 0;
            top: 0;
          }
          .topnav.responsive a {
            float: none;
            display: block;
            text-align: left;
          }
        }
        </style>
        <xsl:copy-of select="./head/*" />
      </head>
    </html>
    <body>
    
      <div class="topnav" id="myTopnav">
        <a href="https://watchologyy.com">Watchologyy</a>
        <a href="shop">Shop</a>
        <a href="#cart">Cart</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleSideBar()">
          <i class="fa fa-bars"></i>
        </a>
      </div>

      <xsl:copy-of select="./body/*" />

      <script>
      function toggleSideBar() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
          x.className += " responsive";
        } else {
          x.className = "topnav";
        }
      }
      </script>

    </body>
  </xsl:template>
</xsl:stylesheet>
