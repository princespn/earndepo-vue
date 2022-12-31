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
              <h4 class="card-title">Assign Rank</h4>
            </div>

            <div class="admin-card-body">
              <form id="addTopUp">
                <input type="hidden" name="user_id" v-model="topup.user_id" />
                <div class="form-group">
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
                    {{ username }} {{ fullname }}</span
                  >
                </div>
                <div class="form-group">
                  <label>Select Rank</label>
                  <select class="admin-form-control" v-model="topup.rank">
                    <!-- v-model="topup.country"
                                                  name="package_id"
                                                  class="admin-form-control"
                                                  @change="getFranchiseOnCountry(topup.country)" -->
                    <option disabled value="" selected>Select Rank</option>
                    <!-- <option value="Ace" selected>Ace</option> -->
                    <!-- <option
                                                    v-for="co in ranks"
                                                    v-bind:value="co.rank" v-bind:key="co.id"
                                                  >{{ co.rank }}</option> -->
                    <option
                      v-for="co in ranks"
                      v-bind:value="co.rank"
                      :key="co"
                    >
                      {{ co.rank }}
                    </option>
                  </select>
                </div>

                <!-- <div class="form-group">
                  <label>OTP</label>
                  <input
                    type="text"
                    class="admin-form-control"
                    id="otp"
                    placeholder="Enter Otp"
                    name="otp"
                    v-model="otp"
                    data-vv-as="OTP "
                  />
                </div> -->
                <div class="col-md-offset-5">
                  <button
                    type="button"
                    class="btn btn-primary"
                    @click="addTopUp"
                  >
                    Submit
                  </button>

                  <!-- <button
                          type="button"
                          class="btn btn-primary text-center"
                          @click="stopDirectIncome"
                          :disabled="!isComplete || !isDisabledBtn"
                        >
                          Submit
                        </button> -->
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
import {
//   ADD_RANK,
  ASSIGN_RANK,
  CHECKUSEREXISTED,
  ADMIN_OTP,
} from "@/adminstore/actions.type";
import axios from "axios";
export default {
  data() {
    return {
      otp: "",
      product_ids: {
        id: "",
        name: "",
      },
      topup: {
        user_id: "",
        rank: "",
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
      masterFranchiseList: [],
      //   countries:[],
      mflist: {},
      ranks: [],
    };
  },
  computed: {
    //
    isComplete() {
      return this.topup.user_id && this.otp;
    },
  },
  mounted() {
    this.getCountry();
  },
  methods: {
    getCountry() {
      axios
        .get("newrank", {})
        .then((response) => {
          //this.countries = response.data.data;
          this.ranks = response.data.data;
          console.log(this.ranks);
        })
        .catch();
    },
    sendAdminOtp() {
      var data = { type: 9 };
      this.$store.dispatch(ADMIN_OTP, data).then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
        } else {
          this.$toast.error(resp.message);
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
            this.user_id = resp.data.id;
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
    addTopUp() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to Add Rank!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
          var data = {
            id: this.topup.user_id,
            rank: this.topup.rank,
            // otp: this.otp,
          };
          this.$store
            .dispatch(ASSIGN_RANK, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
                this.$router.push({ name: "add-rank-report" });
              } else {
                this.$toast.error(resp.message);
              }
              //$('#addTopUp').trigger("reset");
              this.username = "";
              this.otp = "";
              this.topup = {
                user_id: "",
                rank: "",
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
  },
};
</script>