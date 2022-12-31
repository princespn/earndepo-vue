<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="admin-card-button" v-if="otpstatus == 1">
                        <button type="button" class="btn btn-primary waves-effect waves-light" @click="sendAdminOtp">Send Otp </button> 
                        <p>Note :- Otp Valid 2 Hours</p>
        </div>
        <div class="col-6 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Add Fund</h4>
            </div>
           
            <div class="admin-card-body">
              <form class="row g-3"  id="fund_req">
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
                  <label for="username">Name</label>
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
                  <label for="email">Mail Id</label>
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
                  <label for="remark">Remark</label>
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
                  <input
                    type="text"
                    class="admin-form-control"
                    id="amount"
                    name="amount"
                    v-model="fund.amount"
                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'
                    placeholder="Enter amount"
                    @blur="AmountValidation($event)"
                  />
                  <div v-if="nameErr !== ''" class="tooltip1">
                    <span class="text-danger">
                      {{ this.nameErr }}</span
                    >
                  </div>
                </div>
                <div class="form-group col-12"  v-if="otpstatus == 1">
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
                    <span class="text-danger">
                      {{ this.otpErr }}</span
                    >
                  </div>
                </div>
                <div class="form-group col-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="fund_req"
                    :disabled="!isComplete || !isDisabledBtn || nameErr !== '' || otpErr !== '' "
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
import {ADMIN_OTP,ADD_FUND ,CHECKUSEREXISTED, GET_ADMIN_OTP_STATUS} from '@/adminstore/actions.type';
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
      otpstatus:'',
      balance: 0,
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
      otp: "",
      nameErr: "",
      otpErr:"",
    };
  },

  created() {
  
  },
  computed: {
    isComplete() {
      return this.fund.user_id && this.fund.amount ;
    },
  },
  mounted() {
    this.getAdminOtpstatus();
  },
  methods: {
    AmountValidation(e) {
      const fullname = e.target.value;
      var fullnamel = fullname.replace(/ /g, "");
      if (fullname == "") {
        this.nameErr = "Amount should not be blank.";
      } else if (fullnamel < 10) {
        this.nameErr = "Enter amount must be at least 10";
      }  else {
        this.nameErr = "";
      }
    },
    OtpValidation(e) {
      const OTP = e.target.value;
      var OTPl = OTP.replace(/ /g, "");
      if (OTPl == "") {
        this.otpErr = "OTP should not be blank.";
      }else {
        this.otpErr = "";
      }
    },
    checkUserExisted(){
				 var data = {user_id: this.username};
         this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then(resp => {
                    if(resp.code === 200){
                    	this.fund.user_id = resp.data.id;
                    	this.isAvialable = 'Available';
                      this.balance = resp.data.fund_wallet_balance;
                      this.email = resp.data.email;
                      this.fullname = resp.data.fullname;
                    } else {
                    	this.fund.user_id = '';
                    	this.isAvialable = 'Not Available';
                    }
                }).catch(err => {
                	this.$toast.error(err);
                })
			},
    sendAdminOtp() {
      //4----add fund
       var data = {type: 4};
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
    getAdminOtpstatus()
    {
         this.$store
         .dispatch(GET_ADMIN_OTP_STATUS)
         .then((resp) => {
          if (resp.code === 200) {
            this.otpstatus = resp.data.add_fund_otp_status;
            // this.$toast.success(resp.message);
          } else {
            this.$toast.error(resp.message);
          }
        });
    },
    fund_req() {
      this.isDisabledBtn = false;
      let formData = new FormData();

      formData.append("user_id", this.fund.user_id);
      formData.append("amount", this.fund.amount);
      formData.append("remark", this.fund.remark);
      formData.append("fund_status", "0");
      formData.append("otp", this.otp);

         this.$store
        .dispatch(ADD_FUND, formData)
        .then((response) => {
          if (response.code == 200) {
            this.$toast.success(response.message);
            this.$router.push({ name: "addfundreport" });
          } else {
            this.$toast.error(response.message);
          }
          this.otp = "";
          this.username="";
          this.isAvialable="";
          this.balance=0;
          this.email="";
          this.fullname="";

          this.fund = {
            user_id: "",
            amount: "",
          };
          $("#fund_req").trigger("reset");
          this.isDisabledBtn = true;
        })
        .catch();
    },
  },
};
</script>