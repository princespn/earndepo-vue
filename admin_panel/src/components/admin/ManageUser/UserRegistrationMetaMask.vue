<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <!-- <div class="admin-card-button">
          <button
            type="button"
            class="btn btn-primary waves-effect waves-light"
            @click="sendAdminOtp"
          >
            Send Otp
          </button>
          <p>Note :- Otp Valid 2 Hours</p>
        </div> -->
        <div class="col-6 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Register User With MetaMask</h4>
            </div>
            <div class="admin-card-body">
              <form class="row g-3">
                <div class="col-12">
                  <!-- <input
                    type="text"
                    class="admin-form-control"
                    id="username"
                    placeholder="User Id"
                    v-model="changepwd.username"
                    v-on:keyup="checkUserExisted"
                  /> -->
                  <label for="user_id">User ID</label>
                  <input
                      type="text"
                      class="admin-form-control"
                      placeholder="ENTER USER ID"
                      v-model="register.user_id"
                      readonly
                    />
                  <!-- <div class="clearfix"></div>
                  <p
                    :class="{
                      'text-success': isAvialable == 'Available',
                      'text-danger': isAvialable == 'Not Available',
                    }"
                    v-if="isAvialable != ''"
                  >
                    {{ isAvialable }}
                  </p> -->
                  <!-- <span
                    :class="{
                      'text-success': isAvialable == 'Available',
                      'text-danger': isAvialable == 'Not Available',
                    }"
                    v-if="isAvialable == 'Available'"
                  >
                    {{ changepwd.username }} ({{ changepwd.fullname }})</span
                  > -->
                </div>
                <div class="col-12">
                  <label for="user_id">Full Name</label>
                  <input
                    name="fullname"
                    class="admin-form-control"
                    placeholder="Enter Fullname"
                    id="fullname"
                    type="text"
                    data-vv-as="fullname"
                    v-model="register.fullname" 
                    v-on:keypress="isLetter($event)"
                    maxlength="25"
                  />
                </div>
                <div class="col-12">
                  <label for="mobile">Mobile Number</label>
                  <input
                    name="mobile"
                    class="admin-form-control"
                    placeholder="Enter Mobile Number"
                    id="mobile"
                    type="text"
                    data-vv-as="mobile"
                    v-model="register.mobile" 
                    onkeypress="return (event.charCode == 8 || event.charCode == 0 || event.charCode == 13) ? null : event.charCode >= 48 && event.charCode <= 57"
                    onpaste="return false"
                    autocomplete="off"
                    maxlength="22"
                  />
                </div>
                <div class="col-12">
                  <label for="email">Email ID</label>
                  <input
                    name="email"
                    class="admin-form-control"
                    placeholder="Enter Email ID"
                    id="email"
                    type="text"
                    v-model="register.email" 
                    data-vv-as="email"
                    data-vv-validate-on="change|blur"
                    
                  />
                  <!-- <div v-if="emaiErr !== ''" class="tooltip2">
                    <span class="error-msg-size tooltip-inner text-danger">
                      {{ this.emaiErr }}</span
                    >
                  </div> -->
                </div>
                <div class="col-12">
                  <label for="referral_id">Sponsor ID</label>
                  <input
                    name="referral_id"
                    class="admin-form-control"
                    placeholder="Enter Sponsor ID"
                    id="referral_id"
                    type="text"
                    maxlength="10"
                    data-vv-as="referral_id"
                    v-model="register.referral_id" 
                    onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) ||  (event.charCode >= 48 && event.charCode <= 57) "
                    @blur="SponsorValidation($event)"
                    v-on:input="checkuserexist(2)"
                  />
                   <div v-if="snameErr !== ''" class="tooltip2">
                    <span class="text-danger">
                      {{ this.snameErr }}</span
                    >
                  </div>
                  <div v-if="usermsg1 !== ''" class="tooltip1">
                    <span class="text-danger">
                      {{ this.usermsg1 }}</span
                    >
                  </div>
                </div>
                <div class="col-12">
                  <label for="wallet">Wallet Address</label>
                  <input
                    name="wallet"
                    class="admin-form-control"
                    placeholder="Enter Wallet Address"
                    id="wallet"
                    type="text"
                    data-vv-as="wallet Address"
                    v-model="register.wallet" 
                    onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode >= 48 && event.charCode <= 57) "
                    minlength="20"                    
                  />
                </div>
                <div class="col-12">
                  <label for="trans_hash">Transaction Hash</label>
                  <input
                    name="trans_hash"
                    class="admin-form-control"
                    placeholder="Enter Transaction Hash"
                    id="trans_hash"
                    type="text"
                    data-vv-as="Transaction Hash"
                    v-model="register.trans_hash" 
                    onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode >= 48 && event.charCode <= 57) "
                    minlength="20"                    
                  />
                </div>
                <div class="col-12">
                  <label>Select Plan</label>
                  <select
                    name="product_id"
                    class="admin-form-control"
                    v-model="register.product_id"
                    id="product_id"
                    @change="changeSelect($event)"
                  >
                    <option :value="null">Select Package</option>
                    <option
                      v-for="product_id in product_ids"
                      v-bind:value="product_id.id"
                      :key="product_id"
                    >
                      {{ product_id.name }}
                    </option>
                  </select>
                </div>
                <div class="col-12">
                  <label for="hash_unit">Enter Topup Amount</label>
                  <br />
                  <input
                    type="text"
                    class="admin-form-control"
                    name="hash_unit"
                    min="1"
                    step="1"
                    onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                    title="Numbers only"
                    v-model="register.hash_unit"
                    v-on:keyup="hashvalidation($event)"
                  />
                  <div class="clearfix"></div>
                  <p class="text-danger">{{ hashmsg }}</p>
                </div>
                <div class="col-12">
                  <label for="password">Enter Password</label>
                  <input
                    name="password"
                    class="admin-form-control"
                    placeholder="Password"
                    id="password"
                    type="password"
                    v-model="register.password"
                    v-on:keyup="onPassword($event)"
                  />
                  <div v-if="errorpwd !== ''" class="tooltip1">
                    <small class="text-danger"> {{ this.errorpwd }}</small>
                  </div>
                </div>
                <div class="col-12">
                  <label for="confirm_password">Confirm Password</label>
                  <input
                    name="confirm_password"
                    class="admin-form-control"
                    formcontrolname="confirm_password"
                    placeholder="Re-enter Password"
                    id="confirm_password"
                    type="password"
                    v-model="register.confirm_password"
                    v-on:keyup="matchPassword($event)"
                  />
                  <div v-if="errorcpwd !== ''" class="tooltip1">
                    <small class="text-danger"> {{ this.errorcpwd }}</small>
                  </div>
                </div>
                <!-- <div class="form-group">
                  <label class="control-label text-danger">
                    Enter Otp
                    <span class="madatoryStar text-danger"> *</span>
                  </label>
                  <input
                    class="admin-form-control"
                    name="otp"
                    placeholder="otp"
                    type="text"
                    v-model="otp"
                    data-vv-as="otp"
                    v-on:keyup="OtpValidation($event)"
                  />
                  <div v-if="otpErr !== ''" class="tooltip1">
                    <span class="text-danger"> {{ this.otpErr }}</span>
                  </div>
                </div> -->
                <div class="col-12">
                  <p>
                    Note:- Password must be more than 6 characters. It should
                    contain uppercase, lowercase, numerical and special
                    characters.
                  </p>
                </div>

                <div class="col-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="registeruser()"
                    :disabled=" !isCompletePassword">
                    Submit
                  </button>
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
// import $ from "jquery";
// import Swal from "sweetalert2";
import {CHECKUSEREXIST,PRODUCT, USER_REGISTER_FROM_ADMIN} from "@/adminstore/actions.type";
import _ from "lodash";

export default {
  data() {
    return {
      register: {
        user_id: "",
        fullname: "",
        email: "",
        referral_id: "",
        mobile: "",
        wallet:"",
        trans_hash: "",
        product_id: null,
        hash_unit: "",
        //btc_address: "",
        password: "",
        confirm_password: "",
        // position: "",
        country: "IN",
        regi_type: 1,       
      },
      countries: {
        iso_code: "",
        country: "",
      },
      countryerr: "",
      snameErr: "",
      useractive: false,
      useractive1: false,
      usermsg1: "",
      hashmsg:"",
      min_hash: "",
      max_hash: "",
      arrProduct: [],
      product_ids: {
        id: "",
        name: "",
      },

      otpErr: "",
      errorpwd: "",
      // errorcpwd: "",
      // changepwd: {
      //   username: "",
      //   fullname: "",
      //   user_id: "",
      //   new_password: "",
      //   retype_password: "",
      // },
      isAvialable: "",
      // otp: "",
      isDisabledBtn: true,
    };
  },
  computed: {
    isCompletePassword() {
      return (
        this.register.user_id &&
        this.register.email &&
        this.register.fullname &&
        this.register.password &&
        this.register.confirm_password 
        // this.otp
      );
    },
  },
  mounted() {
    this.register.user_id =
      "KZ" + parseInt(Math.floor(Math.random() * 90000000) + 10000000);

     this.getProducts();
  },
  methods: {
    isLetter(e) {
      let char = String.fromCharCode(e.keyCode); // Get the character
      if (/^[A-Za-z ]+$/.test(char)) return true;
      // Match with regex
      else e.preventDefault(); // If not match, don't add to input text
    },
    SponsorValidation(e) {
      const fullname = e.target.value;
      var sname = fullname.replace(/ /g, "");
      if (this.usermsg !== "") {
        this.snameErr = "";
      } else if (sname == "") {
        this.snameErr = "Sponsor's id should not be blank.";
      } else {
        this.snameErr = "";
      }
    },
    onChange(event) {
      this.country1 = event.target.value;
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
              this.useractive = true;
              this.usermsg1 = '';
              if (this.useractive1 == false) {
                // this.isActiveBtn = true;
              }
            }
         else {
            if (para == 2) {
              this.useractive = false;
              this.isActiveBtn = false;
              this.usermsg1 = response.message;
            }
          }
        
        })
        .catch();
    },
    changeSelect(event) {
      let user = _.split(event.target.value, "-", 2); //using lodash here. You can also just use js split func
      let id = user[0]; // your id
      this.min_hash = this.arrProduct[id].min_hash;
      this.max_hash = this.arrProduct[id].max_hash;
      // this.activeDiv = true;
      this.hashvalidation();
      // this.usermsg='Amount should be on range ' + this.min_hash + ' to ' + this.max_hash;
    },
    hashvalidation() {
      if (
        this.register.hash_unit < this.min_hash ||
        this.register.hash_unit > this.max_hash
      ) {
        this.hashmsg =
          "Amount should be on range " + this.min_hash + " to " + this.max_hash;
        this.isValid = false;
      } else {
        this.isValid = true;
        this.hashmsg = "";
      }
    },
    getProducts() {
        var data = {status: "Active"};
        this.$store
        .dispatch(PRODUCT, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.product_ids = resp.data;
            for (var i in this.product_ids) {
              this.arrProduct[this.product_ids[i].id] = this.product_ids[i];
            }
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    registeruser()
    {
        var data = {
            email: this.register.email,
            type: 'email',
            regi_type: this.regi_type,           
            user_id: this.register.user_id,
            mobile: this.register.mobile,
            fullname: this.register.fullname,           
            ref_user_id: this.register.referral_id,
            wallet: this.register.wallet,
            trans_hash: this.register.trans_hash,
            plan_type: this.register.product_id,
            topupamount: this.register.hash_unit,
            password: this.register.password,
            password_confirmation: this.register.confirm_password,
        };
        this.$store
        .dispatch(USER_REGISTER_FROM_ADMIN, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.$toast.success(resp.message);  
            this.$router.push({ name: "manageuseraccount" });          
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    // sendAdminOtp() {
    //   //8---- change password
    //   var data = { type: 8 };
    //   this.$store.dispatch(ADMIN_OTP, data).then((resp) => {
    //     if (resp.code === 200) {
    //       this.$toast.success(resp.message);
    //     } else {
    //       this.$toast.error(resp.message);
    //     }
    //   });
    // },
    // checkUserExisted() {
    //   var data = { user_id: this.changepwd.username };
    //   this.$store
    //     .dispatch(CHECKUSEREXISTED, data)
    //     .then((resp) => {
    //       if (resp.code === 200) {
    //         this.changepwd.user_id = resp.data.id;
    //         this.changepwd.fullname = resp.data.fullname;
    //         this.isAvialable = "Available";
    //       } else {
    //         this.changepwd.user_id = "";
    //         this.isAvialable = "Not Available";
    //       }
    //     })
    //     .catch((err) => {
    //       this.$toast.error(err);
    //     });
    // },
    onPassword(e) {
      const pwd = e.target.value;
      var pwdpattern = new RegExp("^(?=.*[!@#$%^&/*])");

      if (pwd == "") {
        this.c = "Password should not be blank.";
      } else if (pwd.length < 6) {
        this.errorpwd = "Password must be more than 6 characters.";
      } else if (pwd.length > 15) {
        this.errorpwd = "Password must be less than 15 characters.";
      } else if (!/[a-z]/.test(pwd)) {
        this.errorpwd =
          "Password must contain atleast one lowercase character.";
      } else if (!/[A-Z]/.test(pwd)) {
        this.errorpwd =
          "Password must contain atleast one Uppercase character.";
      } else if (!/[0-9]/.test(pwd)) {
        this.errorpwd = "Password must contain atleast one Digit.";
      } else if (!pwdpattern.test(pwd)) {
        this.errorpwd = "Password must contain atleast one Special Character.";
      } else {
        this.errorpwd = "";
      }
    },
    matchPassword(e) {
      const cpwd = e.target.value;
      var pwd = this.register.password;
      if (cpwd == "") {
        this.errorcpwd = "Password should not be blank.";
      } else if (cpwd != pwd) {
        this.errorcpwd = "password does not match.";
      } else {
        this.errorcpwd = "";
      }
    },
    // OtpValidation(e) {
    //   const OTP = e.target.value;
    //   var OTPl = OTP.replace(/ /g, "");
    //   if (OTPl == "") {
    //     this.otpErr = "OTP should not be blank.";
    //   } else {
    //     this.otpErr = "";
    //   }
    // },
    // changeUserPassword() {
    //   var new_pwd = this.changepwd.new_password;
    //   var conf_pwd = this.changepwd.retype_password;
    //   if (new_pwd == conf_pwd) {
    //     this.isDisabledBtn = false;
    //     new Swal({
    //       title: "Are you sure ?",
    //       text: "You want to change password!",
    //       type: "warning",
    //       showCancelButton: true,
    //       confirmButtonText: "Yes!",
    //       cancelButtonText: "Cancel",
    //     }).then((result) => {
    //       if (result.value) {
    //         var data = {
    //           id: this.changepwd.user_id,
    //           password: this.changepwd.new_password,
    //           confirm_password: this.changepwd.retype_password,
    //           otp: this.otp,
    //         };
    //         this.$store
    //           .dispatch(UPDATE_PASSWORD, data)
    //           .then((resp) => {
    //             if (resp.code === 200) {
    //               this.$toast.success(resp.message);
    //               this.changepwd.user_id = "";
    //               this.changepwd.username = "";
    //               this.changepwd.fullname = "";
    //               this.changepwd.new_password = "";
    //               this.changepwd.retype_password = "";
    //               this.isAvialable = "";
    //               this.otp = "";
    //             } else {
    //               this.otp = "";
    //               this.$toast.error(resp.message);
    //               this.isDisabledBtn = true;
    //             }
    //             $("#change-user-password").trigger("reset");
    //           })
    //           .catch((err) => {
    //             this.otp = "";
    //             this.$toast.error(err);
    //           });
    //       }
    //     });
    //   } else {
    //     this.$toast.error("New Password and Reset Password Not Matched...");
    //   }
    // },
  },
};
</script>