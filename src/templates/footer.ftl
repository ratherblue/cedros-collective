<#---
  @namespace footer
-->


<#macro wrapper>
  <#compress>
    <div class="page-width">
      <footer class="footer" role="contentinfo">
        <#nested />
      </footer>
    </div>
  </#compress>
</#macro>


<#macro copyright>
  <#compress>
    <div class="copyright"><#t />
      © ${pp.now?string('YYYY')} Cedros Collective<br><#t />
    </div>
    <div class="copyright-assets">
      Floor Plans and Renderings © <a href="http://brianchurcharchitecture.com">Brian Church Architecture</a><#t />
    </div><#t />
  </#compress>
</#macro>
