<#---
  @namespace header
-->


<#macro header>
  <#compress>
    <div class="header-wrapper"><#t />
      <header class="page-width header" role="banner"><#t />
        <i class="icon-logo" aria-label="Cedros Collective"></i>

        <div class="header-row">
            <div class="address">
                435 and 439 South Cedros Avenue, Solana Beach, CA
            </div>
            <#-- <i class="icon-cbre"></i> -->
        </div>

      </header><#t />
      <nav id="navWrapper" class="nav-wrapper">
          <#-- keep page width its own element so the mobile menu css is less complicated -->
          <div class="page-width">
              <div class="mobile-header">
                  <div class="mobile-logo">Cedros Collective</div>
                  <button class="toggle" type="button"
                          onclick="document.getElementById('navWrapper').classList.toggle('mobile-menu-open');">
                      <i class="icon-menu"></i>
                  </button>
              </div>
              <ul class="navigation">
                <li><a href="#">Overview</a></li>
                <li><a href="#">Retail</a></li>
                <li><a href="#">Office</a></li>
                <li><a href=#">Cedros Avenue Design District</a></li>
                <li><a href="#">Map</a></li>
                <li><a href="#">Leasing Flyer</a></li>
              </ul>
          </div>
      </nav>
    </div><#t />
  </#compress>
</#macro>
