<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="/rss/channel/title" /></title>
        <style>
          /* Light Mode Styles */
          body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 20px;
          }
          h1, h2 {
            color: #007acc;
          }
          .post {
            margin-bottom: 20px;
            padding: 10px;
            border-bottom: 1px solid #ccc;
          }
          .date {
            color: #555;
            font-size: 0.9em;
          }

          /* Dark Mode Styles */
          @media (prefers-color-scheme: dark) {
            body {
              background-color: #1a1a1a;
              color: #ddd;
            }
            h1, h2 {
              color: #4da8da;
            }
            .post {
              border-bottom: 1px solid #555;
            }
            .date {
              color: #bbb;
            }
          }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/rss/channel/title" /></h1>
        <p><xsl:value-of select="/rss/channel/description" /></p>

        <xsl:for-each select="/rss/channel/item">
          <div class="post">
            <h2><a href="{link}"><xsl:value-of select="title" /></a></h2>

            <p class="date"><xsl:value-of select="pubDate" /></p>

            <p><xsl:value-of select="description" /></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
