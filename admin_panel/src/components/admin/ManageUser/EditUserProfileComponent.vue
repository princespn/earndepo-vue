<template>
<div class="admin-content-body">
<div class="container-fluid">
 <div class="admin-card">
  <div class="content">
    <div class>
      <div >
        <h4 class="page-title ml-4 mt-4">Edit Profile</h4>
      </div>
    </div>

    <div class="page-content-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-3">
            <div class="panel panel-primary">
              <div class="panel-body add-new">
                <router-link
                  class="btn btn-primary waves-effect waves-light pull-right"
                  to="/user/manage-user-account"
                 >
                  <i class="fa fa-mail-reply"></i> &nbsp;Back
                </router-link>
              </div>
            </div>
          </div>
        </div>

        <div class="row" v-if="profileotpstatus == 1">
          <div class="col-md-2 col-sm-6">
            <button
              type="button"
              class="btn btn-primary waves-effect waves-light"
              @click="sendAdminOtp"
            >
              Send Otp
            </button>
            <p>Note :- Otp Valid 2 Hours</p>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-12">
            <div class="panel panel-primary">
              <div class="panel-body">
                <h4 class="m-t-0 m-b-30">Personal Information</h4>
                <form
                  class="form-horizontal"
                  v-on:submit.prevent="onUpdateUserClick"
                >
                  <input type="hidden" name="id" v-model="editUser.id" />
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">
                        User Id
                        <!-- <span class="madatoryStar text-danger text-danger">*</span> -->
                      </label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="User ID"
                          readonly
                          type="text"
                          v-model="editUser.user_id"
                        />
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label" for="example-email">
                        Sponsor Id
                        <!-- <span class="madatoryStar text-danger"> *</span> -->
                      </label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Sponsor Id"
                          readonly
                          type="text"
                          v-model="editUser.sponsor_id"
                        />
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">
                        Full Name
                        <span class="madatoryStar text-danger">*</span>
                      </label>
                      <div class="col-md-7">
                        <input
                          name="fullname"
                          class="form-control"
                          placeholder="Update Full Name"
                          type="text"
                          v-model="editUser.fullname"
                        />
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label
                        class="col-md-5 control-label"
                        for="example-mobile"
                      >
                        Mobile
                        <span class="madatoryStar text-danger"> *</span>
                      </label>
                      <div class="col-md-7">
                        <input
                          name="mobile"
                          class="form-control"
                          id="mobile"
                          placeholder="Enter Mobile"
                          required
                          type="text"
                          v-model="editUser.mobile"
                         
                        />
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label" for="example-email">
                        Email
                        <span class="madatoryStar text-danger">*</span>
                      </label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          name="email"
                          required
                          placeholder="Update Email"
                          type="text"
                          v-model="editUser.email"
                         
                        />
                        
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">BTC Address</label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Update BTC Address"
                          type="text"
                          v-model="editUser.btc_address"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">BNB Address</label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Update BNB Address"
                          type="text"
                          v-model="editUser.bnb_address"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">ETH Address</label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Update ETH Address"
                          type="text"
                          v-model="editUser.ethereum"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">TRON Address</label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Update TRON Address"
                          type="text"
                          v-model="editUser.trn_address"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6" v-if="profileotpstatus == 1">
                    <div class="form-group">
                      <label class="col-md-5 control-label text-danger">
                        Enter Otp
                        <span class="madatoryStar text-danger"> *</span>
                      </label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          name="otp"
                          placeholder="otp"
                          type="password"
                          v-model="editUser.otp"
                          data-vv-as="otp"
                        />
                      </div>
                    </div>
                  </div>

                  <!--  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">Paypal Address</label>
                      <div class="col-md-7">
                        <input
                          class="form-control"
                          placeholder="Update Paypal Address"
                          type="text"
                          v-model="editUser.paypal_address"
                          v-validate="'email'"
                          name="paypal_address"
                        />

                        <div class="tooltip2" v-show="errors.has('paypal_address')">
                          <div class="tooltip-inner">
                            <span v-show="errors.has('paypal_address')">{{ errors.first('paypal_address') }}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div> -->

                  <!--     <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email"> Perfect Money Address
 </label>
                                            <div class="col-md-7">
                                                <input id="address" name="address" class="form-control" placeholder="Update address" type="text" v-model="editUser.perfect_money_address">
                                            </div>
                                        </div>
                                    </div> -->

                  <!--  
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> Nominee Relation </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update Nominee Name" type="text" v-model="editUser.relation">
                                            </div>
                                        </div>
                                    </div>                                    

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> State </label>
                                            <div class="col-md-7">
                                                <select class="form-control" v-model="editUser.state">
                                                    <option selected="" value="">Select State</option>
                                                    <option :value="sta.name" v-for="sta in arrStates">{{sta.name}}</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email"> City </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update City" type="text" v-model="editUser.city">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                    <hr>

                                    <h4 class="m-t-0 m-b-30"> Bank Information </h4>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> Account No </label>
                                            <div class="col-md-7">
                                                <input class="form-control" name="account_no" placeholder="Update Account No" type="text" v-model="editUser.account_no">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> A/C Name </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update A/C Name" type="text" v-model="editUser.holder_name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> Bank Name </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update Bank Name" type="text" v-model="editUser.bank_name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email"> Branch Name </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update Branch Name" type="text" v-model="editUser.branch_name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label"> PAN Number </label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update PAN Number" type="text" v-model="editUser.pan_no">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 m-b-30">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email">IFSC Code</label>
                                            <div class="col-md-7">
                                                <input class="form-control" placeholder="Update IFSC Code" type="text" v-model="editUser.ifsc_code">
                                            </div>
                                        </div>
                                    </div>

                  -->

                  <div class="col-md-6">
                    <div class="">
                      <label class="col-md-5 control-label"> Country </label>
                      <div class="col-md-7">
                        <select class="form-control" v-model="editUser.country">
                          <option :value="null">Select</option>
                          <option
                            :value="cntry.iso_code"
                            v-bind:key="cntry.id"
                            v-for="cntry in arrCountry"
                          >
                            {{ cntry.country }}
                          </option>
                        </select>
                      </div>
                    </div>
                  </div>

                  <!--  <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email"> Address </label>
                                            <div class="col-md-7">
                                                <input id="address" name="address" class="form-control" placeholder="Update address" type="text" v-model="editUser.address">
                                            </div>
                                        </div>
                                    </div> -->

                  <!--  <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" for="example-email"> City </label>
                                            <div class="col-md-7">
                                                <input id="city" name="city" class="form-control" placeholder="Update City" type="text" v-model="editUser.city">
                                            </div>
                                        </div>
                                    </div>  -->

                  <div class="clearfix form-actions">
                    <div class="col-md-offset-5 col-md-6">
                      <div class="col-md-6">
                        <button
                          class="btn btn-info col-md-12"
                          name="submit"
                          type="submit"
                        >
                          <i class="ace-icon fa fa-check bigger-110"></i>Submit
                        </button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
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

import Swal from "sweetalert2";

import moment from "moment";
import countryMixin from '../../../mixins/countryMixin';
import { ADMIN_GETUSER_PROFILE,ADMIN_UPDATE_PROFILE,ADMIN_OTP,GET_ADMIN_OTP_STATUS } from '@/adminstore/actions.type';

export default {
  data() {
    return {
      arrCountry: [],
      arrStates: [],
      editUser: {
        id: "",
        user_id: "",
        country: null,
        sponsor_id: "",
        fullname: "",
        mobile: "",
        email: "",
        btc_address: "",
        address: "",
        city: "",
        paypal_address: "",
        trn_address: "",
        ethereum: "",
        bnb_address: "",
        otp: "",
      
      },
      profileotpstatus:'',
      
    };
  },
  mixins: [countryMixin],
  components: {
    
  },
  computed: {},
  mounted() {
    this.getUserDetails();
    this.getCountry();
    this.getAdminOtpstatus();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    getUserDetails() {
        var data = {id: this.$route.params.id};
         this.$store
        .dispatch(ADMIN_GETUSER_PROFILE, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.editUser = {
              id: resp.data.userProfile.id,
              user_id: resp.data.userProfile.user_id,
              sponsor_id: resp.data.userProfile.sponser_id,
              country: resp.data.userProfile.iso_code,
              fullname: resp.data.userProfile.fullname,
              mobile: resp.data.userProfile.mobile,
              email: resp.data.userProfile.email,
              btc_address: resp.data.userProfile.btc_address,
              trn_address: resp.data.userProfile.trn_address,
              ethereum: resp.data.userProfile.ethereum,
              bnb_address: resp.data.userProfile.bnb_address,
            };
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    onUpdateUserClick() {
     new Swal({
        title: "Are you sure?",
        text: `You want to update this user`,
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes",
      }).then((result) => {
        if (result.value) {
       
            this.$store
            .dispatch(ADMIN_UPDATE_PROFILE, this.editUser)
            .then((resp) => {
              if (resp.code === 200) {
                this.$router.push({ name: "manageuseraccount" });
                 this.$toast.success(resp.message);
              } else {
                this.$toast.error(resp.message);
              }
            })
            .catch((err) => {
              this.$toast.error(err.resp.message);
            });
        }
      });
    },

    sendAdminOtp() {
      //3---- edit
       var data = {type: 3};
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
            this.profileotpstatus = resp.data.profile_update_status;
            // this.$toast.success(resp.message);
          } else {
            this.$toast.error(resp.message);
          }
        });
    }
  },
};
</script>