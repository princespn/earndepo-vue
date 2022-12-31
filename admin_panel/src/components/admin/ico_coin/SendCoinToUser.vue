<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-6 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Send Token To User</h4>
            </div>

            <div class="admin-card-body">
              <form class="row g-3" id="addFund">
                <input type="hidden" name="user_id" v-model="fund.user_id" />

                <div class="form-group col-12">
                  <label for="balance">Admin Balance</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="admin_coin_balance"
                    readonly=""
                  />
                </div>
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
                  <label for="balance">Token Balance</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="balance"
                    name="balance"
                    v-model="coin_balance"
                    placeholder="Balance"
                    readonly=""
                  />
                </div>
                <div class="form-group col-12">
                  <label class="control-label">Enter Token</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="coins"
                    name="coins"
                    v-model="fund.coins"
                    placeholder="Enter coins"
                    onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                  />
                </div>

                <div class="form-group col-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="fund_req"
                    :disabled="!isComplete || !isDisabledBtn"
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
import {
  GET_USER_DETAILS,
  GET_ICO_PHASE,
  ADMIN_COIN_DETAILS,
  TRANSFER_ICO_COIN,
  CHECKUSEREXISTED,
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
        coins: "",
        remark: "",
      },
      ico_arr: {
        name: "",
      },

      balance: 0,
      coin_balance: 0,
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
      admin_coin_balance: "",
      isDisabledBtn: true,
    };
  },

  created() {
    this.getUserDetails();
    //this.adminBal();
  },
  computed: {
    isComplete() {
      return this.fund.user_id && this.fund.coins;
    },
  },
  mounted() {
    this.geticophasesfun();
    this.adminBal();
  },
  methods: {
    adminBal() {
      var data = {
        user_id: "admin",
      };

      this.$store
        .dispatch(ADMIN_COIN_DETAILS, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.admin_coin_balance = resp.data.coin_balance;
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },

    getUserDetails() {
      this.$store
        .dispatch(GET_USER_DETAILS)
        .then((response) => {
          if (response.code == 200) {
            this.user_id = response.data.user_id;
            // this.referral_id = response.data.data.ref_user_id;
            this.fullname = response.data.fullname;
            // this.ref_fullname = response.data.data.ref_fullname;
          } else {
            this.$toast.error(response.message);
          }
        })
        .catch();
    },

    checkUserExisted() {
      var data = {
        user_id: this.username,
      };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.fund.user_id = resp.data.id;
            this.user_id = resp.data.id;
            this.fullname = resp.data.fullname;

            this.isAvialable = "Available";
            this.balance = resp.data.balance;
            this.coin_balance = resp.data.coin_balance;
          } else {
            this.fund.user_id = "";
            this.isAvialable = "Not Available";
            this.coin_balance = "";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    geticophasesfun() {
      var data = {
        user_id: this.username,
      };
      this.$store
        .dispatch(GET_ICO_PHASE, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.ico_arr = resp.data;
          } else {
            this.fund.user_id = "";
            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    fund_req() {
      let formData = new FormData();

      formData.append("user_id", this.username);
      formData.append("coin", this.fund.coins);
      formData.append("srno", this.ico_arr.srno);

      this.$store
        .dispatch(TRANSFER_ICO_COIN, formData)
        .then((response) => {
          if (response.code == 200) {
            this.$toast.success(response.message);
            this.$router.push({ name: "ico-admin-send-rep" });
          } else {
            this.$toast.error(response.message);
          }
          // $('#addFund').trigger("reset");
        })
        .catch();
    },
  },
};
</script>