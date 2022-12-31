       <template>
       <!-- <div class="form-group">
             <input
                      maxlength="10"
                      type="text"
                      class="form-control input-line"
                      autofocus=""
                      v-model="user_id"
                      onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57) "
                      v-on:input="checkuserexist"
                       data-vv-validate-on="change|blur"
                      placeholder="Your Username"
                      required
                    />
                    <div v-if="!useractive" class="tooltip2">
                    <span class="text-danger error-msg-size">
                      {{ this.usermsg }}</span
                    >
                  </div>
        </div> -->
        <div class="form-group">
             <input
                      type="text"
                      class="form-control input-line"
                      placeholder="Your Email"
                      v-model="email"
                      data-vv-as="email"
                      v-on:input="checkemailexist"
                    />
                     <div v-if="!emailactive" class="tooltip2">
                    <span class="text-danger error-msg-size">
                      {{ this.emailmsg }}</span
                    >
                  </div>
        </div>
        <div class="btn-wraper text-center mt-4">
            <!-- <button type="button" class="btn pay-btn btn-lg">Reset</button> -->
             <input
                      type="button"
                      value="Send"
                      class="btn pay-btn btn-lg"
                      @click="sendOTP()"
                      :disabled="!isSubmit || !isActiveBtn || !emailactive"
                    />
        </div>

        <div class="modal themeModal" id="enterOTP" role="dialog"  data-backdrop="static">       
            <div class="modal-dialog pops">
                      <div class="modal-content">
                        <div v-show="otpstatus==false">
                          <div class="modal-header">
                            <h4 class="modal-title">Enter OTP</h4>
                           
                            <button
                              type="button"
                              class="btn btn-close"
                              data-dismiss="modal"
                              aria-label="Close"
                            >&times;
                            </button>
                          </div>
                          <div class="modal-body">
                            <div class="form-group">
                              <div class="row">
                                <div class="col-md-3 col-3">
                                  <img src="public/user_files/assets/images/otp.png" class="img-fluid">
                                </div>
                                <div class="col-md-9 col-9">
                                  <input
                                    type="text"
                                    v-model="otp"
                                    onkeypress="return (event.charCode == 8 || event.charCode == 0 || event.charCode == 13) ? null : event.charCode >= 48 && event.charCode <= 57"
                                    maxlength="6"
                                     class="form-control"
                                    placeholder="Enter OTP"
                                  />
                                 <div class="modal-footer">
                                    <button
                                      @click="forgotPassword()"
                                      type="button"
                                      class="btn btn-primary kbb-bbt"
                                    >Submit</button>  
                                    
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
// import { domain } from "../../../user_config.js";
import 'bootstrap';

import {
  FORGOT_PASSWORD,
  CHECKEMAILEXIST,
  FORGOT_PASSWORD_OTP,
  FORGOT_PASSWORD_OTP_CHECK,
  CHECKUSEREXIST,
} from "@/store/actions.type";
import $ from "jquery";
export default {
  name: "app",
  data() {
    return {
     
      weburl: "",
      useractive: true,
      emailactive: true,
      terms: "",
      usermsg:"",
      emailmsg:"",
      user_id: "",
      email: "",
      otp: "",
      otpstatus: "",
      icon: "../public/user_files/assets/img/icon-mlm.png",
      logo: "../public/user_files/assets/img/logo.png",
      hostName: window.location.origin,
      isActiveBtn: true,
    };
  },
  computed: {
    isSubmit() {
      return this.email;
    },
  },
  mounted() {},
  methods: {
    checkuserexist() {
      var data = {
        user_id: this.user_id,
      };

      this.$store
        .dispatch(CHECKUSEREXIST, data)
        .then((response) => {
          if (response.code == 200) {
            this.useractive = true;
            this.usermsg = response.message;
          } else {
            this.useractive = false;
            this.usermsg = response.message;
          }
        })
        .catch();
    },
     checkemailexist() {
      var data = {
        email: this.email,
      };

      this.$store
        .dispatch(CHECKEMAILEXIST, data)
        .then((response) => {
          if (response.code == 200) {
            this.emailactive = true;
            this.emailmsg = response.message;
          } else {
            this.emailactive = false;
            this.emailmsg = response.message;
          }
        })
        .catch();
    },

    forgotPassword() {
      this.isActiveBtn = false;
      // alert("hello");
      var data = {
        otp: this.otp,
        email: this.email,
      };

      this.$store
        .dispatch(FORGOT_PASSWORD, data)
        .then((resp) => {
          if (resp.code == 200) {
            this.$toast.success(resp.message);
            $("#enterOTP").modal("hide");
            // this.$router.push({ name: "login" });
            location.reload();
          } else {
            this.$toast.error(resp.message);
          }
          this.isActiveBtn = true;
        })
        .catch();
    },

    sendOTP() {
      // var terms = document.getElementById("terms");
      // if (terms.checked == true) {
        var data = {
          email: this.email,
        };

        this.$store
          .dispatch(FORGOT_PASSWORD_OTP, data)
          .then((response) => {
            if (response.code == 200) {
              $("#enterOTP").modal("show");
              this.$toast.success(response.message);
              //console.log(response);
              //this.statedata=response.data.message;
            } else {
              $("#enterOTP").hide();
              //  $("#enterOTP").modal("hide");
              this.$toast.error(response.message);
            }
          })
          .catch();
      // } else {
      //   this.$toast.error("Please confirm you are not robot");
      // }
    },

    checkOtp() {
      var data = {
        otp: this.otp,
        user_id: this.user_id,
      };

      this.$store
        .dispatch(FORGOT_PASSWORD_OTP_CHECK, data)
        .then((response) => {
          if (response.code == 200) {
            // this.statedata=response.data;
            // this.otp = '';
            //  $('#forgotMe').trigger('click');
            $("#enterOTP").modal("hide");
            //  $('#editBankDetailsmodal').modal('hide');
            //this.otpstatus = true;
            window.location.href = response.data;
            /*$('#editBankDetails1').modal('show');*/
            // this.$toast.success(response.message);
          } else {
            this.otp = "";
            this.$toast.error(response.message);
          }
        })
        .catch();
    },
  },
};
</script>