<template>
    <div>
        <div class="account-wraper d-flex">
          <div class="left-cols d-flex align-items-start justify-content-start login-bg">
              <div class="account-logo">
                <img src="/user-assets/images/Plenetron-logo.png">
              </div>
          </div>
          <div class="right-cols d-flex align-items-center justify-content-center">
              <h1 class="heading-lg">Welcome To PLENETRON</h1>
              <div class="form-wraper">
                <form>
                 <h5 class="heading-sm">Login</h5>
                 <div class="wraper-in">
                  <div class="input-group mb-3">
                    <div class="input-group-text">
                       <img src="/user-assets/images/user-icon.png">
                    </div>
                    <input type="text" class="form-control" placeholder="User Name">
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-text">
                      <img src="/user-assets/images/lock-black.png">
                    </div>
                    <input type="password" class="form-control" placeholder="Password">
                  </div>
                  <div class="card card-captcha">
                            <div class="card-header">
                                <h4 class="title">Human Or Robot</h4>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="choose-box d-flex pick-box align-items-center">
                                    <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="/user-assets/images/robot-icon.png"></span>
                                   </label>
                                   <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="/user-assets/images/robot-icon.png"></span>
                                   </label>
                                   <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="/user-assets/images/robot-icon.png"></span>
                                   </label>
                                   <label class="label-right bitcoin align-items-center">
                                     <input type="radio" name="check">
                                     <span><img src="/user-assets/images/robot-icon.png"></span>
                                   </label>
                                </div>
                                <div class="tagline">Select One!</div>
                            </div>
                        </div>
                        <p class="forgot-text"><a href="#">Forgot Password ?</a></p>
                      <div class="btn-wraper mt-3">
                         <button type="button" class="btn btn-login">Login</button>
                      </div>
                      <div class="content-wraper">
                        <p class="p-text">Don't have an account ? <a href="">Sign Up</a></p>
                      </div>
                 </div> 
               </form>
              </div>
          </div>
       </div>
    </div>
</template>
<script>

export default {
    name: 'app',
  
}
</script>
