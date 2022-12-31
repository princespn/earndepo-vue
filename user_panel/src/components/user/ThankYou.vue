<template>
    <div>
        <div class="account-wraper d-flex">
          <div class="left-cols d-flex align-items-start justify-content-start thank-bg">
              <div class="account-logo">
                <img src="/user-assets/images/Plenetron-logo.png">
              </div>
          </div>
          <div class="right-cols d-flex align-items-center justify-content-center">
              <h1 class="heading-lg">Your Registration Successful</h1>
              <div class="form-wraper">
                <form>
                 <h5 class="heading-sm">Login</h5>
                 <div class="wraper-in">
                    <p class="text-center plain-text">Congratulations your submission has been successfully received</p>
                        <p class="text-center plain-text">You are now a registered member of <br><span>PLENETRON</span></p>
                        <form action="#" class="text-center ">
                            <div class="mb-2 id-text">
                               <h4><label><strong>User Id : </strong></label> {{user_id}}</h4>
                            </div>
                            <p class="id-fetch">PLE586512</p>
                             <div class="pass-text mb-2"> 
                               <h4><label><strong>Password : </strong></label>{{password}} </h4>
                            </div>
                            <p class="pass-fetch">Admin@123</p>
                            <div class="btn-wraper mt-3">
                                <button type="button" class="btn btn-login">Back To Login</button>
                            </div>
                        </form>
                         <!-- <div class="new-account mt-3">
                            <p>Already have an account? <a class="text-primary" href="#/login">Sign In</a></p>
                        </div> -->
                        <div class="content-wraper">
                            <p class="p-text text-center">Dont have an account ? <a href="/login">Sign Up</a></p>
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
