<template>
<div class="admin-content-body">
<div class="container-fluid">
 <div class="admin-card">
  <div class="content">
    <div class>
      <div class="page-header-title">
        <h4 class="page-title">Edit Date</h4>
      </div>
    </div>

    <div class="page-content-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-3">
            <div class="panel panel-primary">
              <div class="panel-body add-new">
                <a
                  class="btn btn-primary waves-effect waves-light pull-right"
                  href="/admin/cron/manage-user-account"
                >
                  <i class="fa fa-mail-reply"></i> &nbsp;Back
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <!-- <div class="col-md-2 col-sm-6">
            <button
              type="button"
              class="btn btn-primary waves-effect waves-light"
              @click="sendAdminOtp"
            >
              Send Otp
            </button>
            <p>Note :- Otp Valid 2 Hours</p>
          </div> -->
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
                  <input type="hidden" name="id" v-model="editUser.pin" />
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label">
                        E-Pin
                        <!-- <span class="madatoryStar text-danger text-danger">*</span> -->
                      </label>
                      <div class="col-md-7">
                      <input type="text" class="admin-form-control" placeholder=" E-Pin" v-model="editUser.pin" name="name" required="" readonly>
                        <!-- <input
                          class="form-control"
                          placeholder="User ID"
                          readonly
                          type="text"
                          v-model="editUser.user_id"
                        /> -->
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="col-md-5 control-label" for="example-email">
                        Date
                        <!-- <span class="madatoryStar text-danger"> *</span> -->
                      </label>
                      <div class="col-md-7">
                        <input type="date"
                              class="admin-form-control"
                              name="date"
                              placeholder="From Date"
                              id="date"
                              
                              v-model="editUser.entry_time"/>
                       <!-- <input type="date" class="admin-form-control" :bootstrap-styling="true" name="date" :format="dateFormat" placeholder=" Date" id="date" v-model="editUser.entry_time"> -->
                        <!-- <span class="input-group-addon bg-custom b-0 datepicker_border">
                          <i class="mdi mdi-calendar"></i>
                        </span> -->
                      </div>
                    </div>
                  </div>


             


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
import { EDIT_GETUSER_PROFILE,UPDATE_PRODUCT_TOPUP} from '@/adminstore/actions.type';

export default {
  data() {
    return {
et_time:'2022-01-01 12:49:35',
       id:"",
      pin:"",
       
      arrCountry: [],
      arrStates: [],
      editUser: {

       
        pin:"",
        entry_time:"",
        entry_time_actual:"",
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
      
    };
  },
  mixins: [countryMixin],
  components: {
    
  },
  computed: {},
  mounted() {
    this.getUserDetails();
    this.getCountry();
  },
  methods: {
    dateFormat(date) {
      // alert(date);
      return moment(date).format("YYYY-MM-DD");
    },
    getUserDetails() {
        var data = {id: this.$route.params.id};
         this.$store
        .dispatch(EDIT_GETUSER_PROFILE, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.editUser = {
                id: resp.data.id,
                            entry_time: resp.data.entry_time,
                            entry_time_actual: resp.data.entry_time,
                            pin: resp.data.pin,
            };
            const myArray = (this.editUser.entry_time).split(" ");
            this.editUser.entry_time = myArray[0];
            console.log(myArray);
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
            .dispatch(UPDATE_PRODUCT_TOPUP, 
            this.editUser)
            .then((resp) => {
              if (resp.code === 200) {
                this.$router.push({ name: "manage-topup-dates" });
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

    // sendAdminOtp() {
    //   //3---- edit
    //    var data = {type: 3};
    //    this.$store
    //   .dispatch(ADMIN_OTP, data)
    //   .then((resp) => {
    //     if (resp.code === 200) {
        
    //       this.$toast.success(resp.message);
    //     } else {
    //       this.$toast.error(resp.message);
    //     }
    //   });
    // },
  },
};
</script>