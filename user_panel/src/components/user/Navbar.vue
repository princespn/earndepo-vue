<template>
    <div class="leftnav-cols">
      <!-- Sidebar  -->
        <nav id="sidebar">
            <p class="navs-title">Choose Investment type:</p>
            <div class="invest-section">
                <div class="invest-box">
                      <ul class="nav nav-pills box-navs">
                        <li class="active page-lg">
                           <a href="#home" class="btnlink active show" data-toggle="pill" id="mining">
                                <div class="description-text">
                                    <p class="sm-title">Mining</p>
                                    <p class="sm-text"><b>&lt;CPU&amp;GPU cloud mining/&gt;</b></p>
                                </div>
                            </a>
                        </li>
                        <li class="page-lg">
                          <a href="#trade" class="btnlink" data-toggle="pill">
                                <div class="description-text">
                                  <p class="sm-title">Trading</p>
                                  <p class="sm-text"><b>&lt;24/7 auto trading/&gt;</b></p>
                              </div>
                            </a>
                        </li>
                        <li class="page-lg mb-5">
                          <a href="#ico" class="btnlink" data-toggle="pill">
                                <div class="description-text">
                                    <p class="sm-title">ICO</p>
                                    <p class="sm-text"><b>&lt;private&amp;public ICOs/&gt;</b></p>
                                </div>
                            </a>
                        </li>
                        <li class="page-sm"><a data-toggle="pill" href="#page1"><span><img src="user-assets/images/question-icon.png"></span> Question & Answers</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page2"><span><img src="user-assets/images/query-icon.png"></span> How to use?</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page3"><span><img src="user-assets/images/write-icon.png"></span> Write to use ?</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page4"><span><img src="user-assets/images/partner-icon.png"></span> For partners</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page5"><span><img src="user-assets/images/partner-icon.png"></span> For partners1</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page6"><span><img src="user-assets/images/partner-icon.png"></span> pay Deposit</a></li>
                        <!-- <li class="page-sm"><a data-toggle="pill" href="#page5"><span><img src="user-assets/images/partner-icon.png"></span> For partners1</a></li>
                        <li class="page-sm"><a data-toggle="pill" href="#page6"><span><img src="user-assets/images/partner-icon.png"></span> pay Deposit</a></li> -->
                      </ul>
                </div>
                <!--<div class="query-wraper">
                    <p class="text-query">Question & Answers</p>
                    <p class="text-query">How to use?</p>
                    <p class="text-query">Write to use?</p>
                    <p class="text-query">For partners</p>
                </div>-->
                <div class="query-wraper">
                  <ul class="nav nav-pills">
                    
                    
                  </ul>
                </div>
                <div class="navfooter-image text-center mt-5">
                    <img src="user-assets/images/ball-images.png">
                </div>
            </div>
        </nav>
        <nav class="navbar navbar-expand-lg navbar-light bg-light top-navbar">
                <div class="container-fluid">
                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <!--<span>Toggle Sidebar</span>-->
                    </button>
                    <div class="logo-wraper mx-auto">
                        <a href="#"><img src="user-assets/images/Earndepo-logo.png" class="logo-img"></a>
                    </div>
                </div>
        </nav>
    </div>
   
</template>

<script>


export default {
  name: 'User-Navbar',
  
}
</script>

