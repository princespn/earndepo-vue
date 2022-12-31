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
              <h4 class="card-title">Remove Working Wallet Fund</h4>
            </div>

            <div class="admin-card-body">
              <form class="row g-3" id="fund_req">
                <input type="hidden" name="user_id" v-model="fund.user_id" />
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
                    <label for="balance">Balance</label>
                    <input type="text" class="admin-form-control" id="balance" name="balance" v-model="balance" placeholder="Balance" readonly="" >
                </div>
                <div class="form-group col-12"> 
                    <label for="remark">Remark</label>
                    <input type="text" class="admin-form-control" id="remark" name="remark" v-model="fund.remark" placeholder="Remark" >
                </div>                
                <div class="form-group col-12">
                    <label class="control-label">Enter Amount</label>
                    <input type="text" class="admin-form-control" id="amount" name="amount" onkeypress="return event.charCode >= 8 && event.charCode <= 57" v-model="fund.amount"  placeholder="Enter amount" v-on:keyup="hashvalidation($event)" >
                    <div class="clearfix"></div>
                    <p class="text-danger">{{ usermsg }}</p>
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
import Swal from "sweetalert2";
// import _ from "lodash";
import { CHECKUSEREXISTED, GET_USER_DETAILS, REMOVE_FUND_WORKING } from "@/adminstore/actions.type";
export default {
  data() {
    return {
    product_ids: {
        id: '',
        name: ''
    },
    topup:{
        user_id: '',
        pin: '',
        product_id: null,
        hash_unit:'',
        payment_type:'BTC',
    },
    fund:{
        user_id:'',
        fullname:'',
        amount:'',
        remark:'',
    },              
    balance: 0,
    isAvialable:'',
    username:'',
    fullname:'',
    values:'',
    getdata:{},
    arrProduct:[],
    min_hash:'',
    max_hash:'',
    isValid:false,
    usermsg:'',
    isDisabledBtn:true,
    };
  },
created(){
      this.getUserDetails();
    },       
computed: {
            isComplete () {
                return this.fund.user_id && this.fund.amount;
            }          
        },
mounted() {
        },
  methods: {
    getUserDetails(){            
            this.$store
            .dispatch(GET_USER_DETAILS)
            .then((resp) => {
                if (resp.code === 200) {
                    this.user_id = resp.data.user_id;
                    this.fullname = resp.data.fullname;                    
                } else {
                    this.$toast.error(resp.message);
                }
                })
                .catch((err) => {
                this.$toast.error(err);
                });
              },
    // changeSelect(event) {
    //   let user = _.split(event.target.value, "-", 2); //using lodash here. You can also just use js split func
    //   let id = user[0]; // your id
    //   this.min_hash = this.arrProduct[id].min_hash;
    //   this.max_hash = this.arrProduct[id].max_hash;
    //   this.activeDiv = true;
    //   this.hashvalidation();
    //   // this.usermsg='Amount should be on range ' + this.min_hash + ' to ' + this.max_hash;
    // },   

    checkUserExisted() {
      var data = { user_id: this.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.fund.user_id = resp.data.id;
            this.user_id = resp.data.id;
            this.fullname = resp.data.fullname;
            this.balance = Number(resp.data.acc_wallet).toFixed(2);

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
        var amount = this.fund.amount;
      if ( amount == '' ) {
        this.usermsg =
          "Amount field is required";
        this.isValid = false;
      } else {
        this.isValid = true;
        this.usermsg = "";
      }
    },
     fund_req(){   
            this.isDisabledBtn = false;
            new Swal({
            title: "Are you sure ?",
            text: "You want to topup!",
            type: "warning",
            showCancelButton: true,
            confirmButtonText: "Yes!",
            cancelButtonText: "Cancel",
        })
        .then((result) => {
            if (result.value) {
                var data = {
                user_id: this.fund.user_id,
                amount: this.fund.amount,
                remark: this.fund.remark,
                fund_status: '0',                
                };
                this.$store
                .dispatch(REMOVE_FUND_WORKING, data)
                .then((resp) => {
                    if (resp.code === 200) {
                        this.$toast.success(resp.message);
                        this.$router.push({ name: "admin-remove-wallet-fund-report" });
                    } else {
                        this.$toast.error(resp.message);
                    }
                    this.fund = {
                              user_id: '',
                              amount:''
                            };
                    // $('#fund_req').trigger("reset");
                      this.isDisabledBtn = true;
                })
            }

        });
          },

  },
};
</script>