<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
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
                  *,html,head,body,body * {
                    margin: 0;
                    padding:0;
                    font-family: calibri,sans-serif,sans;
                    text-transform:uppercase;
                  }

                  .btn {
                    border: 2px solid black;
                    background-color: white;
                    color: black;
                    padding: 14px 28px;
                    font-size: 16px;
                    cursor: pointer;
                    user-select:none;
                  }

                  .btn:hover {
                    color: #fff;
                    background-color: rgba(0,0,0);
                  }

                  .topnav, body footer{
                    background-color: #333;
                  }

                  .topnav {
                    overflow: hidden;
                  }

                  body footer a{
                    color: #f2f2f2;
                    text-decoration: none;
                  }

                  body footer{
                    text-align: center;
                    padding: 14px 16px;
                    color: #bbb;
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

                  .break{
                    clear:both;
                  }
                  footer{
                    text-align:center;
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
            </div>
            <div class="break"></div>
            <xsl:copy-of select="./body/*" />
            <footer>
              Copyright 2019, Watchologyy - Partnership with
              <a href="https://fashluxee.in/" target="_blank">FASHLUXEE</a>
            </footer>
        </body>
    </xsl:template>
</xsl:stylesheet>