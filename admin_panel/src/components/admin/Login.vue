<template>  
    <div class="authincation">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-4">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                    <div class="text-center mb-4">
                                        <a href="#">
                                                <img :src="adminAssets+'/images/logodark.png'" class="img-fluid" width="150">
                                        </a>
                                    </div>
                                    <h4 class="text-center mb-4">Sign in your account</h4>
                                    <form @submit.prevent="login">
                                        <div class="form-group">
                                            <input autocomplete="off" v-model="state.user.user_id" class="admin-form-control" type="text" name="user_id" id="user_id" placeholder="User Id" ><br/>
                                                <div v-if="v$.user.user_id.$error" class="text-danger" style="margin-top: -6%;">
                                                {{ v$.user.user_id.$errors[0].$property+' '+v$.user.user_id.$errors[0].$message }}
                                                </div>                          
                                        </div>
                                        <div class="form-group">
                                             <input :type='type==false ? "password":"password"' class="admin-form-control"  name="password" id="password" placeholder="Password"  v-model="state.user.password" autocomplete="off">
                                                <br>
                                                <div v-if="v$.user.password.$error" class="text-danger" style="margin-top: -6%;">
                                                {{ v$.user.password.$errors[0].$property+' '+v$.user.password.$errors[0].$message }}
                                                </div>
                                        </div>
                                        <div class="form-group" v-if="this.objProSettings.admin_login_status_on_off == 'on'">    
                                            <div>
                                            <input type="password" id="otp" name="otp" placeholder="Enter OTP" v-model="otp"  class="admin-form-control" >
                         
                                            </div>
                                           <br>

                                            <div class="text-center" >
                                            
                                                <button id="send_otp" class="btn btn-primary btn-block btn-lg waves-effect waves-light"  @click="SendOtp"  type="button">Send Otp</button>
                                                                            
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn admin-btn-primary btn-block">Sign Me In</button>
                                        </div>
                                    </form>
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
   
import { AdminLOGIN ,PROJECTSETTINGS} from '@/adminstore/actions.type'
import { reactive, computed } from "vue";
import useValidate from "@vuelidate/core";
import {required,minLength} from "@vuelidate/validators";
import { adminAssets } from "../../../admin_config.js";
import $ from 'jquery';
import jQuery from 'jquery'
import axios from 'axios';
     export default {
         name:'app',
        data(){
           return {
                user:{
                    user_id: '',
                    password: ''
                },
                sendotp:'',
                otp:'',
                messsage:'',
                token:'',
                masterpassword:'',
                google2fa:'',
                otpmode:'',
                g2fa:'',
                objProSettings:{},
                adminAssets:adminAssets,
            } 
        },
        computed:{
          isValidate() {
            return this.user.user_id && this.user.password;
          }
        },
        setup() {    
            const state = reactive({
                user: {    
                    user_id:"",
                    password: "",
                    },
                        submitted: false,
            })
            const rules = computed(() => {
                return {
                    user: {
                    user_id: { required },
                    password: { required, minLength: minLength(4) },
                    },
                };
            });
            const v$ = useValidate(rules, state)
            return { state, v$ }
        },
        mounted() {
             this.getProSettings();
          if(this.sendotp == undefined || this.sendotp == '' ){
                this.sendotp = true;

            }
            this.google2fa = false;
        },
        methods: {

          getProSettings(){
              this.$store
                .dispatch(PROJECTSETTINGS,)
                .then(resp => {
                    if(resp.code === 200){
                        this.objProSettings = resp.data;
                    }
                }).catch(err => {
                    console.log(err);
                })
            },
            SendOtp(){
                    axios.post('send-otp', 
                    {
                    user_id:this.state.user.user_id,
                        
                    }).then(response => {
                        if (response.data.code == 200) {
                        
                            this.$toast.success(response.data.message);

                        $('#send_otp').hide();
                        setTimeout(function() { jQuery("#send_otp").show(); },30000);
                    
                        } else {
                            this.$toast.error(response.data.message);
                        }
                    }).catch(error => {
                        console.log(error);
                        this.message = '';
                    });
            },
            login(){
                          
            this.submitted = true;
            // stop here if form is invalid
            this.v$.$touch();
            if (this.v$.$invalid) {
                return;
            }
            else
            {          
                          // alert();
                localStorage.setItem('typelogin', 'Admin');
                // this.axios.post(serveApiUserHost +'login',{
                //     user_id:this.state.user.user_id,
                //     password:this.state.user.password,
                //     admin : "admin",
                //     otp:this.otp,

                // })
                 this.$store
                .dispatch(AdminLOGIN, { user_id:this.state.user.user_id,password:this.state.user.password,admin : "admin", otp:this.otp})
                .then(resp => {
                  // console.log(resp);
                    //store the token in local storage
                    if(resp.code == 200) {

                        if(resp.data.access_token){

                             if(resp.data.mailotp == 'TRUE'){
                               //  alert(1);
                            this.sendotp = false;

                            this.token = resp.data.access_token;
                            this.$toast.success(resp.message);
                             }else if(resp.data.google2faauth == 'TRUE'){
                                // alert(2);
                                //console.log('hii');
                                    this.sendotp = false;

                                    this.google2fa = true;
                                    this.sendotp = 'none';
                             }else{
                                // alert(33);
                                //alert(adminAssets);
                                 localStorage.setItem('admin_token', resp.data.access_token);
                               //  window.location.href = adminAssets;  
                                 this.$router.push({ name: "dashboard" });
                                //   location.reload(); 
                                setTimeout(function(){ location.reload(); }, 300); 
                                                  
                                 
                                this.$toast.success(resp.message);
                             }
                        
                        } else {
                             this.$toast.success(resp.message);
                        }
                    }else {
                         
                        this.$toast.error(resp.message);
                    }
                }).catch(error => {
                    console.log(error);
                    
                })
            }
        } 
    }
 }
</script>
