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
              <h4 class="card-title">Add Rank Power</h4>
            </div>

            <div class="admin-card-body">
     <form id="change-user-password" @submit.prevent="">
                     
                          <input
                            type="hidden"
                            name="user_id"
                            v-model="user_id"
                          />
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
                            <label>Full name</label>
                            <input
                              type="text"
                              class="admin-form-control"
                              id="fullname"
                              name="fullname"
                              v-model="fullname"
                              required
                              readonly
                            />
                            <!-- <div class="tooltip2" v-show="errors.has('fullname')">
                           <div class="tooltip-inner">
                              <span v-show="errors.has('fullname')">{{ errors.first('fullname') }}</span>
                           </div>
                        </div> -->
                          </div>
                          <div class="form-group">
                            <label>Select Rank</label>
                            <select
                              class="admin-form-control"
                              id="rank_name"
                              v-model="rank"
                              name="rank"
                            >
                              <option selected disabled value="" >Select</option>
                              <option
                                v-for="option in getTypes"
                                v-bind:value="option.rank"
                                :key="option"
                              >
                                {{ option.rank }}
                              </option>
                            </select>
                            <!-- <div class="tooltip2" v-show="errors.has('rank')">
                                       <div class="tooltip-inner">
                                          <span v-show="errors.has('rank')">{{ errors.first('rank') }}</span>
                                       </div>
                                    </div> -->
                          </div>
                          <div class="form-group">
                            <label>Position</label>
                            <select
                              name="position"
                              v-model="position"
                              class="admin-form-control"
                              @change="rankCount"
                            >
                              <option selected disabled value="">Select</option>
                              <option value="r">Right</option>
                              <option value="l">Left</option>
                            </select>
                            <!-- <div class="tooltip2" v-show="errors.has('rank')">
                                       <div class="tooltip-inner">
                                          <span v-show="errors.has('rank')">{{ errors.first('rank') }}</span>
                                       </div>
                                    </div> -->
                          </div>
                          <div class="form-group">
                            <label>Rank Count</label>
                            <input
                              name="rankname"
                              class="admin-form-control"
                              type="text"
                              v-model="rankname"
                              required
                              readonly
                            />
                            <!-- <div class="tooltip2" v-show="errors.has('rankname')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('rankname')">{{ errors.first('rankname') }}</span>
                              </div>
                           </div> -->
                          </div>
                          <div class="form-group">
                            <label>Add Power</label>
                            <input
                              type="text"
                              class="admin-form-control"
                              id="power"
                              name="power"
                              v-model="power"
                              placeholder="Enter Power"
                            />
                            <!-- <div class="tooltip2" v-show="errors.has('power')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('power')">{{ errors.first('power') }}</span>
                              </div>
                           </div> -->
                          </div>
                             <div class="form-group">
                                                <label>OTP</label>
                                                <input type="text" class="admin-form-control" id="otp" placeholder="Enter Otp" name="otp"  v-model="otp"  data-vv-as="OTP ">
                                            
                                            </div>
                          <div class="col-md-offset-5">
                            <button
                              type="button"
                              class="btn btn-primary"
                              @click="addPower()"
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
  ADD_RANK_POWER,
  CHECKUSEREXISTED,
  Get_All_Rank,ADMIN_OTP
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
       otp:'',
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
      position: "",
      user: "",
      id: "",
      disablebtn: false,
      ranks: [],
      getTypes: [],
      power: 0,
      rank: "",
      rankname: "",
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
    };
  },
  computed: {
    //
    isComplete() {
      return this.topup.user_id && this.otp;
    },
  },
  mounted() {
    this.getTransactionType();
  },
  methods: {
    sendAdminOtp() { 
      var data = {type: 10};
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
    getTransactionType() {
      this.$store
        .dispatch(Get_All_Rank)
        .then((response) => {
          this.getTypes = response.data;
          //   console(this.getTypes);
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    checkUserExisted() {
      var data = { user_id: this.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.id = resp.data.id;
            this.user_id = resp.data.user_id;
            this.fullname = resp.data.fullname;
            this.isAvialable = "Available";
          } else {
            this.user_id = '';
            this.isAvialable = 'Not Available';
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    addPower() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to Add Power!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
          var data = {
            id: this.id,
            position: this.position,
            power: this.power,
            rank: this.rank,
            otp:this.otp

          };
          this.$store
            .dispatch(ADD_RANK_POWER, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
                this.$router.push({ name: "add-rank-power-report" });
              } else {
                this.$toast.error(resp.message);
              }
              //$('#addTopUp').trigger("reset");
              this.username = "";
              this.otp=""
              this.topup = {
                user_id: "",
                rank: "",
              };
              this.fullname="",
              this.rank="",
              this.position='',
              this.power='',
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