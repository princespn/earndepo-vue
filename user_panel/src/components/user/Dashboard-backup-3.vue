<template>
  <div class="rightdash-cols">
<div id="content">
            <div class="container-fluid top-head-bg">
                <div class="row">
                   <div class="col-md-12">
                     
                   </div>
                </div>
            </div>
            <div class="main-wraper">
                  <div class="tab-content">
                    <div id="home" class="tab-pane fade active">
                       <div class="flex-cover d-flex">
                          <div class="content-section">
                            <!--Message Show After Deposit -->
                            <div class="waiting-box mb-4" id="confirmmsg" style="display : none;">
                               <p class="box-title">Payment awaiting confirmation</p>
                               <p class="box-text">Email response time is up to 24 hours! Do not write your e-mail message again earlier than 24 hours later!</p>
                            </div>
                            <!--Message Show After Deposit -->
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <div class="plan-section">
                                          <h1 class="heading-b mb-4">CPU'n'GPU cloud mining plans:</h1>
                                          <div class="row">
                                              <div class="col-md-12 d-flex justify-content-center plan-12">
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-before">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/chart-circle.png" class="logo-img"></div>
                                                          <p class="percent-vals">{{ userdata.min_daily_perc }}%</p>
                                                          <p class="sm-text">Daily for {{ userdata.min_daily_day }} day</p>
                                                      </div>
                                                  </div>
                                                  <center>
                                                    <input type="hidden" id="imgid"/>
                                                    <input type="hidden" id="minidval"/>
                                                    <input type="hidden" id="maxidval"/>
                                                  <input type="radio" :checked="txtmining == '1'" name="txtminings" id="txtminings1" value="1" @change="getchangetype('1')"/>
                                                </center>
                                                </div>
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-after">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/circle-chart.png" class="logo-img"></div>
                                                          <p class="percent-vals"> {{ userdata.min_onetime_perc }}%</p>
                                                          <p class="sm-text">After  {{ userdata.min_onetime_day }} days</p> 
                                                      </div>
                                                  </div>
                                                  <center>
                                                    <input type="radio" :checked="txtmining == '2'" name="txtminings"  id="txtminings2" value="2" @change="getchangetype('2')">
                                                  </center>
                                                </div>
                                              </div>
                                          </div>                                 
                                      </div>
                                  </div>
                              </div>
                              <div class="row deposit-section">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-4">Deposit Amount ::</h1>
                                  </div>
                                  <div class="col-md-12">
                                    <form>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box">
                                            <input type="number" id="miningvalnum" name="amountInput" step=0.01 :min="minval" :max="maxval"  value="" oninput="this.form.amountRange.value=this.value" @keyup="chkmining(minval)" @blur="mminandmax(minval, maxval)" />
                                     <!-- <input type="number" min=0.001 max="2.100" oninput="validity.valid||(value='100');" id="max_price" class="price-range-field" /> -->
                                          </div>
                                          <div class="show-box trx-box">{{ codes }}</div>
                                      </div>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box" style="width: 100%;">
                                            <input type="range" id="miningvalran" name="amountRange" step=0.01 :min="minval" :max="maxval" value="" oninput="this.form.amountInput.value=this.value" @input="chkmining(minval)" @blur="mminandmax(minval, maxval)" />
                                           </div>
                                      </div>
                                     <!-- <div class="range-wraper">
                                       <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                                    </div> -->
                                    </form>
                                  </div>
                              </div>
                              <div class="row income-section">
                                  <div class="col-md-12">
                                      <div class="row">
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH1">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x1 accural</p>
                                                      <p class="trx-no">{{ minonedaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH2">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x{{ userdata.min_daily_day }} accural</p>
                                                      <p class="trx-no">{{ minmultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                           <div class="col-12 col-sm-12 col-md-12 col-lg-6 offset-md-3" style="display:none" id="OSH12">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Total with x{{ userdata.min_onetime_day }} compound accruals:</p>
                                                      <p class="trx-no">{{ minmultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="row">
                                  <div class="col-md-12 text-center">
                                       <ul class="nav nav-pills justify-content-center nav-btn-wraper">
                                        <li class="active"><a @click="NotUpline('mspon')" href="javascript:void(0);" class="btn btn-upline">you don't have upline</a></li>
                                        <li class="active"><a @click="GetUpline('mspon')" href="javascript:void(0);" class="btn btn-upline">you have upline</a></li>
                                      </ul>
                                  </div>
                              </div>
                              <div class="row address-section">
                                  <div class="col-md-12">
                                      <div class="tab-content">
                                          <div id="upline-1" class="tab-pane fade show active">
                                            <div class="address-wraper">
                                                <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Your Mail Address">
                                                </div>
                                                <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Your Crypto Address">
                                                </div>
                                                
                                                <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Enter Your Sponcer ID">
                                                </div>
                                            </div>
                                          </div>
                                          <div id="upline-2" class="tab-pane fade">
                                             <div class="address-wraper">
                                                <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Your Mail Address">
                                                </div>
                                                <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Your Crypto Address">
                                                </div>
                                                </div>
                                          <!-- <div id="upline-1" class="tab-pane fade show active"> -->
                                            <!-- <div class="address-wraper">
                                            </div> -->
                                          <!-- </div> -->
                                          <!-- <div id="upline-2" class="tab-pane fade"> -->
                                             <div class="address-wraper">
                                                <div class="form-group">
                                                    <input type="email" id="memail" v-model="userdata.email" class="form-control" data-vv-as="email" placeholder="Your Mail Address">
                                                    <span class="text-danger ">{{ this.memailmsg }}</span>
                                               </div>
                                                <div class="form-group">
                                                    <input type="text" id="maddress" class="form-control" data-vv-as="coin_address" v-model="userdata.coin_address"   placeholder="Your Crypto Address">
                                                     <span class="text-danger ">{{ this.maddmsg }}</span>
                                                </div>
                                                <div class="form-group" id="mspon">
                                                   <input type="text"  class="form-control" placeholder="Enter Your Sponcer ID" v-model="userdata.referral_id" onkeyup="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57)"  v-on:input="checkuserexist(2)" id="referral_id" data-vv-as="referral id">
                                                  <div v-if="!useractive" class="tooltip2">
                                                  <span class="text-danger ">{{ this.usermsg }}</span>
                                                  </div>
                                                </div>
                                            </div>
                                         </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="row">
                                  <div class="col-md-12">
                                      <div class="btn-wraper text-center">
                                          <button type="button" class="btn pay-btn" @click="getAmtDeposit('1')">PAY DEPOSIT</button>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          </div>
                          <div class="icon-section">
                             <div class="icon-section">
                              <ul class="icon-wraper">
                                 <!-- <li><a href="#"><img src="user-assets/images/Bitcoin_perspective_matte.png" class="currency-img"></a></li>
                                 <li><a href="#"><img src="user-assets/images/Dogecoin_perspective_matte.png" class="currency-img"></a></li>
                                 <li><a href="#"><img src="user-assets/images/Tether_perspective_matte.png" class="currency-img"></a></li>
                                 <li><a href="#"><img src="user-assets/images/Litecoin_perspective_matte.png" class="currency-img"></a></li>
                                 <li><a href="#"><img src="user-assets/images/Ethereum_perspective_matte.png" class="currency-img"></a></li> -->
                                 <li v-for="coinimg in coinimgs" :key="coinimg.code" :value="coinimg.id">
                                    <a href="#"><img :src="coinimg.img" class="currency-img" @click="showImg(coinimg.id)"></a>
                                 </li>
                              </ul>
                            </div>
                          </div>
                      </div>
                    </div>
                    <div id="trade" class="tab-pane fade">
                       <div class="flex-cover d-flex">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <div class="plan-section">
                                          <h1 class="heading-b mb-4">24/7 auto trading plans:</h1>
                                          <div class="row">
                                              <div class="col-md-12 d-flex justify-content-center plan-12">
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-before">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/chart-circle.png" class="logo-img"></div>
                                                          <p class="percent-vals">{{ userdata.trade_daily_perc }}%</p>
                                                          <p class="sm-text">Daily for {{ userdata.trade_daily_day }} day</p>
                                                      </div>
                                                  </div>
                                                  <center>
                                                    <!-- <input type="hidden" id="imgid"/>
                                                     <input type="hidden" id="minidval"/>
                                                      <input type="hidden" id="maxidval"/> -->
                                                  <input type="radio" :checked="txttrade == '3'" name="txttrades" id="txttrades3" value="3" @change="getchangetype('3')"></center>
                                                </div>
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-after">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/circle-chart.png" class="logo-img"></div>
                                                          <p class="percent-vals"> {{ userdata.trade_onetime_perc }}%</p>
                                                          <p class="sm-text">After  {{ userdata.trade_onetime_day }} days</p> 
                                                      </div>
                                                  </div>
                                                  <center><input type="radio" :checked="txttrade == '4'" name="txttrades"  id="txttrades4" value="4" @change="getchangetype('4')"></center>
                                                </div>
                                              </div>
                                          </div>                                 
                                      </div>
                                  </div>
                              </div>
                              <div class="row deposit-section">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-4">Deposit Amount ::</h1>
                                  </div>
                                  <div class="col-md-12">
                                    <form>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box">
                                            <input type="number" id="tradevalnum" name="amountInput" step=0.01 :min="minval" :max="maxval"  value="" oninput="this.form.amountRange.value=this.value" @keyup="chktrading(minval)" @blur="tminandmax(minval, maxval)"/>
                                     <!-- <input type="number" min=0.001 max="2.100" oninput="validity.valid||(value='100');" id="max_price" class="price-range-field" /> -->
                                          </div>
                                          <div class="show-box trx-box">{{ codes }}</div>
                                      </div>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box" style="width: 100%;">
                                            <input type="range" id="tradevalran" name="amountRange" step=0.01 :min="minval" :max="maxval" value="" oninput="this.form.amountInput.value=this.value" @keyup="chktrading(minval)" @blur="tminandmax(minval, maxval)"/>
                                           </div>
                                      </div>
                                     <!-- <div class="range-wraper">
                                       <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                                    </div> -->
                                    </form>
                                  </div>
                              </div>
                              <div class="row income-section">
                                  <div class="col-md-12">
                                      <div class="row">
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH3">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x1 accural</p>
                                                      <p class="trx-no">{{ tradeonedaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH4">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x{{ userdata.trade_daily_day }} accural</p>
                                                      <p class="trx-no">{{ trademultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6 offset-md-3" style="display:none" id="OSH34">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Total with x{{ userdata.trade_onetime_day }} compound accruals:</p>
                                                      <p class="trx-no">{{ trademultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="row">
                                  <div class="col-md-12 text-center">
                                       <ul class="nav nav-pills justify-content-center nav-btn-wraper">
                                        <li class="active"><a @click="NotUpline('tspon')" href="javascript:void(0);" class="btn btn-upline">you don't have upline</a></li>
                                        <li class="active"><a @click="GetUpline('tspon')" href="javascript:void(0);" class="btn btn-upline">you have upline</a></li>
                                      </ul>
                                  </div>
                              </div>
                              <div class="row address-section">
                                  <div class="col-md-12">
                                      <div class="tab-content">
                                          <!-- <div id="upline-1" class="tab-pane fade show active"> -->
                                            <!-- <div class="address-wraper">
                                            </div> -->
                                          <!-- </div> -->
                                          <!-- <div id="upline-2" class="tab-pane fade"> -->
                                             <div class="address-wraper">
                                                <div class="form-group">
                                                    <input type="email" id="temail" v-model="userdata.email" class="form-control" data-vv-as="email" placeholder="Your Mail Address">
                                                    <span class="text-danger ">{{ this.temailmsg }}</span>
                                               </div>
                                                <div class="form-group">
                                                    <input type="text" id="taddress" class="form-control" data-vv-as="coin_address" v-model="userdata.coin_address"   placeholder="Your Crypto Address">
                                                     <span class="text-danger ">{{ this.taddmsg }}</span>
                                                </div>
                                                <div class="form-group" id="tspon">
                                                   <input type="text"  class="form-control" placeholder="Enter Your Sponcer ID" v-model="userdata.referral_id" onkeyup="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57)"  v-on:input="checkuserexist(2)" id="referral_id" data-vv-as="referral id">
                                                  <div v-if="!useractive" class="tooltip2">
                                                  <span class="text-danger ">{{ this.usermsg }}</span>
                                                  </div>
                                                </div>
                                            </div>
                                          <!-- </div> -->
                                      </div>
                                  </div>
                              </div>
                              <div class="row">
                                  <div class="col-md-12">
                                      <div class="btn-wraper text-center">
                                          <button type="button" class="btn pay-btn" @click="getAmtDeposit('2')">PAY DEPOSIT</button>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          </div>
                          <div class="icon-section">
                             <div class="icon-section">
                              <ul class="icon-wraper">
                                  <li v-for="coinimg in coinimgs" :key="coinimg.code" :value="coinimg.id">
                                    <a href="#"><img :src="coinimg.img" class="currency-img" @click="showImg(coinimg.id)"></a>
                                 </li>
                              </ul>
                            </div>
                          </div>
                      </div>
                    </div>
                    <div id="ico" class="tab-pane fade">
                      <div class="flex-cover d-flex">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <div class="plan-section">
                                          <h1 class="heading-b mb-4">Private'n'public ICO plans:</h1>
                                          <div class="row">
                                              <div class="col-md-12 d-flex justify-content-center plan-12">
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-before">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/chart-circle.png" class="logo-img"></div>
                                                          <p class="percent-vals">{{ userdata.ico_daily_perc }}%</p>
                                                          <p class="sm-text">Daily for {{ userdata.ico_daily_day }} day</p>
                                                      </div>
                                                  </div>
                                                  <center>
                                                    <!-- <input type="hidden" id="imgid"/>
                                                     <input type="hidden" id="minidval"/>
                                                      <input type="hidden" id="maxidval"/> -->
                                                  <input type="radio" :checked="txtico == '5'" name="txticos" id="txticos5" value="5" @change="getchangetype('5')"></center>
                                                </div>
                                                <div class="card-wraper-pl">
                                                  <div class="card card-plan card-after">
                                                      <div class="card-body">
                                                          <div class="icon-wraper"><img src="user-assets/images/circle-chart.png" class="logo-img"></div>
                                                          <p class="percent-vals"> {{ userdata.ico_onetime_perc }}%</p>
                                                          <p class="sm-text">After  {{ userdata.ico_onetime_day }} days</p> 
                                                      </div>
                                                  </div>
                                                  <center><input type="radio" :checked="txtico == '6'" name="txticos"  id="txticos6" value="6" @change="getchangetype('6')"></center>
                                                </div>
                                              </div>
                                          </div>                                 
                                      </div>
                                  </div>
                              </div>
                              <div class="row deposit-section">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-4">Deposit Amount ::</h1>
                                  </div>
                                  <div class="col-md-12">
                                    <form>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box">
                                            <input type="number" id="icovalnum" name="amountInput" step=0.01 :min="minval" :max="maxval"  value="" oninput="this.form.amountRange.value=this.value" @keyup="chkico(minval)"  @blur="iminandmax(minval, maxval)"/>
                                     <!-- <input type="number" min=0.001 max="2.100" oninput="validity.valid||(value='100');" id="max_price" class="price-range-field" /> -->
                                          </div>
                                          <div class="show-box trx-box">{{ codes }}</div>
                                      </div>
                                      <div class="show-line d-flex">
                                          <div class="show-box value-box" style="width: 100%;">
                                            <input type="range" id="icovalran" name="amountRange" step=0.01 :min="minval" :max="maxval" value="" oninput="this.form.amountInput.value=this.value" @input="chkico(minval)"  @blur="iminandmax(minval, maxval)"/>
                                           </div>
                                      </div>
                                     <!-- <div class="range-wraper">
                                       <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                                    </div> -->
                                    </form>
                                  </div>
                              </div>
                              <div class="row income-section">
                                  <div class="col-md-12">
                                      <div class="row">
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH5">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x1 accural</p>
                                                      <p class="trx-no">{{ icoonedaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="DSH6">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Income with x{{ userdata.ico_daily_day }} accural</p>
                                                      <p class="trx-no">{{ icomultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-12 col-sm-12 col-md-12 col-lg-6 offset-md-3" style="display:none" id="OSH56">
                                              <div class="card card-income">
                                                  <div class="card-body text-center">
                                                      <p class="card-title">Total with x{{ userdata.ico_onetime_day }} compound accruals:</p>
                                                      <p class="trx-no">{{ icomultidaycal }} {{ codes }}</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="row">
                                  <div class="col-md-12 text-center">
                                       <ul class="nav nav-pills justify-content-center nav-btn-wraper">
                                        <li class="active"><a @click="NotUpline('ispon')" href="javascript:void(0);" class="btn btn-upline">you don't have upline</a></li>
                                        <li class="active"><a @click="GetUpline('ispon')" href="javascript:void(0);" class="btn btn-upline">you have upline</a></li>
                                      </ul>
                                  </div>
                              </div>
                              <div class="row address-section">
                                  <div class="col-md-12">
                                      <div class="tab-content">
                                          <!-- <div id="upline-1" class="tab-pane fade show active"> -->
                                            <!-- <div class="address-wraper">
                                            </div> -->
                                          <!-- </div> -->
                                          <!-- <div id="upline-2" class="tab-pane fade"> -->
                                             <div class="address-wraper">
                                                <div class="form-group">
                                                    <input type="email" id="iemail" v-model="userdata.email" class="form-control" data-vv-as="email" placeholder="Your Mail Address">
                                                    <span class="text-danger ">{{ this.iemailmsg }}</span>
                                               </div>
                                                <div class="form-group">
                                                    <input type="text" id="iaddress" class="form-control" data-vv-as="coin_address" v-model="userdata.coin_address"   placeholder="Your Crypto Address">
                                                     <span class="text-danger ">{{ this.iaddmsg }}</span>
                                                </div>
                                                <div class="form-group" id="ispon">
                                                   <input type="text"  class="form-control" placeholder="Enter Your Sponcer ID" v-model="userdata.referral_id" onkeyup="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57)"  v-on:input="checkuserexist(2)" id="referral_id" data-vv-as="referral id">
                                                  <div v-if="!useractive" class="tooltip2">
                                                  <span class="text-danger ">{{ this.usermsg }}</span>
                                                  </div>
                                                </div>
                                            </div>
                                          <!-- </div> -->
                                      </div>
                                  </div>
                              </div>
                             <div class="row">
                                  <div class="col-md-12">
                                      <div class="btn-wraper text-center">
                                          <button type="button" class="btn pay-btn" @click="getAmtDeposit('3')">PAY DEPOSIT</button>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          </div>
                          <div class="icon-section">
                             <div class="icon-section">
                              <ul class="icon-wraper">
                                 <li v-for="coinimg in coinimgs" :key="coinimg.code" :value="coinimg.id">
                                    <a href="#"><img :src="coinimg.img" class="currency-img" @click="showImg(coinimg.id)"></a>
                                 </li>
                              </ul>
                            </div>
                          </div>
                      </div>
                    </div>
                    <div id="page1" class="tab-pane fade">
                      <div class="flex-cover d-flex noright-section">
                        <div class="content-section">
                           <div class="container-fluid">
                            <div class="row mb-4">
                                <div class="col-md-12">
                                    <h1 class="heading-b mb-5 text-left">Frequent questions and answers</h1>
                                </div>
                                <div class="col-md-12">
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        Do I need to register to open a deposit ?
                                      </p>
                                      <p class="answer-text">
                                        No. Our site does not need registration. Just select the type of investment, investment plan, enter your e-mail, a wallet to withdraw funds, deposit amount and pay a deposit.
                                      </p>
                                   </div>
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        How can I order a withdrawal of funds?
                                      </p>
                                      <p class="answer-text">
                                        All withdrawals of funds occur automatically. It is not need to create an request for the withdrawal of funds.
                                      </p>
                                   </div>
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        On what days are accruals and withdrawals of funds?
                                      </p>
                                      <p class="answer-text">
                                        In the basic mode of accruals and withdrawals of funds from Monday to Friday. For PRO members accruals and withdrawals of funds - every day.
                                      </p>
                                   </div>
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        What is the minimum withdrawal amount?
                                      </p>
                                      <p class="answer-text">
                                        There is no minimum for withdrawing! Nevertheless, some cryptocurrency exchanges or wallets for cryptocurrency may have restrictions on the minimum amount of creditworthiness, otherwise the funds will not be credited to your balance.
                                      </p>
                                   </div>
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        Will I get the principal at the end of the term?
                                      </p>
                                      <p class="answer-text">
                                        Principal included in accruals.
                                      </p>
                                   </div>
                                   <div class="question-wraper">
                                      <p class="quest-text">
                                        Do I need to register to open a deposit ?
                                      </p>
                                      <p class="answer-text">
                                        No. Our site does not need registration. Just select the type of investment, investment plan, enter your e-mail, a wallet to withdraw funds, deposit amount and pay a deposit.
                                      </p>
                                   </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                    <div id="page2" class="tab-pane fade">
                      <div class="flex-cover d-flex noright-section">
                        <div class="content-section">
                           <div class="container-fluid">
                            <div class="row mb-4">
                                <div class="col-md-12">
                                    <h1 class="heading-b mb-5 text-center">How to use our website?</h1>
                                </div>
                                <div class="col-md-12">
                                   <div class="help-wraper">
                                       <ul class="nav nav-pills justify-content-center tab-navs">
                                          <li class="active"><a data-toggle="pill" href="#invest-panel" class="active">Investor</a></li>
                                          <li><a data-toggle="pill" href="#partner-panel">Partner</a></li>
                                       </ul>
                                       <div class="tab-content mt-5">
                                        <div id="invest-panel" class="tab-pane fade show active">
                                          <div class="help-box">
                                             <h3 class="quest-title">1. Choose investments type</h3>
                                             <p class="answer-text">Select the type of investment you want. We offer our investors three types of investment programs - mining, trade and ICO. Mining is a type of investment that allows you to make a profit stably and confidently, but the profit will be significantly lower than that of trading or ICOs. Trading is an ideal combination of speed, risks and profitability. ICO is a very risky type of investment that allows you to win the jackpot here and now or a little wait and get a significant profit compared to trading or mining. Regardless of the type of investment, all deposits of our investors are insured and we guarantee a return up to 100% of the deposit amount!</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/investment-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">2. Choose payment system</h3>
                                             <p class="answer-text">Choose the type of payment system in which you wish to make a deposit and receive payouts. We offer a time-tested PerfectMoney payment system for investments in dollars, as well as cryptocurrencies Bitcoin, Ethereum, Litecoin, Dash, Bitcoin Gold, XRP, Ethereum Classic, QTUM, Lumens, Tether (TRC-20), Dogecoin, Tron. We do not convert cryptocurrency deposits into dollars. Accruals and payments on cryptocurrency deposits are made in the currency of the cryptocurrency itself.</p>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">3. Choose investment plan</h3>
                                             <p class="answer-text">Take a look at the investment plans available for each type of investment and choose the one that interests you the most. You can make an unlimited number of deposits to each plan, and you can also make repeated deposits to the same plan at the same time.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/invplan-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">4. Enter amount of deposit</h3>
                                             <p class="answer-text">Specify the desired deposit amount by entering it in the field or using the slider. When specifying the deposit amount, you can immediately see the amount of each payout, as well as the total amount of all accruals on the deposit. The body of the deposit is included in the accruals and is not returned at the end of the term!</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/deposit-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">5. Check your upline</h3>
                                             <p class="answer-text">If you see "You don't have upline", this means, you have followed direct link instead of the referral one of your upline. Make sure, that this field contains your upline`s e-mail, so that your upline would be able to receive a refferal commission.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/upline-screen.png" class="screen-img upline-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">6. Enter your email address, wallet/cryptoaddress and tag/memo/payment ID (optional) if you choosed crypto</h3>
                                             <p class="answer-text">The next step you need to specify your email address. If you have selected the PerfectMoney payment system, then you can skip the step of indicating your address of the wallet for payments and it will be received automatically or you can specify the wallet number yourself if you want to get payments for another wallet number that is different from the number of the payment from which the payment will be made.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/address-screen.png" class="screen-img">
                                             </div>
                                             <p class="answer-text">If you have chosen a cryptocurrency as a payment of a deposit, then you must specify a cryptoaddress for receiving payments. For some cryptocurrencies, an introduction of a tag/memo/payment ID may also be required, without which the payment will not be credited on the balance of your wallet and the funds will be lost. Also, check that the minimum payment amount that can be credited to your wallet is less and equal to the sum of each transaction of the payment of funds by deposit.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/address-screen-2.png" class="screen-img">
                                             </div>
                                             <p class="answer-text"><strong>You still don`t have a wallet?</strong> You can create wallets of the favorable payment system using the following links PerfectMoney, Guarda Crypto Wallet, Blockchain Crypto Wallet or Binance Crypto Exchange. To top up wallet you can use the exchanges that can be found by the link https://www.bestchange.com/ or cryptoexchanges like https://www.binance.com/</p>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">7. Check and pay deposit</h3>
                                             <p class="answer-text">After you have filled out the investment form - you need to click the "Pay deposit" button.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/paydepo-screen.png" class="screen-img upline-img">
                                             </div>
                                             <p class="answer-text">If you have chosen the PerfectMoney payment system, then you will be redirected to the website of the payment system for pay the deposit. If you have chosen cryptocurrency, then page with information about the deposit will be displayed with for you, as well as the instructions for paying for a deposit in cryptocurrency.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/check-screen.png" class="screen-img">
                                             </div>
                                             <p class="answer-text">In the instructions for paying for a deposit in cryptocurrency, you will be shown the address of the wallet to which it is necessary to transfer funds, as well as the necessary amount of transfer. For convenience, you can use QR code.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/qr-screen.png" class="screen-img" style="width:70%;">
                                             </div>
                                             <p class="answer-text">After you make a payment in cryptocurrency, you will need to click the "Confirm payment" button.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/confirm-screen.png" class="screen-img upline-img">
                                             </div>
                                             <p class="answer-text">After confirming the payment, you will be shown that your application is accepted and your deposit will be activated as soon as your funds are received on our wallet and receive from 1 to 20 confirmations on the network (depending on cryptocurrency).</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/yellow-screen.png" class="screen-img">
                                             </div>
                                             <p class="answer-text">In the case of the PerfectMoney payment system, your deposit will be activated immediately after payment.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/grey-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">8. Schedule of accruals and withdrawals</h3>
                                             <p class="answer-text">In our system you don't need withdrawal request. Withdrawals are fully automatic and you don`t need to make a request for this. Accruals and withdrawals are made automatically from Monday to Friday at different time. For PRO members accruals and withdrawals of funds - every day.</p>
                                          </div>
                                        </div>
                                        <div id="partner-panel" class="tab-pane fade">
                                          <div class="help-box">
                                             <h3 class="quest-title">1. Registration in the affiliate program</h3>
                                             <p class="answer-text">For registration in the affiliate program, you need to indicate: the name of the user that will be used in your referral link; your active email address; Indicate your password twice; Select the payment system for receiving funds and indicate the number/address of the wallet and the tag/memo/payment ID (optional). You can change your wallet for referral payments only through support and only in the same payment system. If you want to change the payment system, you will need to create a new partner account. Regardless of the payment system in which the user invited by you will make - you will receive payment in the payment system that you have chosen at the rate during the activation of the deposit.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/signup-image.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">2. Authorization in the affiliate program</h3>
                                             <p class="answer-text">For authorization, you will need to indicate the email address and the password indicated by the registration step or received after the account is restored.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/login-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">3. Restore password</h3>
                                             <p class="answer-text">To restore the password, you will need to indicate your username and email address, after which you will receive a link to restore the password to your email address. Follow the link in the letter to get a new password from your account by your email.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/reset-screen.png" class="screen-img">
                                             </div>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">4. Promotional materials</h3>
                                             <p class="answer-text">In order to advertise our project we have created banners for you in 5 most popular formats: 1200x150px, 728x90px, 468x60px, 160x600px, 125x125px</p>
                                          </div>
                                          <div class="help-box">
                                             <h3 class="quest-title">5. Affiliates cabinet</h3>
                                             <p class="answer-text">In the partnership office, in addition to the exile for inviting investors and statistics on active deposits of users you invited, you will find a link for obtaining a list of API deposits, as well as relevant bets on the partnership program for various types of investments and investment plans.</p>
                                             <div class="img-wraper">
                                               <img src="user-assets/images/referal-screen.png" class="screen-img">
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
                    <div id="page3" class="tab-pane fade">
                        <div class="flex-cover d-flex noright-section">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-5 text-center">Feedback</h1>
                                  </div>
                                  <div class="col-md-12">
                                     <div class="feedback-wraper">
                                       <p class="hint-text">Email response time is up to 24 hours! Do not write your e-mail message again earlier than 24 hours later!</p>
                                        <div class="form-group">
                                          <input type="text" class="form-control input-line" placeholder="Your Name">
                                        </div>
                                        <div class="form-group">
                                          <input type="text" class="form-control input-line" placeholder="your Email">
                                        </div>
                                        <div class="form-group">
                                          <textarea class="form-control input-line message-input" rowspan="4" colspan="4" placeholder="Your Message"></textarea>
                                        </div>
                                        <div class="btn-wraper text-center mt-4">
                                          <button type="button" class="btn pay-btn btn-lg">Send Message</button>
                                      </div>
                                     </div>
                                  </div>
                              </div>
                            </div>
                          </div>
                      </div>
                    </div>
                    <div id="page4" class="tab-pane fade">
                        <div class="flex-cover d-flex noright-section">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-5 text-center">Affiliates program up to 15%</h1>
                                  </div>
                                  <div class="col-md-12">
                                     <div class="login-wraper">
                                        <ul class="nav nav-pills justify-content-center tab-navs">
                                            <li class="active"><a data-toggle="pill" href="#signup-panel" class="active">Sign up</a></li>
                                            <li><a data-toggle="pill" href="#login-panel">log in</a></li>
                                            <li><a data-toggle="pill" href="#reset-panel">Restore</a></li>
                                          </ul>

                                          <div class="tab-content">
                                            <div id="signup-panel" class="tab-pane fade show active">
                                             <Register></Register>
                                            </div>
                                            <div id="login-panel" class="tab-pane fade">
                                             <Login></Login>
                                            </div>
                                            <div id="reset-panel" class="tab-pane fade">
                                             <Reset></Reset>
                                            </div>
                                          </div>
                                     </div>
                                  </div>
                              </div>
                          </div>
                          </div>
                      </div>
                    </div>
                     <div id="page5" class="tab-pane fade">
                        <div class="flex-cover d-flex noright-section">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-5 text-left">Affiliates program up to 15%</h1>
                                  </div>
                                  <div class="col-md-12" style="">
                                     <div class="listing-container">
                                       <div class="listing-box">
                                           <p class="title-p">Invite link (to invite investors):</p>
                                           <p class="desc-p">https://earndepo.com/joseph08</p>
                                       </div>
                                       <div class="listing-box">
                                           <p class="title-p">Your API link (only for private use!):</p>
                                           <p class="desc-p">https://earndepo.com/api.php?method=payment&key=0097ec687b5b</p>
                                       </div>
                                       <div class="listing-box">
                                           <p class="title-p">Wallet for withdrawals:</p>
                                           <p class="desc-p">Tron THGkuQPBQYDqphTxTazGxJkMHNC1rvJjvH</p>
                                       </div>
                                       <div class="listing-box">
                                           <p class="title-p">Your list of commissions:</p>
                                           <p class="desc-p">standard daily plans - 1%, standard after plans - 3%, limited daily plans - 5</p>
                                       </div>
                                       <p class="text-note">You can create another partner account for using another wallet to withdraw funds!</p>
                                        <div class="btn-wraper text-center mt-4 btn-wraper-sm">
                                            <button type="button" class="btn pay-btn btn-lg" @click="reload">Update</button>
                                            <button type="button" class="btn pay-btn btn-lg" @click="logout">Logout</button>
                                        </div>
                                     </div>
                                  </div>
                              </div>
                            </div>
                          </div>
                      </div>
                    </div>
                    <div id="page6" class="tab-pane fade">
                        <div class="flex-cover d-flex noright-section">
                          <div class="content-section">
                             <div class="container-fluid">
                              <div class="row mb-4">
                                  <div class="col-md-12">
                                      <h1 class="heading-b mb-5 text-center">Check and pay deposit:</h1>
                                  </div>
                                  <div class="col-md-12">
                                     <div class="login-wraper listing-container">
                                       <div class="row">
                                          <div class="col-md-6">
                                            <div class="payslip-wraper" v-if="this.invoice.roi_status === 'Daily'">
                                                <!-- <div class="payslip-box">
                                                   <p class="title">Term of deposit :</p>
                                                   <p class="text-value">21 days (including weekends)</p>
                                                </div> -->
                                                <div class="payslip-box">
                                                   <p class="title">Payment time :</p>
                                                   <p class="text-value">{{ this.invoice.paymenttime }}</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Deposit amount :</p>
                                                   <p class="text-value">{{ this.invoice.depositamt }} {{ this.invoice.network_type }}</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Interest rate :</p>
                                                   <p class="text-value">{{ this.invoice.intrestrate }}%</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Tota percentage (including principal):</p>
                                                   <p class="text-value">{{ this.invoice.intrestrate * this.invoice.paymenttime }}%</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Amount of each payout:</p>
                                                   <p class="text-value">{{ this.invoice.perday }} {{ this.invoice.network_type }} </p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Amount of payout:</p>
                                                   <p class="text-value">{{ this.invoice.netprofit }} {{ this.invoice.network_type }} </p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Total profit :</p>
                                                   <p class="text-value"> {{ this.invoice.totalprofit }} {{ this.invoice.network_type }}</p>
                                                </div>
                                             </div>
                                             <div class="payslip-wraper" v-if="this.invoice.roi_status === 'One Time'">
                                                <!-- <div class="payslip-box">
                                                   <p class="title">Term of deposit :</p>
                                                   <p class="text-value">21 days (including weekends)</p>
                                                </div> -->
                                                <div class="payslip-box">
                                                   <p class="title">Payment time :</p>
                                                   <p class="text-value">1x</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Payment type :</p>
                                                   <p class="text-value">auto</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Deposit amount :</p>
                                                   <p class="text-value">{{ this.invoice.depositamt }} {{ this.invoice.network_type }}</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Interest rate :</p>
                                                   <p class="text-value">{{ this.invoice.intrestrate }}%</p>
                                                </div>
                                                <div class="payslip-box">
                                                   <p class="title">Amount of Payout :</p>
                                                   <p class="text-value"> {{ this.invoice.totalprofit }} {{ this.invoice.network_type }}</p>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-md-6">
                                             <div class="qr-wraper">
                                                <div class="img-wraper"><img src="user-assets/images/qr-code.png" class="qr-image"></div>
                                                <p class="text-hint">Send amount <span>{{ this.invoice.depositamt }} {{ this.invoice.network_type }}</span> to our {{ this.invoice.currency_name }} address and click <span>"Confirm payment"</span></p>
                                                <div class="btn-wraper text-center mb-4">
                                                    <button type="button" class="btn btn-crypto">{{ this.invoice.address }}</button>
                                                </div>
                                                <div class="btn-wraper text-center">
                                                    <button type="button" class="btn pay-btn confirm-btn" @click="confirmmsg()">Confirm Payment</button>
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
                 </div>
            </div>
        </div>
  </div>
</template>
<script>
  import { GETPACKMAXMIN,CHECKUSEREXIST, GETPACKAGES, GETCOINIMG, GETAMTDEPOSIT } from "@/store/actions.type";
  
import Register from "@/components/user/Auth/Register.vue";
import Login from "@/components/user/Auth/Login.vue";
import Reset from "@/components/user/Auth/Reset.vue";
// import Uplines from "@/components/user/Uplines.vue";

 import $ from "jquery";
 import ValidatioMixin from "@/mixins/ValidatioMixin";
//  import Vue from 'vue';
//   import VueQrcode from '@xkeshi/vue-qrcode';
//   Vue.component(VueQrcode.name, VueQrcode);


export default {
    name: "app",
     mixins: [ValidatioMixin],

  components: {
    Login,
    Register,
    Reset,
    // Uplines
},
  data() {
    return {
       checkedval:"",       
        usermsg:"",
        memailmsg:"",
        maddmsg:"",
        temailmsg:'',
        taddmsg:"",
        iemailmsg:'',
        iaddmsg:"",
       userdata: {
        email:'',
        coin_address:'',
        referral_id:'',
        ico_daily_id:0,
        ico_daily_day: 0,
        ico_daily_perc: 0,
        ico_onetime_id:0,
        ico_onetime_day: 0,
        ico_onetime_perc: 0,
        min_daily_id: 0,
        min_daily_day: 0,
        min_daily_perc: 0,
        min_onetime_id: 0,
        min_onetime_day: 0,
        min_onetime_perc: 0,
        trade_daily_id: 0,
        trade_daily_day: 0,
        trade_daily_perc: 0,
        trade_onetime_id: 0,
        trade_onetime_day: 0,
        trade_onetime_perc: 0,
      },
      // coinimgs:[],
      coinimgs: {
        id: "",
        img: "",
        coin:"",
      },
      maxmin: {
        id: "",
        code:"",
      },
      invoice:{
        qrcodevalue:'',
        currency:'',
        perday:0,
        netprofit:0,
        totalprofit:0,
        depositamt:0,
        remainingTime:'00:00:00',
        address:'',
        paymentId:'',
        intrestrate:'',
        paymenttime:'',
        currency_name:''
      },
      txttrade : "",
      txtico : "",
      txtmining : "",
      minval:"",
      maxval:"",
      minonedaycal:"",
      minmultidaycal:"",
      tradeonedaycal:"",
      trademultidaycal:"",
      icoonedaycal:"",
      icomultidaycal:"",
      codes:"BTC",
      amount:0,
      pid:0,
      cadd:'',
      cmail:''
    };
  },
  computed: {
    // isCompleteProfile() {
      
    // }
  },
  mounted() {
   this.getpackages();
   this.getcoinimg();
   this.tabmining();
   this.tabtrading();
   this.icotab();
   this.showImg(1);
   this.NotUpline('mspon');
   this.NotUpline('tspon');
   this.NotUpline('ispon');
    $('#home').addClass('show active');
  },
  methods: {
    
    checkuserexist() {

      if (this.userdata.referral_id == '') {
                this.usermsg = "";
              }else {
  
       var user = this.userdata.referral_id;
      
      var data = {
        user_id: user,
      };


      this.$store
        .dispatch(CHECKUSEREXIST, data)
        .then((response) => {
          if (response.code == 200) {
              this.useractive = false;
              this.isActiveBtn = false;
              this.usermsg = "";
              
            }else{
               this.usermsg = "Sponsor's id Not Available";
            }
          
        })
        .catch();
      }
    },
    // mining //
    tabmining(){
        this.txtmining = "1";
    },
     chkmining(miningminval){
      let currval = (isNaN(parseFloat($('#miningvalnum').val())) ? miningminval : parseFloat($('#miningvalnum').val()));
     let minradio = $("input[type='radio'][name='txtminings']:checked").val();
      if(minradio == 1){
          let minchkamt = this.userdata.min_daily_perc * currval / 100;
          this.minonedaycal = (minchkamt).toFixed(5);
          this.minmultidaycal = (minchkamt * this.userdata.min_daily_day).toFixed(5);
      }else if(minradio == 2){
          let minchkamt = this.userdata.min_onetime_perc * currval / 100;
          this.minonedaycal = (minchkamt).toFixed(5);
          this.minmultidaycal = (minchkamt).toFixed(5);
      }
    },
    mminandmax(miningminval, miningmaxval){
         let currval = (isNaN(parseFloat($('#miningvalnum').val())) ? miningminval : parseFloat($('#miningvalnum').val()));
        if(miningminval > currval || currval == ''){
          $("#miningvalnum").val(miningminval);
          $("#miningvalran").val(miningminval);
          this.chkmining(miningminval);
        }
        else if(miningmaxval < currval){
          $("#miningvalnum").val(miningmaxval);
          $("#miningvalran").val(miningmaxval);
          this.chkmining(miningminval);
        }
    },
    // trading //
    tabtrading(){
        this.txttrade = "3";
    },
    chktrading(tradingminval){
     let currval = (isNaN(parseFloat($('#tradevalnum').val())) ? tradingminval : parseFloat($('#tradevalnum').val()));
      let traderadio = $("input[type='radio'][name='txttrades']:checked").val();
      if(traderadio == 3){
          let tradechkamt = this.userdata.trade_daily_perc * currval / 100;
          this.tradeonedaycal = (tradechkamt).toFixed(5);
          this.trademultidaycal = (tradechkamt * this.userdata.trade_daily_day).toFixed(4);
      }else if(traderadio == 4){
          let tradechkamt = this.userdata.trade_onetime_perc * currval / 100;
          this.tradeonedaycal = (tradechkamt).toFixed(5);
          this.trademultidaycal = (tradechkamt).toFixed(4);
      }
    },
    tminandmax(tradingminval, tradingmaxval){
         let currval = (isNaN(parseFloat($('#tradevalnum').val())) ? tradingminval : parseFloat($('#tradevalnum').val()));
        if(tradingminval > currval || currval == ''){
              $("#tradevalnum").val(tradingminval);
              $("#tradevalran").val(tradingminval);
              this.chktrading(tradingminval);
            }else if(tradingminval < currval){
              $("#miningvalnum").val(tradingmaxval);
              $("#miningvalran").val(tradingmaxval);
              this.chktrading(tradingminval);
            }
    },
    // ico //
    icotab(){
        this.txtico = "5";
    },
    chkico(icominval){
      let currval = (isNaN(parseFloat($('#icovalnum').val())) ? icominval : parseFloat($('#icovalnum').val()));
      let icoradio = $("input[type='radio'][name='txticos']:checked").val();
      if(icoradio == 5){
          let icochkamt = this.userdata.ico_daily_perc * currval / 100;
          this.icoonedaycal = (icochkamt).toFixed(5);
          this.icomultidaycal = (icochkamt * this.userdata.ico_daily_day).toFixed(4);
      }else if(icoradio == 6){
          let icochkamt = this.userdata.ico_onetime_perc * currval / 100;
          this.icoonedaycal = (icochkamt).toFixed(5);
          this.icomultidaycal = (icochkamt).toFixed(4);
      }
    },
    iminandmax(icominval, icomaxval){
        let currval = (isNaN(parseFloat($('#icovalnum').val())) ? icominval : parseFloat($('#icovalnum').val()));
        if(icominval > currval || currval == ''){
          $("#icovalnum").val(icominval);
          $("#icovalran").val(icominval);
          this.chkico(icominval)
        }else if(icomaxval < currval){
          $("#icovalnum").val(icomaxval);
          $("#icovalran").val(icomaxval);
          this.chkico(icominval)
        }
    },
    // common code //
    getchangetype(val){
      if(val == 2 || val == 4 || val == 6){
        document.getElementById('txtminings2').checked = true;
        document.getElementById('txttrades4').checked = true;
        document.getElementById('txticos6').checked = true;
        }else{
        document.getElementById('txtminings1').checked = true;
        document.getElementById('txttrades3').checked = true;
        document.getElementById('txticos5').checked = true;
        }

        let imgid = document.getElementById("imgid").value;
        this.showImg(imgid);
        let minradio = $("input[type='radio'][name='txtminings']:checked").val();
        let traderadio = $("input[type='radio'][name='txttrades']:checked").val();
        let icoradio = $("input[type='radio'][name='txticos']:checked").val();
        if(minradio == 2 || traderadio == 4 || icoradio == 6){
              document.getElementById("DSH1").style.display = 'none';
              document.getElementById("DSH2").style.display = 'none';
              document.getElementById("OSH12").style.display = 'block';
              document.getElementById("DSH3").style.display = 'none';
              document.getElementById("DSH4").style.display = 'none';
              document.getElementById("OSH34").style.display = 'block';
              document.getElementById("DSH5").style.display = 'none';
              document.getElementById("DSH6").style.display = 'none';
              document.getElementById("OSH56").style.display = 'block';
        }else{
              document.getElementById("DSH1").style.display = 'block';
              document.getElementById("DSH2").style.display = 'block';
              document.getElementById("OSH12").style.display = 'none';
              document.getElementById("DSH3").style.display = 'block';
              document.getElementById("DSH4").style.display = 'block';
              document.getElementById("OSH34").style.display = 'none';
              document.getElementById("DSH5").style.display = 'block';
              document.getElementById("DSH6").style.display = 'block';
              document.getElementById("OSH56").style.display = 'none';
        }
    },
    showImg(coinid){
      document.getElementById("imgid").value = coinid;
      let minradio = $("input[type='radio'][name='txtminings']:checked").val();
      let traderadio = $("input[type='radio'][name='txttrades']:checked").val();
      let icoradio = $("input[type='radio'][name='txticos']:checked").val();
      this.$store.dispatch(GETPACKMAXMIN, {cid:coinid})
        .then(response => {
          this.maxmin = response.data;
          this.codes = this.maxmin[0]['code']
          if(minradio == 2 || traderadio == 4 || icoradio == 6){
           this.minval = this.maxmin[0]['min_onetime'];
           this.maxval = this.maxmin[0]['max_onetime'];
          }else{
            this.minval = this.maxmin[0]['min_daily'];
            this.maxval = this.maxmin[0]['max_daily'];
          }
          document.getElementById("minidval").value = this.minval;
          document.getElementById("maxidval").value = this.maxval;

          document.getElementById("miningvalnum").value = this.minval;
          document.getElementById("miningvalran").value = this.minval;
          this.chkmining(this.minval, this.maxval);
          document.getElementById("tradevalnum").value = this.minval;
          document.getElementById("tradevalran").value = this.minval;
          this.chktrading(this.minval, this.maxval);
          document.getElementById("icovalnum").value = this.minval;
          document.getElementById("icovalran").value = this.minval;
          this.chkico(this.minval, this.maxval);
        })
        .catch(error => {
          this.$toast.error(error);
        });
    },
    getpackages() {
     this.$store.dispatch(GETPACKAGES)
        .then(response => {
          this.userdata = response.data;
        })
        .catch(error => {
          this.$toast.error(error);
        });
    },
    getcoinimg() {
       this.$store
              .dispatch(GETCOINIMG) 
        .then(response => {
          this.coinimgs = response.data;
          this.getchangetype('0');
        })
        .catch( );
    },
    GetUpline(val){
      document.getElementById(val).style.display='block';
    },
    NotUpline(val){
      document.getElementById(val).style.display='none';
    },
    confirmmsg(){
      document.getElementById('confirmmsg').style.display='block';
       $('#page1').removeClass('show active');
      $('#page2').removeClass('show active');
      $('#page3').removeClass('show active');
      $('#page4').removeClass('show active');
      $('#page5').removeClass('show active'); 
      $('#trade').removeClass('show active');
      $('#ico').removeClass('show active');
      $('#page6').removeClass('show active'); 
      $('#home').addClass('show active');
    },
    logout() {
         localStorage.removeItem("user-token");
         localStorage.removeItem("type");
        $('#trade').removeClass('show active');
        $('#ico').removeClass('show active');            
        $('#page1').removeClass('show active');
        $('#page2').removeClass('show active');
        $('#page3').removeClass('show active');
        $('#page4').removeClass('show active');
        $('#page5').removeClass('show active');
        $('#page6').removeClass('show active');
        $('#home').addClass('show active');
    },
    reload(){
            $('#page5').addClass('show active');
    },
    getAmtDeposit(val){
      if(val == 1){
        this.amount = (isNaN(parseFloat($('#miningvalnum').val())) ? 0 : parseFloat($('#miningvalnum').val()));
        this.pid = $("input[type='radio'][name='txtminings']:checked").val();
        this.cmail = $('#memail').val();
        this.cadd = $('#maddress').val();
        if(this.cmail == ""){ this.memailmsg = 'Email Required'; if(this.cadd != ""){ this.maddmsg = ' '; } return; }
        if(this.cadd == ""){ this.maddmsg = 'Address Required'; if(this.cmail != ""){ this.memailmsg = ' ';} return; }
      }else if(val == 2){
        this.amount = (isNaN(parseFloat($('#tradevalnum').val())) ? 0 : parseFloat($('#tradevalnum').val()));
        this.pid = $("input[type='radio'][name='txttrades']:checked").val();
        this.cmail = $('#temail').val();
        this.cadd = $('#taddress').val();
        if(this.tmail == ""){ this.temailmsg = 'Email Required'; if(this.tadd != ""){ this.taddmsg = ' '; } return; }
        if(this.tadd == ""){ this.taddmsg = 'Address Required'; if(this.tmail != ""){ this.temailmsg = ' ';} return; }
       }else if(val == 3){
        this.amount = (isNaN(parseFloat($('#icovalnum').val())) ? 0 : parseFloat($('#icovalnum').val()));
        this.pid = $("input[type='radio'][name='txticos']:checked").val();
        this.cmail = $('#iemail').val();
        this.cadd = $('#iaddress').val();
        if(this.imail == ""){ this.iemailmsg = 'Email Required'; if(this.iadd != ""){ this.iaddmsg = ' '; } return; }
        if(this.iadd == ""){ this.iaddmsg = 'Address Required'; if(this.imail != ""){ this.iemailmsg = ' ';} return; }
      }

      this.$store
              .dispatch(GETAMTDEPOSIT, {
                  currency_code: this.codes,
                  hash_unit: this.amount,
                  product_id: this.pid,
                  uaddress: this.cadd,
                  email: this.cmail,
                  uspon:this.userdata.referral_id})
        .then(response => {
          if(response.code == 200){
              this.invoice = response.data;
              this.qrcodevalue = this.invoice.address;
                if(this.invoice.payment_by == "coinpayment"){
                $('#page1').removeClass('show active');
                $('#page2').removeClass('show active');
                $('#page3').removeClass('show active');
                $('#page4').removeClass('show active');
                $('#page5').removeClass('show active'); 
                $('#trade').removeClass('show active');
                $('#ico').removeClass('show active');
                $('#home').removeClass('show active'); 
                $('#page6').addClass('show active');
                  //location.replace(this.invoice.status_url);
                } 
              this.getchangetype('0');
          }else{
            if(val == 1){
              this.memailmsg = response.message;
              this.maddmsg = ' ';
            }else if(val == 2){
                    this.temailmsg = response.message;
                    this.taddmsg = ' ';
            }else if(val == 3){
                    this.iemailmsg = response.message;
                    this.iaddmsg = ' ';
            }
          }
        })
        .catch( );
    },
    // common code //
  }
};
</script>

