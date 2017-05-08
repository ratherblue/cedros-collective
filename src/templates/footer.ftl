<#---
  @namespace footer
-->


<#macro wrapper>
  <#compress>
    <div class="footer-wrapper">
      <div class="page-width">
        <footer class="footer" role="contentinfo">
          <#nested />
        </footer>
      </div>
    </div>
  </#compress>
</#macro>


<#macro copyright>
  <#compress>
    <p class="copyright"><#t />
      © ${pp.now?string('YYYY')} CBRE, Inc. All rights reserved. This information has been obtained from sources believed reliable, but has not been verified for accuracy or completeness. Any projections, opinions, or estimates are subject to uncertainty. The information may not represent the current or future performance of the property. You and your advisors should conduct a careful, independent investigation of the property and verify all information. Any reliance on this information is solely at your own risk. <br><#t />
    </p>
  </#compress>
</#macro>


<#macro leasingAgents>
  <#compress>
    <ul class="leasing-agents"><#t />
        <li><@leasingAgent "Dave Hagglund" "+1 858 546 4614" "dave.hagglund@cbre.com" "00898280" /></li><#t />
        <li><@leasingAgent "Rob Gunness" "+1 760 438 8524" "rob.gunness@cbre.com" "00943209" /></li><#t />
    </ul><#t />
  </#compress>
</#macro>

<#macro leasingAgent name phone email license>
  <#compress>
    <span class="name">${name}</span><span class="pipe" aria-hidden="true"></span><#t />

    <a class="phone-full" href="tel:${phone}">${phone}</a><#-- large viewports --><#t />
    <a class="phone-short" href="tel:${phone}"><i class="icon-phone"></i></a><#-- small viewports --><#t />
    <span class="pipe" aria-hidden="true"></span><#t />

    <a class="email-full" href="mailto:${email}">${email}</a><!-- large viewports --><#t />
    <a class="email-short" href="mailto:${email}"><i class="icon-mail_outline"></i></a><!-- large viewports --><#t />

    <span class="pipe" aria-hidden="true"></span><#t />
    Lic. ${license}<#t />
  </#compress>
</#macro>

<#macro cbre>
    <div class="cbre">
        <p>
            CBRE, INC.<br>
            Broker Lic. 00409987
        </p>

        <i class="icon-cbre" aria-hidden="true"></i>
    </div>
</#macro>
