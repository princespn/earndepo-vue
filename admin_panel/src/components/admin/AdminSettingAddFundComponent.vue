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
              <h4 class="card-title">Add Setting Wallet Fund</h4>
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
                  <label class="control-label">Balance</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="balance"
                    name="balance"
                    v-model="balance"
                    placeholder="Balance"
                    readonly=""
                  />
                </div>
                <div class="form-group col-12">
                  <label class="control-label">Topup Percentage</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="topup_percentage"
                    name="topup_percentage"
                    v-model="topup_percentage"
                    placeholder="Topup Percentage"
                  />
                </div>
                <div class="form-group col-12">
                  <label class="control-label">Name</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="username"
                    name="username"
                    v-model="fullname"
                    placeholder="Name"
                    readonly=""
                  />
                </div>

                <div class="form-group col-12">
                  <label class="control-label">Mail Id</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="email"
                    name="email"
                    v-model="email"
                    placeholder="Mail Id"
                    readonly=""
                  />
                </div>
                <div class="form-group col-12">
                  <label class="control-label">Remark</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="remark"
                    name="remark"
                    v-model="fund.remark"
                    placeholder="Remark"
                  />
                </div>
                <div class="form-group col-12">
                  <label class="control-label">Enter Amount</label>
                  <br />
                  <input
                    type="text"
                    class="admin-form-control"
                    id="amount"
                    name="amount"
                    v-model="fund.amount"
                    placeholder="Enter amount"
                  />
                  <div class="clearfix"></div>
                  <p class="text-danger">{{ usermsg }}</p>
                </div>
                <div class="form-group col-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="fund_req"
                    :disabled="!isComplete"
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
/* import Swal from "sweetalert2";
import _ from "lodash";
import $ from "jquery";
import {
  CHECKUSEREXISTED,
  ADMIN_SETTING_ADD_FUND,
} from "@/adminstore/actions.type"; */
// import Swal from "sweetalert2";
import $ from "jquery";
import {
  CHECKUSEREXISTED,
  ADMIN_SETTING_ADD_FUND,
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      product_ids: {
        id: "",
        name: "",
      },
      topup: {
        user_id: "",
        pin: "",
        product_id: null,
        hash_unit: "",
        payment_type: "BTC",
      },

      fund: {
        user_id: "",
        fullname: "",
        amount: "",
        remark: "",
      },

      balance: 0,
      topup_percentage: 0,
      isAvialable: "",
      fullname: "",
      username: "",
      values: "",
      email: "",
      getdata: {},
      arrProduct: [],
      min_hash: "",
      max_hash: "",
      isValid: true,
      usermsg: "",
      isDisabledBtn: true,
    };
  },
  computed: {
    //
    isComplete() {
      return this.fund.user_id && this.fund.amount && this.topup_percentage;
    },
  },
  mounted() {
    // this.getProducts();
  },
  methods: {
    fund_req() {
      this.isDisabledBtn = false;
      var data = {
        user_id: this.fund.user_id,
        amount: Number(this.fund.amount),
        topup_percentage: Number(this.topup_percentage),
        remark: this.fund.remark,
      };
      this.$store
        .dispatch(ADMIN_SETTING_ADD_FUND, data)
        .then((response) => {
          if (response.code == 200) {
            this.$toast.success(response.message);
            this.$router.push({ name: "adminsettingfundreport" });
          } else {
            this.$toast.error(response.message);
          }

          this.fund = {
            user_id: "",
            amount: "",
          };
          $("#fund_req").trigger("reset");
          this.isDisabledBtn = true;
        })
        .catch(() => {});
    },

    checkUserExisted() {
      var data = { user_id: this.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.fund.user_id = resp.data.id;
            this.isAvialable = "Available";
            this.balance = resp.data.setting_fund_wallet_balance;
            this.topup_percentage = resp.data.topup_percentage;
            this.email = resp.data.email;
            this.fullname = resp.data.fullname;
          } else {
            this.fund.user_id = "";
            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
  },
};
</script>