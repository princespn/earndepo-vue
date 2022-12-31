<template>
  <div>
   <!-- Page Content  -->
        <div id="content">
            <div class="container-fluid top-head-bg">
                <div class="row">
                   <div class="col-md-12">
                     <h1 class="header-light"><span>Withdraw</span></h1>
                   </div>
                </div>
            </div>
            <div class="main-wraper">
              <div class="container-fluid">
                  <div class="row">
                    <div class="col-12">
                       <form>
                        <div class="card card-bl">
                            <div class="card-header">
                                <h4 class="card-title">DATE RANGE</h4>
                            </div>
                            <div class="card-body">
                              <div class="table-filter d-flex justify-content-between">
                                 <div class="form-group range">
                                    <input type="text" class="form-control date-input" placeholder="From">
                                  </div>
                                  <div class="form-group range">
                                    <input type="text" class="form-control date-input" placeholder="To">
                                  </div>
                                  <div class="form-group range">
                                    <input type="text" class="form-control" placeholder="Search Wallet Type">
                                  </div>
                                  <div class="form-group btn-wraper">
                                    <button type="button" class="btn btn-serch">SEARCH</button>
                                  </div>
                                  <div class="form-group btn-wraper">
                                    <button type="button" class="btn btn-result">RESULT</button>
                                  </div>
                              </div>
                              <div class="tables-container">
                                <div class="table-responsive">
                                    <table id="report-table" class="report-table table depos-table table-striped table-sm table-borderless" style="width:100%">
                                        <thead>
                                          <tr>
                                            <th><span class="th-wraper">Sr. No</span></th>
                                            <th><span class="th-wraper">Date</span></th>
                                            <th><span class="th-wraper">Deposit Id</span></th>
                                            <th><span class="th-wraper">Amount</span></th>
                                            <th><span class="th-wraper">Address</span></th>
                                            <th><span class="th-wraper">Action</span></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>2.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>3.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>4.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>4.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>5.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>6.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>7.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                          <tr>
                                            <td>8.</td>
                                            <td>2021/10/12</td>
                                            <td>260606772964582</td>
                                            <td>$3</td>
                                            <td>bc1qhelhp6wym5mpn6hmc9q8htevdg7vuw</td>
                                            <td>Checkout</td>
                                          </tr>
                                        </tbody>
                                      </table>
                                </div>
                              </div>
                            </div>
                        </div>
                      </form>
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

