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
              <h4 class="card-title">MetaMask Top Up</h4>
            </div>

            <div class="admin-card-body">
              <form class="row g-3" id="fund_req">
                <input type="hidden" name="user_id" v-model="topup.user_id" />
                <div class="form-group col-12">
                  <label>User Id</label>
                  <input
                    type="text"
                    name="username"
                    class="admin-form-control"
                    id="username"
                    placeholder="User Id"
                    v-model="username"
                    v-on:keyup="checkUserExisted"
                  />
                  <div class="clearfix"></div>
                  <p
                    :class="{
                      'text-success': isAvialable == 'Available',
                      'text-danger': isAvialable == 'Not Available',
                    }"
                    v-if="isAvialable != '' && username != ''"
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
                    {{ username }} ({{ fullname }})</span
                  >
                </div>
                <div class="form-group col-12">
                  <label>Select Plan</label>
                  <select
                    name="product_id"
                    class="admin-form-control"
                    v-model="topup.product_id"
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
                <div class="form-group col-12">
                  <label class="control-label">Enter Amount</label>
                  <br />
                  <input
                    type="text"
                    class="admin-form-control"
                    name="hash_unit"
                    min="1"
                    step="1"
                    onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                    title="Numbers only"
                    v-model="topup.hash_unit"
                    v-on:keyup="hashvalidation($event)"
                  />
                  <div class="clearfix"></div>
                  <p class="text-danger">{{ usermsg }}</p>
                </div>
                <div class="form-group col-12">
                  <label>Transaction ID</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="transaction_id"
                    placeholder="Transaction ID"
                    name="transaction_id"
                    v-model="topup.transaction_id" 
                    data-vv-as="transaction_id "
                  
                  />
                </div>
                
                <div class="form-group col-12">
                  <label>OTP</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="otp"
                    placeholder="Enter Otp"
                    name="otp"
                    v-model="otp"
                    data-vv-as="OTP "
                    @blur="OtpValidation($event)"
                  />
                  <div v-if="otpErr !== ''" class="tooltip1">
                    <span class="text-danger"> {{ this.otpErr }}</span>
                  </div>
                </div>
                <div class="form-group col-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="addTopUp"
                    :disabled="!isComplete || !isDisabledBtn || otpErr !== ''"
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
import Swal from "sweetalert2";
import _ from "lodash";
import { CHECKUSEREXISTED,ADMIN_OTP,ADMIN_METAMASK_TOPUP,PRODUCT } from "@/adminstore/actions.type";
export default {
  data() {
    return {
      otpErr: "",
      isActiveBtn: true,
      otp: "",
      product_ids: {
        id: "",
        name: "",
      },
      topup: {
        transaction_id:"",
        user_id: "",
        pin: "",
        product_id: null,
        hash_unit: "",
        payment_type: "BTC",
      },
      isAvialable: "",
      username: "",
      fullname: "",
      values: "",
      getdata: {},
      arrProduct: [],
      min_hash: "",
      max_hash: "",
      isValid: true,
      usermsg: "",
      isDisabledBtn: true,
      franchise: {
        user_id: "",
      },
      masterfranchise: {
        user_id: "",
        id: "",
      },
    };
  },
  computed: {
    //
    isComplete() {
      return (
        this.topup.user_id &&
        this.topup.product_id &&
        this.topup.hash_unit &&
        this.usermsg == "" &&
        this.topup.transaction_id && this.otp
      );
    },
    isCompleteTransferPin() {
      return this.product_id && this.no_of_pins && this.payment_mode;
    },
  },
  mounted() {
    this.getProducts();
  },
  methods: {
    changeSelect(event) {
      let user = _.split(event.target.value, "-", 2); //using lodash here. You can also just use js split func
      let id = user[0]; // your id
      this.min_hash = this.arrProduct[id].min_hash;
      this.max_hash = this.arrProduct[id].max_hash;
      this.activeDiv = true;
      this.hashvalidation();
      // this.usermsg='Amount should be on range ' + this.min_hash + ' to ' + this.max_hash;
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

    addTopUp() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to topup!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
          var data = {
            token_amount: 0.1,
            otp: this.otp,
            id: this.topup.user_id,
            user_id: this.username,
            // pin: this.topup.pin,
            transaction_id:this.topup.transaction_id,
            product_id: this.topup.product_id,
            hash_unit: this.topup.hash_unit,
            payment_type: this.topup.payment_type,
            franchise_user_id: this.franchise.user_id,
            masterfranchise_user_id: this.masterfranchise.user_id,
            device: "web",
            topupfrom: "admin panel",
          };
          this.$store
            .dispatch(ADMIN_METAMASK_TOPUP, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
                this.$router.push({ name: "topupreport" });
              } else {
                this.$toast.error(resp.message);
              }
              //$('#addTopUp').trigger("reset");
              this.username = "";
              this.fullname = "";
              this.isAvialable = "";
              this.otp = "";
              this.topup = {
                user_id: "",
                username: "",
                pin: "",
                product_id: null,
                hash_unit: "",
                transaction_id:"",
              };
              this.isDisabledBtn = true;
            })
            .catch((err) => {
              this.$toast.error(err);
            });
        } else {
          this.isDisabledBtn = true;
        }
      });
    },
    checkUserExisted() {
      var data = { user_id: this.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.topup.user_id = resp.data.id;
            // this.isAvialable = 'Available';
            // console.warn(this.topup.user_id);
            //this.fullname = resp.data.data.fullname;
            // this.isAvialable = 'Available';

            this.fullname = resp.data.fullname;
            this.isAvialable = "Available";
          } else {
            this.topup.user_id = "";

            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    hashvalidation() {
      if (
        this.topup.hash_unit < this.min_hash ||
        this.topup.hash_unit > this.max_hash
      ) {
        this.usermsg =
          "Amount should be on range " + this.min_hash + " to " + this.max_hash;
        this.isValid = false;
      } else {
        this.isValid = true;
        this.usermsg = "";
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
    sendAdminOtp() { 
      var data = {type: 2};
       this.$store
      .dispatch(ADMIN_OTP, data)
      .then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
  },
};
</script>