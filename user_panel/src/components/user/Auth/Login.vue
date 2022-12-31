<template>
   <form action="" @submit.prevent="login">
    <div class="form-group">
    <input type="text" class="form-control input-line" placeholder="Your Email"    data-vv-as="email"  data-vv-validate-on="change|blur"  @blur="EmaiValidation($event)" required="" v-model="user.email" autofocus="">
    </div>
    <div class="form-group">
    <input type="password" class="form-control input-line" placeholder="Your Password" name="password" id="password" v-model="user.password" required="">
    </div>
    <div class="btn-wraper text-center mt-4">
    <button :disabled="!loginComplete"  type="submit" class="btn pay-btn btn-lg">Login</button>
    </div>
    </form>
</template>

<script>
    import $ from "jquery";
    import {LOGIN} from "@/store/actions.type";
    import ValidatioMixin from "@/mixins/ValidatioMixin";
    import { domain } from'../../../../user_config';
    export default {
        name: 'app',
        mixins: [ValidatioMixin],
            data() {
                return {
                    nameErr:'',
                    errorpwd:'',
                     weburl:'',
                    user: {
                        email: '',
                        password: ''
                    },
               
                    hostName: window.location.origin,
                    verify2fa:'',
                    googleotp : null,
                    token : null,
                    verifymailotp : null,
                    otp : null,
                    rand_no:'',
                    captcha:'',
                    captchamatch:false,
                    terms:false,
                    showpassword: 0,
                     eye: "fa fa-eye-slash",
                    captchamatcherror:'',
                    
                }
            },
            computed:{
               loginComplete(){
                  return this.user.email && this.user.password;
               }
            },
            mounted() {
                    this.weburl = domain;
                    var email = this.$route.query.email;
                    var password = this.$route.query.password;
                    if (email!==undefined && password!==undefined && email!=='' && password!=='') {
                        this.user.email = email;
                        this.user.password = password;
                        this.login();
                    }
                   
            },
            methods: {
                
        showPass() {
         if (this.showpassword == 0) {
           document.getElementById("password").type = "text";
           this.eye = "fa fa-eye";
           this.showpassword = 1;
         } else if (this.showpassword == 1) {
           document.getElementById("password").type = "password";
           this.showpassword = 0;
           this.eye = "fa fa-eye-slash";
         }
       },
     login() {                    
             var data = {
                    email: this.user.email,
                    password: this.user.password,
                    }
                this.$store
                .dispatch(LOGIN, data)
                    .then(resp => {
                         let userinfo = resp.data; 
                        if(resp.code === 200){
                            const token = resp.data.access_token;
                            //this.$toast.success(resp.data.message) 
                             if(userinfo.google2faauth == "TRUE"){
                                //this.verify2Fa();
                                this.token = token;
                                this.verify2fa = true;
                            }else{
                            localStorage.setItem('user-token', token); // store the token in localstorage
                            localStorage.setItem('type', "user"); // store the token in localstorage
                           // this.getPackages();
                                 this.$toast.success(resp.message) 
                                   $('#trade').removeClass('show active');
                                     $('#ico').removeClass('show active');
                                     $('#home').removeClass('show active');            
                                    $('#page1').removeClass('show active');
                                     $('#page2').removeClass('show active');
                                     $('#page3').removeClass('show active');
                                     $('#page4').removeClass('show active');
                                     $('#page6').removeClass('show active');
                                     $('#page5').addClass('show active');
                                // this.$router.push({name: 'dashboard'});
                                // this.$router.push({ name: 'dashboard' });
                            }
                            
                        }/*else if (resp.data.code === 400) {
                          this.wrong_message = resp.data.message;
                          console.log(resp.data.data.time); 
                          let $time=resp.data.data.time;
                          this.lockout = false;
                          setTimeout(()=>{
                          this.lockout = true;
                          console.log('Button Activated')}, $time)  
                        }*/ else {
                            this.$toast.error(resp.message)
                        }
                    }).catch(error => {
                        //localStorage.removeItem('user-token'); // if the request fails, remove any 
                       // location.reload();
                        this.$toast.error(error);
                    })
                },
                  
                reset() {
                    this.user.email = '';
                    this.user.password = '';
                },            
               
                 
            }
        }
</script>
