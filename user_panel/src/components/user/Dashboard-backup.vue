<template>
  <div>
   <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light top-navbar">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <!--<span>Toggle Sidebar</span>-->
                    </button>
                    <span class="webpage-title">My Panel</span>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                IP Address : 162.158.191.174
                            </li>
                            <li class="nav-item">
                                Server Time :2022-02-10
                            </li>
                            <li class="nav-item">
                                20:12:04
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="main-wraper">
              <div class="container-fluid">
                  <div class="row pro-section">
                      <div class="col-md-8">
                          <div class="row h-100">
                              <div class="col-md-4 profit-cols">
                                  <div class="card card-bl">
                                      <div class="card-body d-flex">
                                        <div class="text-side">
                                          <p class="title">ROI PROFIT</p>
                                          <p class="amts">$0</p>
                                       </div>
                                       <div class="image-side"><img src="https://iili.io/jUNpou.png"></div>
                                      </div>
                                  </div>
                                  <div class="card card-bl">
                                      <div class="card-body d-flex">
                                        <div class="text-side">
                                          <p class="title">BINARY PROFIT</p>
                                          <p class="amts">$0</p>
                                       </div>
                                       <div class="image-side"><img src="https://iili.io/jsXbOQ.png"></div>
                                      </div>
                                  </div>
                                  <div class="card card-bl">
                                      <div class="card-body d-flex">
                                        <div class="text-side">
                                          <p class="title">DIRECT PROFIT</p>
                                          <p class="amts">$0</p>
                                       </div>
                                       <div class="image-side"><img src="https://iili.io/jshdqF.png"></div>
                                      </div>
                                  </div>
                                  <div class="card card-bl">
                                      <div class="card-body d-flex">
                                        <div class="text-side">
                                          <p class="title">EARNING WALLET</p>
                                          <p class="amts">$0</p>
                                       </div>
                                       <div class="image-side"><img src="https://iili.io/jshqeR.png"></div>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-md-8 referal-cols">
                                  <div class="card referral-wraper card-bl">
                                      <div class="card-body d-flex align-items-center justify-content-end">
                                         <div class="img-wraper"><img src="https://iili.io/jgFVbR.png"></div>
                                         <div class="btn-wraper d-block">
                                             <a href="#" class="btn btn-blue">Referral Links</a>
                                         </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="col-md-4 fund-cols">
                          <div class="card card-bl">
                              <div class="card-body">
                                <p class="card-title">Add Fund</p>
                                <div class="total-vals d-flex">
                                    <div class="title">Total Deposit Income</div>
                                    <div class="amount">$1000</div>
                                </div>
                                <div class="form-group">
                                  <label for="usr">Enter Amount (In USD):</label>
                                  <input type="text" class="form-control" id="usr" value="$500">
                                </div>
                                <div class="progress-wraper">
                                    <img src="https://iili.io/jrGYVR.png">
                                </div>
                                <p class="paymode-title">Payment Mode</p>
                                <div class="paymentmode-wraper paym-mode d-flex">
                                    <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="https://iili.io/jrLal2.png"> Bitcoin (BTC)</span>
                                   </label>
                                   <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="https://iili.io/jrQCsj.png"> Ethereum</span>
                                   </label>
                                </div>
                                <div class="btn-wraper">
                                    <button type="button" class="btn btn-blue">Make Payment</button>
                                </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="row report-section">
                     <div class="col-md-8">
                         <div class="card referral-wraper card-bl">
                              <div class="card-body">
                                 <div class="header-flex d-flex align-items-center mb-5">
                                     <div class="title">Revenue Report</div>
                                     <div class="graph-status d-flex align-items-center">
                                         <div class="status-box d-flex align-items-center"><span class="pointer binary"></span> Binary Income</div>
                                         <div class="status-box d-flex align-items-center"><span class="pointer direct"></span> Direct Income</div>
                                     </div>
                                 </div>
                                 <div class="graph-container">
                                     <img src="https://iili.io/j6V8ns.png">
                                 </div>
                              </div>
                          </div>
                     </div>
                     <div class="col-md-4 fund-cols">
                         <div class="card card-bl">
                              <div class="card-body">
                                <p class="card-title">Withdrawal</p>
                                <div class="total-vals d-flex">
                                    <div class="title">Total Income in Earning Wallet</div>
                                    <div class="amount">$1000</div>
                                </div>
                                <p class="paymode-title">Payment Mode</p>
                                <div class="paymentmode-wraper paym-mode d-flex">
                                    <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="https://iili.io/jrLal2.png"> Bitcoin (BTC)</span>
                                   </label>
                                   <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="https://iili.io/jrQCsj.png"> Ethereum</span>
                                   </label>
                                </div>
                                 <div class="form-group">
                                  <label for="usr">Enter The Available Amount:</label>
                                  <input type="text" class="form-control" id="usr" value="$500">
                                </div>
                                 <div class="form-group">
                                  <label for="usr">Deduction:</label>
                                  <input type="text" class="form-control" id="usr" value="$500">
                                </div>
                                <div class="btn-wraper">
                                    <button type="button" class="btn btn-blue">Make Payment</button>
                                </div>
                              </div>
                          </div>
                     </div>  
                  </div>
                  <div class="row table-section">
                      <div class="col-md-12">
                          <div class="card referral-wraper card-bl">
                              <div class="card-body">
                                 <div class="header-flex d-flex align-items-center mb-2">
                                     <div class="title">Total Users</div>
                                     
                                 </div>
                                 <div class="table-responsive user-table">
                                     <table id="example" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>User Id</th>
                                                <th>Position</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1.</td>
                                                <td>8563941</td>
                                                <td>Left</td>
                                                <td>2021/12/02</td>
                                                <td><span class="active-box">Active</span></td>
                                            </tr>
                                            <tr>
                                                <td>2.</td>
                                                <td>8563941</td>
                                                <td>Left</td>
                                                <td>2021/12/02</td>
                                                <td><span class="active-box">Active</span></td>
                                            </tr>
                                            <tr>
                                                <td>3.</td>
                                                <td>8563941</td>
                                                <td>Left</td>
                                                <td>2021/12/02</td>
                                                <td><span class="active-box">Active</span></td>
                                            </tr>
                                            <tr>
                                                <td>4.</td>
                                                <td>8563941</td>
                                                <td>Left</td>
                                                <td>2021/12/02</td>
                                                <td><span class="active-box">Active</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
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

