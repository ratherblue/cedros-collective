<#ftl strip_text=true />

<#---
  UI-related directives

  @namespace ui
-->


<#---
  Outputs an unordered list of breadcrumbs
  @param crumbs
-->
<#macro breadcrumb crumbs=[]>
  <#local crumbs = [{
    "title": "Home",
    "url": pp.pathTo('/index.html')
  }] + crumbs />
  <ul class="breadcrumb"><#t />
    <#list crumbs as crumb>
      <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><#t />
        <a title="${crumb.title?xhtml}" href="${crumb.url}" itemprop="url"><#t />
          <span itemprop="title">${crumb.title?xhtml}</span><#t />
        </a><#t />
      </li><#t />
    </#list>
  </ul><#t />
</#macro>


<#---
  Page section
  @param id
  @param title
  @param class
-->
<#macro portfolioSection id title class="">
  <section id="${id}" class="${("portfolio-section " + class)?trim}">
    <h1 class="section-header">${title}</h1>
    <#nested />
  </section>
</#macro>

<#---
  Page section
  @param id
  @param title
  @param class
-->
<#macro resumeSection id title class="">
  <section id="${id}" class="${("resume-section " + class)?trim}">
    <h1 class="section-header">${title}</h1>
    <#nested />
  </section>
</#macro>


<#---
  @param class
  @param attrs
-->
<#macro pageTitle class="" attrs="">
  <h1 class="${('page-title ' + class)?trim}"<#if attrs?has_content> ${attrs}</#if>><#nested /></h1>
</#macro>
