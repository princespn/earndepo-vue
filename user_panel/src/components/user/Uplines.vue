  
  <template> 
  
<div class="tab-content">
    <div id="upline-1" class="tab-pane fade show active">    
            <form  @submit.prevent="registerUser" data-vv-scope="registerform">    
            <div class="address-wraper">
   
             <div class="address-box">
              <span class="address-title">Your mail address :</span> 
              <input type="text" class="form-control input-line" placeholder="Your Email"  v-model="register.email" data-vv-as="email" data-vv-validate-on="change|blur" @blur="EmaiValidation($event)">
              </div>
              <div class="address-box">
                <span class="address-title">Your Crypto address:</span>
                 <input type="text" class="form-control input-line" placeholder="Crypto  Address" v-model="register.wallet_address" data-vv-as="wallet_address">
              <input type="hidden" v-model="register.password" data-vv-as="password"/>
              </div>
              </div>
             <div class="row">                                
               <div class="col-md-12">
               <div class="btn-wraper text-center">
                <button type="submit" :disabled=" !isCompleteRegister" class="btn pay-btn">PAY DEPOSIT 1</button>
               </div>
            </div>                                  
          </div>
         </form> 
       </div>
           <div id="upline-2" class="tab-pane fade">
              <form  @submit.prevent="registerUser" data-vv-scope="registerform">
             <div class="address-wraper">
              <div class="address-box"><span class="address-title">Your mail address :</span> 
               <input type="text" class="form-control input-line" placeholder="Your Email"  v-model="register.email" data-vv-as="email" data-vv-validate-on="change|blur" @blur="EmaiValidation($event)">
             </div>
              <div class="address-box"><span class="address-title">Your Crypto address:</span>
              <input type="text" class="form-control input-line" placeholder="Crypto Address" v-model="register.wallet_address" data-vv-as="wallet_address">
             </div>
              <div class="address-box"><span class="address-title">Your Sponsor Id:</span>
             
              <input type="text" class="form-control input-line" placeholder="Enter Your Sponsor ID"
                                  v-model="register.referral_id" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57)"  @blur="SponsorValidation($event)" id="referral_id" data-vv-as="referral id">
              <input type="hidden" v-model="register.password" data-vv-as="password"/>
              </div>
              </div>
             <div class="row">                                
                  <div class="col-md-12">
                     <div class="btn-wraper text-center">
                    <button type="submit" :disabled=" !isSpCompleteRegister" class="btn pay-btn">PAY DEPOSIT 1</button>
               </div>
            </div>                                  
         </div>
         </form>
      </div>
    </div>
</template>
<script>
    import { REGISTER, CHECKEMAILEXIST, CHECKUSEREXIST } from "@/store/actions.type";
   import ValidatioMixin from "@/mixins/ValidatioMixin";

   import $ from "jquery";
   import 'bootstrap';
    
export default {
  name: "app",
  mixins: [ValidatioMixin],
  data() {
    return {
      
      usermsg:"",
     
      weburl: "",
      useractive: true,
      useractive1: false,
     
      register: {       
        email : "",
        referral_id: "",     
       wallet_address: "",  
      
       
      },
     
      flag_for_hide_validation_messege: "",
      icon: "../public/user_files/assets/img/icon-mlm.png",
      logo: "../public/user_files/assets/img/logo.png",
      hostName: window.location.origin,
      
      isActiveBtn: true,
     
      captchamatch: false,
      
      alreadyref: 0,
   
      eye: "fa fa-eye-slash",
      eye2: "fa fa-eye-slash",
    };
  },
  computed: {

    isCompleteRegister() {
      return (
    
        this.register.email &&
       
        this.register.wallet_address 
        //&& this.register.wallet_address
       
      );
    },

    isSpCompleteRegister() {
      return (
    
        this.register.email &&
       
       this.register.referral_id &&
        this.register.wallet_address
       
      );
    },
  },
  mounted() {

    //this.weburl = domain;
     this.register.password =
      "PAaD" + parseInt(Math.floor(Math.random() * 900000) + 100000)+"@!";
   
    
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
      if (this.register.wallet_address !== '' && this.register.email !== '') {

        $("#resend_otp").hide();
        var data = {
      
          user_id: this.register.email,
          email: this.register.email,         
          ref_user_id: this.register.referral_id,
          password: this.register.password,
          password_confirmation: this.register.password,         
          wallet_address: this.register.wallet_address,
          position: 1,
        }
          
        this.$store
          .dispatch(REGISTER, data)
          .then((response) => {
         

            if (response.code == 200) {
          //  this.$toast.success(response.data);
              this.$toast.success("User Registered Successfully");
              // this.registerUser();
              this.$router.push({
                name: "thankyou",
                params: {
                  user_id: response.data.email,
                  password: response.data.password,
                },
              });

            
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



