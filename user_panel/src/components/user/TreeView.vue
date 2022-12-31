<template>
  <div>
   <!-- Page Content  -->
        <div id="content">
            <div class="container-fluid top-head-bg">
                <div class="row">
                   <div class="col-md-12">
                     <h1 class="header-light"><span>Tree View</span></h1>
                   </div>
                </div>
            </div>
            <div class="main-wraper">
              <div class="container-fluid">
                  <div class="row">
                      <div class="col-md-6">
                        <div class="topbar-tree-wombia">
                            <div class="input-group search-area">
                                <input type="text"  v-model="searchText" class="form-control" placeholder="Search" autocomplete="off" v-on:keyup="checkUserExisted" />
                                <span class="input-group-text">
                                    <a href="javascript:void(0)" @click="onSearchClick"> <i  class="flaticon-381-search-1"></i></a>
                                </span>
                            </div>
                            
                            <div class="intro-screen-tree">
                                <ul>
                                  <li> <i class="active-dot"></i>  Active </li>
                                  <li> <i class="inactive-dot"></i> Absent </li>
                                  <li> <i class="absent-dot"></i> Unactive </li>
                                  <!--<li> <i class="block-dot"></i> Block </li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                  </div>
                  <div class="row treeview-section">
                <div class="col-md-12">
                <div class="tree-struct">
                   <div class="row tree-level-1 midline row-level-1">
                    <div class="col-12 col-md-12">
                     <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                      </div>
                      <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                     </a>
                     <p class="p-title"><span>QU92101415</span></p>
                  </div>
                 </div>
                 <div class="row tree-level-2 midline VHline row-level-2">
                    <div class="col-6 col-md-6 cols-1">
                     <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                      </div>
                      <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                     </a>
                     <p class="p-title"><span>QU92101415</span></p>
                  </div>
                  <div class="col-6 col-md-6 cols-2">
                     <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/InActive.png" class="user-icons">
                      </div>
                      <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                     </a>
                     <p class="p-title"><span>QU92101415</span></p>
                  </div>
                 </div>
                 <div class="row row-level-3">
                    <div class="col-6 col-md-6">
                    <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-1">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/InActive.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-2">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                  <div class="col-6 col-md-6">
                     <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-3">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-4">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                 </div>
                 <div class="row row-level-4">
                    <div class="col-3 col-md-3">
                    <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-1">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-2">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                  <div class="col-3 col-md-3">
                     <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-3">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-4">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                  <div class="col-3 col-md-3">
                     <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-5">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/empty-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-6">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/empty-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                  <div class="col-3 col-md-3">
                     <div class="row tree-level-3 midline VHline">
                       <div class="col-6 col-md-6 cols-7">
                        <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                       </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                     <div class="col-6 col-md-6 cols-8">
                       <a href="#" class="mytooltip">
                        <div class="img-box">
                         <img src="/user-assets/images/Active-icon.png" class="user-icons">
                        </div>
                        <div class="tooltiptext">
                        <div class="tooltip-body">
                        <img src="/user-assets/images/tree_view_actove_icon.png" class="tool-icon">
                        <div class="detail-wraper d-flex">
                          <div class="box-d">
                          <p class="title-text">Add Bugh</p>
                          <p class="title-sm">Add Bugh</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">sponsor ID</p>
                          <p class="title-sm">AD12345678</p>
                        </div>
                        <div class="box-d">
                          <p class="title-text">Placement ID</p>
                          <p class="title-sm">PL123456</p>
                        </div>
                        </div>
                        <div class="date-wraper d-flex">
                           <div class="date-box left-box"><span>Date of joining</span> 21/08/15</div>
                         <div class="date-box right-box"><span>Package</span> Guardian</div>
                        </div>
                        <div class="table-responsive right-table">
                          <table class="table table-bordered">
                           <thead>
                            <tr>
                            <th>Details</th>
                            <th>Left</th>
                            <th>Right</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                            <td>Affiliates</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Sales</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                            <tr>
                            <td>Balance LS</td>
                            <td>0</td>
                            <td>0</td>
                            </tr>
                          </tbody>
                          </table>
                        </div>
                      </div>
                      </div>
                        </a>
                        <p class="p-title"><span>QU92101415</span></p>
                     </div>
                    </div>
                  </div>
                 </div>
                </div>
              </div>
             </div>
              </div>
          </div>
        </div>
  </div>
</template>

<script>


export default {
  name: "app",
 
};
</script>

