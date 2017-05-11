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
                <div class="address-wrapper">
                    <div class="numbers">
                        435<br>
                        439
                    </div>
                    <div class="plus">+</div>
                    <div class="street">
                        South<br>
                        Cedros<br>
                        Avenue
                    </div>
                </div>
                <div class="city">
                    Solana Beach, CA
                </div>

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
                <li><a href="#overview">Overview</a></li>
                <li><a href="#retail">Retail</a></li>
                <li><a href="#office">Office</a></li>
                <li><a href="#design-district">Cedros Avenue Design District</a></li>
                <li><a href="#map">Map</a></li>
                <li><a href="leasing-flyer.pdf">Leasing Flyer <i class="icon-picture_as_pdf"></i></a></li>
              </ul>
          </div>
      </nav>
    </div><#t />
  </#compress>
</#macro>
