<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="admin-card-button">
          <button
            type="button"
            class="btn btn-primary waves-effect waves-light"
            @click="sendAdminOtp"
          >
            Send Otp
          </button>
          <p>Note :- Otp Valid 2 Hours</p>
        </div>
        <div class="col-6 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Change Password</h4>
            </div>
            <div class="admin-card-body">
              <form class="row g-3">
                <div class="col-12">
                  <input
                    type="text"
                    class="admin-form-control"
                    id="username"
                    placeholder="User Id"
                    v-model="changepwd.username"
                    v-on:keyup="checkUserExisted"
                  />
                  <div class="clearfix"></div>
                  <p
                    :class="{
                      'text-success': isAvialable == 'Available',
                      'text-danger': isAvialable == 'Not Available',
                    }"
                    v-if="isAvialable != ''"
                  >
                    {{ isAvialable }}
                  </p>
                  <span
                    :class="{
                      'text-success': isAvialable == 'Available',
                      'text-danger': isAvialable == 'Not Available',
                    }"
                    v-if="isAvialable == 'Available'"
                  >
                    {{ changepwd.username }} ({{ changepwd.fullname }})</span
                  >
                </div>
                <div class="col-12">
                  <input
                    name="new_password"
                    class="admin-form-control"
                    placeholder="New Password"
                    id="password"
                    type="password"
                    v-model="changepwd.new_password"
                    v-on:keyup="onPassword($event)"
                  />
                  <div v-if="errorpwd !== ''" class="tooltip1">
                    <small class="text-danger"> {{ this.errorpwd }}</small>
                  </div>
                </div>
                <div class="col-12">
                  <input
                    name="retype_password"
                    class="admin-form-control"
                    formcontrolname="retype_password"
                    placeholder="Re-enter Password"
                    id="retype_password"
                    type="password"
                    v-model="changepwd.retype_password"
                    v-on:keyup="matchPassword($event)"
                  />
                  <div v-if="errorcpwd !== ''" class="tooltip1">
                    <small class="text-danger"> {{ this.errorcpwd }}</small>
                  </div>
                </div>
                <div class="form-group">
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
                </div>
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
                    @click="changeUserPassword()"
                    :disabled="
                      !isCompletePassword ||
                      !isDisabledBtn ||
                      otpErr !== '' ||
                      errorcpwd !== '' ||
                      errorpwd !== ''
                    "
                  >
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
import $ from "jquery";
import Swal from "sweetalert2";
import { CHECKUSEREXISTED, ADMIN_OTP ,UPDATE_PASSWORD} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      otpErr: "",
      errorpwd: "",
      errorcpwd: "",
      changepwd: {
        username: "",
        fullname: "",
        user_id: "",
        new_password: "",
        retype_password: "",
      },
      isAvialable: "",
      otp: "",
      isDisabledBtn: true,
    };
  },
  computed: {
    isCompletePassword() {
      return (
        this.changepwd.username &&
        this.changepwd.user_id &&
        this.changepwd.fullname &&
        this.changepwd.new_password &&
        this.changepwd.retype_password &&
        this.otp
      );
    },
  },
  mounted() {},
  methods: {
    sendAdminOtp() {
      //8---- change password
      var data = { type: 8 };
      this.$store.dispatch(ADMIN_OTP, data).then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
    checkUserExisted() {
      var data = { user_id: this.changepwd.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.changepwd.user_id = resp.data.id;
            this.changepwd.fullname = resp.data.fullname;
            this.isAvialable = "Available";
          } else {
            this.changepwd.user_id = "";
            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
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
      var pwd = this.changepwd.new_password;
      if (cpwd == "") {
        this.errorcpwd = "Password should not be blank.";
      } else if (cpwd != pwd) {
        this.errorcpwd = "password does not match.";
      } else {
        this.errorcpwd = "";
      }
    },
    OtpValidation(e) {
      const OTP = e.target.value;
      var OTPl = OTP.replace(/ /g, "");
      if (OTPl == "") {
        this.otpErr = "OTP should not be blank.";
      } else {
        this.otpErr = "";
      }
    },
    changeUserPassword() {
      var new_pwd = this.changepwd.new_password;
      var conf_pwd = this.changepwd.retype_password;
      if (new_pwd == conf_pwd) {
        this.isDisabledBtn = false;
        new Swal({
          title: "Are you sure ?",
          text: "You want to change password!",
          type: "warning",
          showCancelButton: true,
          confirmButtonText: "Yes!",
          cancelButtonText: "Cancel",
        }).then((result) => {
          if (result.value) {
            var data = {
              id: this.changepwd.user_id,
              password: this.changepwd.new_password,
              confirm_password: this.changepwd.retype_password,
              otp: this.otp,
            };
            this.$store
              .dispatch(UPDATE_PASSWORD, data)
              .then((resp) => {
                if (resp.code === 200) {
                  this.$toast.success(resp.message);
                  this.changepwd.user_id = "";
                  this.changepwd.username = "";
                  this.changepwd.fullname = "";
                  this.changepwd.new_password = "";
                  this.changepwd.retype_password = "";
                  this.isAvialable = "";
                  this.otp = "";
                } else {
                  this.otp = "";
                  this.$toast.error(resp.message);
                  this.isDisabledBtn = true;
                }
                $("#change-user-password").trigger("reset");
              })
              .catch((err) => {
                this.otp = "";
                this.$toast.error(err);
              });
          }
        });
      } else {
        this.$toast.error("New Password and Reset Password Not Matched...");
      }
    },
  },
};
</script>