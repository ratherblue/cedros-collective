<#ftl strip_text=true />

<#--
  Shared, page-related macros, functions, and variables

  @namespace page
-->



<#---
  Imports
-->
<#import "seo.ftl" as seo />
<#import "social-media.ftl" as socialMedia />
<#import "header.ftl" as header />
<#import "footer.ftl" as footer />


<#---
  Shared vars
-->
<#assign titleSuffix = " — Cedros Collective" />


<#---
  Default preamble to the page
-->
<#macro preamble>
  <!doctype html>
</#macro>


<#---
  Default page macro

  @param title the list of stylesheets
  @param bodyClass
  @param stylesheets the list of stylesheets to be included on page
  @param scripts the list of scripts to be included on the page
  @param ogData object containing open graph properties
  @param activeTab
  @param sitemap data for the sitemap
  @param itemtype
-->
<#macro page title bodyClass="" stylesheets=[] scripts=[] ogData={} activeTab="home" sitemap={} itemtype="https://schema.org/WebPage">
  <@collectPage title=title sitemap=sitemap />
  <#compress>
    <@preamble />
    <html lang="${c.lang}">
    <head prefix="og: http://ogp.me/ns#">
      <@charset />
      <title>Cedros Collective</title>
      <@defaultMetaTags />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="styles.css">
      <link rel="shortcut icon" href="img/c-logo.png" type="image/x-icon">
    </head>
    <body<#if bodyClass?has_content> class="${bodyClass}"</#if> itemscope itemtype="${itemtype}">
      <meta itemprop="dateModified" content="${pp.now?iso("America/Los_Angeles")}">
      <@header.header />
      <main class="page-main" role="main">
        </#compress><#nested /><#compress>
      </main>
      <#-- footer -->
      <@footer.wrapper>
        <@footer.copyright />

        <div class="leasing-agents-row">
            <@footer.leasingAgents />
            <@footer.cbre />
        </div>
      </@footer.wrapper>

      <#-- analytics -->
      <@googleAnalytics />
    </body>
    </html>
  </#compress>
</#macro>

<#---
  Adds to the list of pages for use in the sitemap and various navigations
  @param title string containing the title of the page
  @param sitemap data for the sitemap
-->
<#macro collectPage title sitemap>
  <#if !pp.s.pages??>
    <@pp.set hash=pp.s key="pages" value=pp.newWritableSequence() />
  </#if>
  <@pp.add seq=pp.s.pages
      value={
        "url": pp.pathTo(pp.outputFile),
        "title": title,
        "outputFile": pp.outputFile,
        "sitemap": sitemap
      }/>
</#macro>


<#---
  Charset meta tag
  Keep this separate from "defaultMetaTags" since it should go above the <title> tag
-->
<#macro charset>
  <meta charset="utf-8">
</#macro>


<#---
  Default meta tags
-->
<#macro defaultMetaTags>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="format-detection" content="telephone=no">
</#macro>


<#---
  Google analytics
  @param id
  @param domain
-->
<#macro googleAnalytics id=c.googleUA domain=c.domain>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '${id}', '${domain}');
    ga('send', 'pageview');
  </script>
</#macro>
