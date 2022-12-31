  <template>
   <form  @submit.prevent="registerUser" data-vv-scope="registerform">
    <div class="form-group">
    <input type="text" class="form-control input-line" placeholder="Your Username" v-model="register.fullname" data-vv-as="fullname"  v-on:keypress="isLetter($event)" v-on:input="NameValidation($event)" maxlength="30">
    <div v-if="nameErr !== ''" class="tooltip2">
      <span class="text-danger">{{ this.nameErr }}</span>
     </div>
    </div>
     <div class="form-group">
    <input type="text" class="form-control input-line" placeholder="Your Email"  v-model="register.email" data-vv-as="email" data-vv-validate-on="change|blur" @blur="EmaiValidation($event)"
    v-on:input="checkemailexist">
      <div v-if="emaiErr !== ''" class="tooltip2">
      <span class="text-danger">{{ this.emaiErr }}</span>
        </div>
  
     <div v-if="!emailactive" class="tooltip2">
                    <span class="text-danger error-msg-size">
                      {{ this.emailmsg }}</span
                    >
                  </div>
                    </div>
     <div class="form-group">
    <input type="text" class="form-control input-line" placeholder="Enter Your Sponsor ID"
                                  v-model="register.referral_id" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57)"  @blur="SponsorValidation($event)" v-on:input="checkuserexist(2)" id="referral_id" data-vv-as="referral id">
      <div v-if="snameErr !== ''" class="tooltip2">
      <span class=" text-danger"> {{ this.snameErr }}</span>   
      </div>
      <div v-if="!useractive" class="tooltip2">
       <span class="text-danger ">{{ this.usermsg }}</span>
       </div>
    </div>
    <div class="form-group">
    <input type="password" class="form-control input-line" placeholder="Your Password" v-model="register.password" v-on:input="PasswordValidation($event)" data-vv-as="password">
       <div v-if="errorpwd !== ''" class="tooltip2">
        <span class=" text-danger">{{ this.errorpwd }}</span>
        </div>
   </div>
    <div class="form-group">
    <input type="password" class="form-control input-line" placeholder="Repeat Password" v-model="register.confirm_password" data-vv-as="confirm password"  v-on:input="ConfirmPasswordValidation($event)">
    <div v-if="errorcpwd !== ''" class="tooltip2">
        <span class=" text-danger">{{ this.errorcpwd }}</span>
        </div></div>
    <div class="form-group">
      <input type="text" class="form-control input-line" placeholder="Payment System">
    </div>
     <div class="form-group">
    <input type="text" class="form-control input-line" placeholder="Wallet Address" v-model="register.wallet_address" data-vv-as="wallet_address">
     </div>
   <div class="form-group">
     <input type="text" class="form-control input-line" placeholder="Tag (Optional)">
     </div>
     <div class="btn-wraper text-center mt-4">
     <button type="submit" :disabled=" !isCompleteRegister" class="btn pay-btn btn-lg">Sign Up</button>
      </div>
      </form>
</template>
<script>
    import { REGISTER, CHECKEMAILEXIST, REG_OTP_VERIFY, CHECKUSEREXIST } from "@/store/actions.type";
   import ValidatioMixin from "@/mixins/ValidatioMixin";
   import { domain } from'../../../../user_config';
   import $ from "jquery";
   // import 'bootstrap';
    
    export default {
  name: "app",
  mixins: [ValidatioMixin],
  data() {
    return {
      emailactive: true,
      emailmsg:"",
      nameErr: "",
      emaiErr: "",     
      snameErr: "",
      errorpwd: "",
      errorcpwd: "",
      password_validation_msg: true,
      usermsg:"",
      usermsg1: "",
      email_otp: "",
      weburl: "",
      useractive: true,
      useractive1: false,
      otpSent: false,
      otp: "",
      otpVerified: false,
      isVerifyOtp: "",
      whatsapp_no: "",
      register: {
        user_id: "",
        fullname: "",
        email: "",
        referral_id: "",
       // mobile: "",
       wallet_address: "",
        //btc_address: "",
        password: "",
        confirm_password: "",
        position: "",
       // country: "IN",
        //secret_question:'',
        // secret_ans:'',
      },
     
      flag_for_hide_validation_messege: "",
      icon: "../public/user_files/assets/img/icon-mlm.png",
      logo: "../public/user_files/assets/img/logo.png",
      hostName: window.location.origin,
      //checkMobileValid: true,
      //getcountry: "",
     // getMobile: "",
      //temp: "",
     // selected: true,
      isActiveBtn: true,
      //queArr: "",
      //terms:false,
      //agree: "",
      //rand_no: "",
      //captcha: "",
      captchamatch: false,
      //captchamatcherror: "",
      //btc_error: "",
      //typingTimer: "",
      //country1: "",
      //doneTypingInterval: 500,
      showpassword: 0,
      showpassword2: 0,
      alreadyref: 0,
     // is_referral: "",
      eye: "fa fa-eye-slash",
      eye2: "fa fa-eye-slash",
    };
  },
  computed: {

    isCompleteRegister() {
      return (
        // this.register.user_id
        // && !this.btc_error
        this.register.email &&
        this.emaiErr == '' &&
        this.emailmsg == '' &&
        this.nameErr == '' &&
        this.snameErr == '' &&
        this.errorpwd == '' &&
        this.errorcpwd == '' &&
        this.register.referral_id &&
        this.register.wallet_address &&
        this.register.fullname &&
        this.register.password &&
        this.register.confirm_password //&&
        // this.register.mobile /*&& this.register.position*/ &&
        // this.selected &&
    //    this.register.position &&
         //&&
        //this.register.btc_address &&
        // this.checkMobileValid&&
       // this.register.mobile
        // this.register.eth_address
      );
    },
  },
  mounted() {

    //this.getUser_ID();
    this.weburl = domain;
    this.register.user_id =
      "EQX" + parseInt(Math.floor(Math.random() * 900000) + 100000);

    // alert(this.register.user_id);
    // alert(this.weburl);
  //  this.getCountry();
    /*this.getQuestions();*/
    /*this.getRandomNo();*/
    (this.one_letter = "invalid"),
      (this.greater_than_6 = "invalid"),
      (this.one_capital_letter = "invalid"),
      (this.special_char = "invalid"),
      (this.one_number = "invalid"),
      (this.starting_with_letter = "invalid"),
      (this.flag_for_hide_validation_messege = false);
    if (this.$route.query.ref_id != undefined && this.$route.query.ref_id != "") {
      this.register.referral_id = this.$route.query.ref_id;
      var uniqueid = this.$route.query.ref_id;
        this.register.position = this.$route.query.position;
      this.getUserId_ref(uniqueid);
      this.checkuserexist();
      this.alreadyref = 1;
      // this.otpbox();


    }
  },
  methods: {

    SponsorValidation(e) {
      
      const fullname = e.target.value;
      var sname = fullname.replace(/ /g, "");
      if(this.usermsg !== ""){
        this.snameErr = "";
      } else if (sname == "") {
        this.snameErr = "Sponsor's id should not be blank.";
      } else {
        this.snameErr = "";
      }
    },

    closeModal() {
      $("#enterOTP").modal("hide");
    },
    registerUser() {
      if (this.register.fullname !== '' && this.register.referral_id !== '' && this.register.password !== '' && this.register.confirm_password !== '' && this.register.email !== '' && this.errorcpwd == '' &&
        this.errorpwd == '' &&
        this.nameErr == '' &&
        this.emaiErr == '' &&
      //  this.positionErr == '' &&
       // this.mobile_data == '' &&
        this.snameErr == '') {

        if (this.register.password !== this.register.confirm_password) {
          return this.$toast.error(
            "Password and Confirm Password are not match"
          );
        }
        
        // var type = "email";

        $("#resend_otp").hide();
        var data = {
        //   type: type,
          user_id: this.register.email,
          email: this.register.email,
          //mobile: this.register.mobile,
          fullname: this.register.fullname,
         // country: this.getcountry.iso2,
          ref_user_id: this.register.referral_id,
          password: this.register.password,
          password_confirmation: this.register.confirm_password,
          //position: this.register.position,
          wallet_address: this.register.wallet_address,
          position: 1,
        }
        this.$store
          .dispatch(REGISTER, data)
          .then((response) => {
           

            if (response.code == 200) {
          //  this.$toast.success(response.message);
              this.$toast.success("User Registered Successfully !");
              // this.registerUser();
              // this.$router.push({
              //   name: "thankyou",
              //   params: {
              //     user_id: response.data.email,
              //     password: response.data.password,
              //   },
              // });

            
            } else {
              this.$toast.error(response.message);
            }
          })
          .catch((error) => {
            this.$toast.error(error);
            this.message = "";
          });
      } else {
        return this.$toast.error(
          "please Enter Valid Data"
        );
      }
    },
    isLetter(e) {
      let char = String.fromCharCode(e.keyCode); // Get the character
      if (/^[A-Za-z ]+$/.test(char)) return true;
      // Match with regex
      else e.preventDefault(); // If not match, don't add to input text
    },
    verify_email_otp() {
      var type = "email";

      var data = {
        email: this.register.email,
        type: type,
        email_otp: this.otp,
        user_id: this.register.email,
       // mobile: this.register.mobile,
        fullname: this.register.fullname,
        //country: this.country1,
        ref_user_id: this.register.referral_id,
        password: this.register.password,
        password_confirmation: this.register.confirm_password,
       wallet_address: this.register.wallet_address,
        /*RegisterData: this.register*/
      }



      this.$store
        .dispatch(REG_OTP_VERIFY, data)
        .then((response) => {
          if (response.code == 200) {
            var check_status = response.data.status;
            //alert(check_status);
            if (check_status == "email") {
              $("#enterOTP").modal("hide");
              this.otpVerified = true;
              this.otpSent = true;
              this.optVerified = true;

              this.otp = '';
              // this.$toast.success(response.message);
              this.$toast.success("User Registered Successfully");
              // this.registerUser();
              this.$router.push({
                name: "thankyou",
                params: {
                  user_id: response.data.userid,
                  password: response.data.password,
                },
              });
              // this.registerUser();
              // this.$toast.success(response.message);
            } else if (check_status == "mobile") {
              this.otpVerified = true;
              this.$toast.success(response.message);
              this.otpSent = true;
              this.optVerified = true;
              // this.registerUser();
              // this.step1=false;
              // this.step2=false;
              // this.step3=true;
              this.$toast.success(response.message);
              if (this.fromLog == false) {
                this.$router.push({
                  name: "thankyou",
                  params: {
                    user_id: response.data.userid,
                    password: this.password,
                  },
                });
              } else {
                this.$router.push({
                  name: "login",
                  params: {}
                });
              }
              // this.updatemobile();
              // this.registerUser();
            }
          } else {
            this.otp = '';
            this.$toast.error(response.message);
          }
        })
        .catch((error) => {
          this.$toast.error(error);
          this.message = "";
        });

    },
      checkemailexist() {
      var data = {
        email: this.register.email,
      };

      this.$store
        .dispatch(CHECKEMAILEXIST, data)
        .then((response) => {
          if (response.code == 200) {
            this.emailactive = false;
            this.emailmsg = "Email already exist";
          } else {
            this.emailactive = true;
            this.emailmsg = '';
          }
        })
        .catch();
    },

    checkuserexist(para) {
      this.snameErr = "";
      // alert(para);
      if (para == 1) {
        var user = this.register.user_id;
      } else {
        user = this.register.referral_id;
      }
      var data = {
        user_id: user,
      };

      this.$store
        .dispatch(CHECKUSEREXIST, data)
        .then((response) => {
          if (response.code == 200) {
            if (para == 1) {
              this.useractive1 = true;
              this.usermsg1 = "user Already exist with this id";
              this.isActiveBtn = false;
            } else {
              this.useractive = true;
              if (this.useractive1 == false) {
                this.isActiveBtn = true;
              }
            }
          } else {
            if (para == 1) {
              this.useractive1 = false;
              if (this.useractive == true) {
                this.isActiveBtn = true;
              }
              //this.isActiveBtn = true;
              this.usermsg1 = response.message;
            } else {
              this.useractive = false;
              this.isActiveBtn = false;
              this.usermsg = response.message;
            }
          }
        })
        .catch();
    },

    getUserId_ref() {
      var data = {
        user_id: this.$route.query.ref_id,
      };

      this.$store
        .dispatch(CHECKUSEREXIST, data)
        .then((response) => {
          if (response.code == 200) {
            // this.register.referral_id = response.data;
            $("#referral_id").prop("readonly", true);
            $("#s_id").attr("disabled", "disabled");
            this.useractive = true;
          } else {
            this.useractive = false;
            this.isActiveBtn = false;
            this.usermsg = response.message;
          }
        })
        .catch();

    },
   
    reset() {
      this.user.user_id = "";
      this.user.password = "";
    },
    getReferralId() {
      $("#referral_id").val("Williamson");
    },
    matchpassword() {
      if (this.register.password != this.register.confirm_password) {
        /*this.errors.add('this.password_confirmation', 'not match')*/
        this.errors.add({
          field: "confirm_password",
          msg: "password does not match",
        });
        // this.password_validation_msg = true;
      } else {
        // this.password_validation_msg = false;
      }
    },
    /* check($event){
      if($("#agree").prop('checked') == true){
        this.terms = 1;
      }else{
        this.terms = 0;
      } 
    },*/
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
    
    showPass2() {
      if (this.showpassword2 == 0) {
        document.getElementById("confirm_password").type = "text";
        this.eye2 = "fa fa-eye";
        this.showpassword2 = 1;
      } else if (this.showpassword2 == 1) {
        document.getElementById("confirm_password").type = "password";
        this.showpassword2 = 0;
        this.eye2 = "fa fa-eye-slash";
      }
    },


    check1() {
      if (this.is_referral == true) {
        this.register.referral_id = "Williamson";
        this.checkuserexist();
      } else {
        this.register.referral_id = "";
        this.sponsor_name = "";
      }
    },
  },
};
</script>


