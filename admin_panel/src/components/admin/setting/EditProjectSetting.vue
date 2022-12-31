<template>
  <!-- Start content -->
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="content">
        <div class="">
          <div class="page-header-title">
            <h4 class="m-t-0 m-b-30">Project Information</h4>
          </div>
        </div>

        <div class="page-content-wrapper">
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <div class="admin-card">
                  <div class="admin-card-body">
                    <form
                      class="form-horizontal"
                      v-on:submit.prevent="onUpdateUserClick"
                    >
                      <input type="hidden" name="id" v-model="editUser.id" />

                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Project Name
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              placeholder="Enter Message"
                              type="text"
                              v-model="editUser.project_name"
                            />
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Email
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              placeholder="Enter Message"
                              type="text"
                              v-model="editUser.email"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Domain name
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              placeholder="Enter Message"
                              type="text"
                              v-model="editUser.domain_name"
                            />
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Network Type
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              placeholder="User ID"
                              type="text"
                              v-model="editUser.network_type"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label">
                              Registration Plan</label
                            >

                            <select
                              class="admin-form-control"
                              v-model="editUser.registation_plan"
                            >
                              <!-- <option value="editUser.registation_plan">
                            {{ editUser.registation_plan }}
                          </option> -->
                              <option value="level">level</option>
                              <option value="binary">binary</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Level Plan</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.level_plan"
                            >
                              <!-- <option value="editUser.level_plan">
                            {{ editUser.level_plan }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Binary Plan</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.binary_plan"
                            >
                              <!-- <option value="editUser.binary_plan">
                            {{ editUser.binary_plan }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Direct Plan</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.direct_plan"
                            >
                              <!-- <option value="editUser.direct_plan">
                            {{ editUser.direct_plan }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label">
                              Leadership Plan</label
                            >

                            <select
                              class="admin-form-control"
                              v-model="editUser.leadership_plan"
                            >
                              <!-- <option value="editUser.leadership_plan">
                            {{ editUser.leadership_plan }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label">
                              Withdraw status</label
                            >

                            <select
                              class="admin-form-control"
                              v-model="editUser.withdraw_status"
                            >
                              <!-- <option value="editUser.withdraw_status">
                            {{ editUser.withdraw_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Login status</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.login_status"
                            >
                              <!-- <option value="editUser.login_status">
                            {{ editUser.login_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label">
                              Registration status</label
                            >

                            <select
                              class="admin-form-control"
                              v-model="editUser.registration_status"
                            >
                              <option value="editUser.registration_status">
                                {{ editUser.registration_status }}
                              </option>
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label">
                              Auto Withdrawal status</label
                            >

                            <select
                              class="admin-form-control"
                              v-model="editUser.auto_withdrawal_status"
                            >
                              <!-- <option value="editUser.auto_withdrawal_status">
                            {{ editUser.auto_withdrawal_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Otp status</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.otp_status"
                            >
                              <!-- <option value="editUser.otp_status">
                            {{ editUser.otp_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> Mail status</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.mail_status"
                            >
                              <!-- <option value="editUser.mail_status">
                            {{ editUser.mail_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label"> SMS status</label>

                            <select
                              class="admin-form-control"
                              v-model="editUser.sms_status"
                            >
                              <!-- <option value="editUser.sms_status">
                            {{ editUser.sms_status }}
                          </option> -->
                              <option value="on">on</option>
                              <option value="off">off</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Working Percentage
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              type="text"
                              v-model="editUser.working_percentage"
                            />
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Copyright at
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              type="text"
                              v-model="editUser.copyright_at"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="row ml-3">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              App Link
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              type="text"
                              v-model="editUser.app_link"
                            />
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="example-email">
                              Purchase Percentage
                              <!-- <span class="madatoryStar text-danger"> *</span> -->
                            </label>

                            <input
                              class="admin-form-control"
                              type="text"
                              v-model="editUser.purchase_percentage"
                            />
                          </div>
                        </div>
                      </div>

                      <div class="text-center">
                        <button
                          class="btn btn-primary waves-effect waves-light"
                          name="submit"
                          type="submit"
                        >
                          <i class="ace-icon fa fa-check bigger-110"></i>Update
                        </button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- <div class="page-content-wrapper">
		    <div class="container">
		        <div class="row"> -->
        <!-- <div class="col-md-12">
		                <div class="panel panel-primary">
		                    <div class="panel-body">
		                        <table id="direct-income-report" class="table table-striped table-bordered dt-responsive">
		                            <thead>
		                                <tr>
		                                    <th>Sr.No</th>
		                                    <th>User Id</th>
                                            <th>Status</th> 
		                                </tr>
		                            </thead>
		                        </table>
		                    </div>
		                </div>
		            </div> -->
        <!-- </div>
		    </div>
		</div> -->
      </div>
    </div>
  </div>
</template>
<script>
import Swal from "sweetalert2";
import { PROJECTSETTING_STATUS,PROJECTSETTING_UPDATE } from "@/adminstore/actions.type";
import moment from "moment";

export default {
  data() {
    return {
      arrStates: [],
      editUser: {
        id: "",
        project_name: "",
        email: "",

        domain_name: "",
        network_type: "",
        registation_plan: "",
        level_plan: "",
        binary_plan: "",
        direct_plan: "",
        leadership_plan: "",
        working_percentage: "",
        purchase_percentage: "",
        withdraw_status: "",
        login_status: "",
        registration_status: "",

        auto_withdrawal_status: "",
        otp_status: "",
        sms_status: "",
        mail_status: "",
        copyright_at: "",
        app_link: "",
      },
    };
  },

  computed: {},
  mounted() {
    this.getUserDetails();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    getUserDetails() {
      var data = { id: this.$route.params.id };
      this.$store
        .dispatch(PROJECTSETTING_STATUS, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.editUser = {
              id: resp.id,
              project_name: resp.data.projectsetting.project_name,
              email: resp.data.projectsetting.email,
              domain_name: resp.data.projectsetting.domain_name,
              network_type: resp.data.projectsetting.network_type,
              registation_plan: resp.data.projectsetting.registation_plan,
              level_plan: resp.data.projectsetting.level_plan,
              binary_plan: resp.data.projectsetting.binary_plan,
              direct_plan: resp.data.projectsetting.direct_plan,
              leadership_plan: resp.data.projectsetting.leadership_plan,

              working_percentage: resp.data.projectsetting.working_percentage,
              purchase_percentage: resp.data.projectsetting.purchase_percentage,
              withdraw_status: resp.data.projectsetting.withdraw_status,

              login_status: resp.data.projectsetting.login_status,
              registration_status: resp.data.projectsetting.registration_status,

              auto_withdrawal_status:
                resp.data.projectsetting.auto_withdrawal_status,
              sms_status: resp.data.projectsetting.sms_status,
              otp_status: resp.data.projectsetting.otp_status,
              mail_status: resp.data.projectsetting.mail_status,
              copyright_at: resp.data.projectsetting.copyright_at,
              app_link: resp.data.projectsetting.app_link,
              /*   paypal_address: resp.data.userProfile.paypal_address,
              perfect_money_address: resp.data.userProfile.perfect_money_address*/

              // relation: resp.data.userProfile.relation,
              // contact_number: resp.data.userProfile.contact_number,
              // state: resp.data.userProfile.state,
              // city: resp.data.userProfile.city,
              // account_no: resp.data.userProfile.account_no,
              // holder_name: resp.data.userProfile.holder_name,
              // bank_name: resp.data.userProfile.bank_name,
              // branch_name: resp.data.userProfile.branch_name,
              // pan_no: resp.data.userProfile.pan_no,
              // ifsc_code: resp.data.userProfile.ifsc_code,
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
        confirmButtonColor: "#3085d8",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes",
      }).then((result) => {
        if (result.value) {
      
        this.$store
        .dispatch(PROJECTSETTING_UPDATE, this.editUser)
            .then((resp) => {
              if (resp.code === 200) {
                this.$router.push({ name: "projectsetting" });
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