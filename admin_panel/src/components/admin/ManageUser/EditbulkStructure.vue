<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="content">
          <div class>
            <div class="page-header-title">
              <h4 class="page-title">Edit Bulk Structure</h4>
            </div>
          </div>

          <div class="page-content-wrapper">
            <div class="container">
              <div class="row">
                <div class="col-md-12 col-sm-3">
                  <div class="panel panel-primary">
                    <div class="panel-body add-new">
                      <a
                        class="
                          btn btn-primary
                          waves-effect waves-light
                          pull-right
                        "
                        href="/admin/user/manage-user-account"
                      >
                        <i class="fa fa-mail-reply"></i> &nbsp;Back
                      </a>
                    </div>
                  </div>
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
                            <label
                              class="col-md-5 control-label"
                              for="example-email"
                            >
                              Number of Structure
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>
                            <div class="col-md-7">
                              <input
                                class="form-control"
                                placeholder=" Number of Structure"
                                type="text"
                                v-model="editUser.no_structure"
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
                                type="text"
                                v-model="editUser.mobile"
                              />
                            </div>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label
                              class="col-md-5 control-label"
                              for="example-email"
                            >
                              Email
                              <span class="madatoryStar text-danger">*</span>
                            </label>
                            <div class="col-md-7">
                              <input
                                class="form-control"
                                name="email"
                                placeholder="Update Email"
                                type="text"
                                v-model="editUser.email"
                              />
                            </div>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="">
                            <label class="col-md-5 control-label">
                              Country
                            </label>
                            <div class="col-md-7">
                              <select
                                class="form-control"
                                v-model="editUser.country"
                              >
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

                        <div class="clearfix form-actions">
                          <div class="col-md-offset-5 col-md-6">
                            <div class="col-md-6">
                              <button
                                class="btn btn-info col-md-12"
                                name="submit"
                                type="submit"
                              >
                                <i class="ace-icon fa fa-check bigger-110"></i
                                >Submit
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
import countryMixin from "../../../mixins/countryMixin";
import {
  ADMIN_GETUSER_PROFILE,
  GETBULKSTRUCTURE
  //   ADMIN_OTP,
} from "@/adminstore/actions.type";

export default {
  data() {
    return {
      isAvialable: "",
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
        // relation: '',
        // contact_number: '',
        // state: '',
        // city: '',
        // account_no: '',
        // holder_name: '',
        // bank_name: '',
        // branch_name: '',
        // pan_no: '',
        // ifsc_code: '',
        // paytm_no: '',
        // payzapp_no: '',
        // insurance_amt: '',
      },
    };
  },
  mixins: [countryMixin],
  components: {},
  computed: {},
  mounted() {
    this.getUserDetails();
    this.getCountry();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    getUserDetails() {
      var data = { id: this.$route.params.id };
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
            .dispatch(GETBULKSTRUCTURE, this.editUser)
            .then((resp) => {
              if (resp.code === 200) {
                this.$router.push({ name: "manage-bulk-structure" });
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
  },
};
</script>