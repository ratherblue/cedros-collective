<#---
  @namespace footer
-->


<#macro wrapper>
  <div class="page-width">
    <footer class="footer" role="contentinfo">
      <#nested />
    </footer>
  </div>
</#macro>


<#macro copyright>
  <div class="copyright"><#t />
    © ${pp.now?string('YYYY')} Cedros Collective<#t />
  </div><#t />
</#macro>
