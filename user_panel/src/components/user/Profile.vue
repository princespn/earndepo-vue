<template>
  <div>
   <!-- Page Content  -->
        <div id="content">
            <div class="container-fluid top-head-bg">
                <div class="row">
                   <div class="col-md-12">
                     <h1 class="header-light"><span>My Profile</span></h1>
                   </div>
                </div>
            </div>
            <div class="main-wraper">
              <form>
              <div class="container-fluid">
                  <div class="row profilsection mb-3">
                  <div class="col-lg-8">
                    <div class="row">
                      <div class="col-md-12 mb-3">
                    <div class="card dash-card card-bl">
                          <div class="card-header">
                           <ul class="nav nav-pills">
                              <li class="active">
                                  <a data-toggle="pill" href="#home" class="active">
                                    <span>
                                      <svg xmlns="http://www.w3.org/2000/svg" width="23.328" height="22.101" viewBox="0 0 23.328 22.101">
                                        <path id="Icon_material-account-balance-wallet" data-name="Icon material-account-balance-wallet" d="M26.6,22.917v1.228A2.463,2.463,0,0,1,24.145,26.6H6.956A2.455,2.455,0,0,1,4.5,24.145V6.956A2.455,2.455,0,0,1,6.956,4.5H24.145A2.463,2.463,0,0,1,26.6,6.956V8.183H15.55a2.455,2.455,0,0,0-2.456,2.456v9.822a2.455,2.455,0,0,0,2.456,2.456ZM15.55,20.462H27.828V10.639H15.55Zm4.911-3.07A1.842,1.842,0,1,1,22.3,15.55,1.839,1.839,0,0,1,20.462,17.392Z" transform="translate(-4.5 -4.5)" fill="#ffffff"/>
                                      </svg>
                                    </span>
                                    Wallet Address
                                  </a>
                              </li>
                              <li>
                                <a data-toggle="pill" href="#menu1">
                                <span>
                                  <svg xmlns="http://www.w3.org/2000/svg" width="21" height="24" viewBox="0 0 21 24">
                                    <path id="Icon_awesome-bell" data-name="Icon awesome-bell" d="M10.5,24a3,3,0,0,0,3-3h-6A3,3,0,0,0,10.5,24Zm10.1-7.018c-.906-.973-2.6-2.437-2.6-7.232a7.4,7.4,0,0,0-6-7.273V1.5a1.5,1.5,0,1,0-3,0v.977A7.4,7.4,0,0,0,3,9.75c0,4.8-1.695,6.259-2.6,7.232A1.465,1.465,0,0,0,0,18a1.5,1.5,0,0,0,1.5,1.5H19.5A1.5,1.5,0,0,0,21,18a1.464,1.464,0,0,0-.4-1.018Z" transform="translate(0)" fill="#fff"/>
                                  </svg>
                                </span>
                                Notification</a>
                              </li>
                              <li>
                                <a data-toggle="pill" href="#menu2">
                                <span>
                                  <svg xmlns="http://www.w3.org/2000/svg" width="21" height="24" viewBox="0 0 21 24">
                                      <path id="Icon_awesome-lock" data-name="Icon awesome-lock" d="M18.75,10.5H17.625V7.125a7.125,7.125,0,0,0-14.25,0V10.5H2.25A2.251,2.251,0,0,0,0,12.75v9A2.251,2.251,0,0,0,2.25,24h16.5A2.251,2.251,0,0,0,21,21.75v-9A2.251,2.251,0,0,0,18.75,10.5Zm-4.875,0H7.125V7.125a3.375,3.375,0,0,1,6.75,0Z" fill="#fff"/>
                                    </svg>
                                </span>
                                Change Password
                                </a>
                              </li>
                            </ul>
                          </div>
                          <div class="card-body">
                             <div class="wraper-inner light-style">
                                <div class="tab-content">
                                  <div id="home" class="tab-pane fade show active">
                                    <h3 class="tab-header">Currency Address</h3>
                                    <div class="form-wraper">
                                       <div class="input-group mb-3 copy-groups">
                                          <input type="text" class="form-control addIcon bit-input" value="1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2">
                                          <div class="input-group-append">
                                            <button class="btn btn-success" type="submit"><img src="/user-assets/images/copy-red.png"></button>
                                          </div>
                                        </div>
                                        <div class="input-group mb-3 copy-groups">
                                          <input type="text" class="form-control addIcon tron-input" value="1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2">
                                          <div class="input-group-append">
                                            <button class="btn btn-success" type="submit"><img src="/user-assets/images/copy-red.png"></button>
                                          </div>
                                        </div>
                                        <div class="input-group mb-3 copy-groups">
                                          <input type="text" class="form-control addIcon bit-input" value="1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2">
                                          <div class="input-group-append">
                                            <button class="btn btn-success" type="submit"><img src="/user-assets/images/copy-red.png"></button>
                                          </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div id="menu1" class="tab-pane fade">
                                    <h3 class="tab-header">Currency Address</h3>
                                    <div class="row align-items-center notification-switch">
                                       <div class="col-md-8 left-cols">Email me when my ROI Revenue generates</div>
                                       <div class="col-md-4 right-cols">
                                         <label class="switch">
                                            <input type="checkbox">
                                            <span class="slider round"></span>
                                        </label>
                                       </div>
                                    </div>
                                    <div class="row align-items-center notification-switch">
                                       <div class="col-md-8 left-cols">Email me when my Direct Revenue generates.</div>
                                       <div class="col-md-4 right-cols">
                                         <label class="switch">
                                            <input type="checkbox">
                                            <span class="slider round"></span>
                                        </label>
                                       </div>
                                    </div>
                                    <div class="row align-items-center notification-switch">
                                       <div class="col-md-8 left-cols">Email me when my Team Rank upgrade.</div>
                                       <div class="col-md-4 right-cols">
                                         <label class="switch">
                                            <input type="checkbox">
                                            <span class="slider round"></span>
                                        </label>
                                       </div>
                                    </div>
                                  </div>
                                  <div id="menu2" class="tab-pane fade">
                                    <h3 class="tab-header">Old Password</h3>
                                    <div class="form-wraper">
                                       <div class="form-group mb-3 copy-groups">
                                          <input type="password" class="form-control addIcon lock-input" placeholder="Enter Your Old Password">
                                        </div>
                                        <div class="form-group mb-3 copy-groups">
                                          <input type="password" class="form-control addIcon lock-input" placeholder="Enter Your New Password">
                                        </div>
                                        <div class="form-group mb-3 copy-groups">
                                          <input type="password" class="form-control addIcon lock-input" placeholder="Confirm New Password">
                                        </div>
                                        <div class="btn-wraper">
                                          <button type="button" class="btn btn-withdraw btn-large">UPDATE PASSWORD</button>
                                        </div>
                                    </div>
                                  </div>
                                </div>
                             </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="card dash-card security-card card-bl">
                          <div class="card-header">
                              <h3 class="tab-header">Security<span>Status : Disable</span></h3>
                          </div>
                          <div class="card-body">
                             <div class="wraper-inner light-style d-flex align-items-center justify-content-center">
                               <div class="left-cols">
                                 <p class="text-para">Authenticator on your mobile device</p>
                               </div>
                               <div class="right-cols">
                                 <img src="/user-assets/images/authenticate.png">
                               </div>
                             </div>
                          </div>
                        </div>
                      </div>
                      </div>
                  </div>
                  <div class="col-lg-4">
                     <div class="card card-bl">
                          <div class="card-body">
                             <div class="wraper-inner light-style">
                               <div class="profile-container">
                                  <div class="img-wraper">
                                    <img src="/user-assets/images/profile-pics.png">
                                    <label for="test" class="custom-file-upload">
                                    <div><img src="/user-assets/images/upload-icon.png" class="upload-icon"></div>
                                    <input type="file" id="test">
                                  </label>
                                  </div>
                               </div>
                               <div class="form-group input-sm copy-groups">
                                <div class="d-flex input-header">
                                  <label class="title">Your Full Name</label>
                                </div>
                                <input type="text" class="form-control" id="usr" value="John Smith">
                               </div>
                               <div class="form-group input-sm copy-groups">
                                <div class="d-flex input-header">
                                  <label class="title">User ID:</label>
                                </div>
                                <input type="text" class="form-control" id="usr" value="PLE568562">
                               </div>
                               <div class="form-group input-sm copy-groups">
                                <div class="d-flex input-header">
                                  <label class="title">Email ID:</label>
                                </div>
                                <input type="text" class="form-control" id="usr" value="PLE568562">
                               </div>
                             </div>
                          </div>
                        </div>

                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
  </div>
</template>

<script>


export default {
  name: "app",
 
};
</script>

