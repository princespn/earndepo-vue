<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="content">
          <div class>
            <div class="page-header-title">
              <h4 class="page-title">Edit Project Settings</h4>
            </div>
          </div>
          <div class="page-content-wrapper">
            <div class="container">
              <div class="row">
                <div class="col-md-12 col-sm-3">
                  <div class="panel panel-primary"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <h4 class="m-t-0 m-b-30">Project Information</h4>
                      <form v-on:submit.prevent="onUpdateUserClick">
                      <input type="hidden" name="id" v-model="editUser.id" />
                        <div class="row">
                          <div class="col-md-12">
                            <div class="panel panel-primary">
                              <div class="panel-body">
                                <div class="row">
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Project Name</label>
                                      <div>
                                        <div class="input-group">
                                          <input
                                            class="form-control"
                                            placeholder="Enter Message"
                                            type="text"
                                            v-model="editUser.project_name"
                                          />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <!-- <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Sponsor Id</label>
                                      <div>
                                        <div class="input-group">
                                          <input
                                            class="form-control"
                                            placeholder="User ID"
                                            readonly
                                            type="text"
                                            v-model="editUser.sponsor_id"
                                          />
                                        </div>
                                      </div>
                                    </div>
                                  </div> -->
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Email</label>
                                      <div>
                                        <div class="input-group">
                                          <input
                                            class="form-control"
                                            placeholder="Enter EMail"
                                            type="text"
                                            v-model="editUser.email"
                                          />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Domain name</label>
                                      <div>
                                        <div class="input-group">
                                          <input
                                            class="form-control"
                                            placeholder="Domain name"
                                            readonly
                                            type="text"
                                            v-model="editUser.domain_name"
                                          />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Network Type</label>
                                      <div>
                                        <div class="input-group">
                                          <input
                                            class="form-control"
                                            placeholder="Network Type"
                                            readonly
                                            type="text"
                                            v-model="editUser.network_type"
                                          />
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                   <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Registration Plan</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.registation_plan">
                                              <option value="level">level</option>
                                              <option value="binary">binary</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Level Plan</label>
                                      <div>
                                        <div class="input-group">
                                         <select class="form-control" v-model="editUser.level_plan">
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Binary Plan</label>
                                      <div>
                                        <div class="input-group">
                                           <select
                                              class="form-control"
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
                                    </div>
                                  </div>
                                   <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Direct Plan</label>
                                      <div>
                                        <div class="input-group">
                                           <select class="form-control" v-model="editUser.direct_plan">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Leadership Plan</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.leadership_plan">
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <!-- <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Withdraw status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.withdraw_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div> -->
                                  <!-- <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Login status</label>
                                      <div>
                                        <div class="input-group">
                                           <select class="form-control" v-model="editUser.login_status">
                                             <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div> -->
                                  <!-- <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Registration status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.registration_status">
                                              <option value="editUser.registration_status">
                                                {{ editUser.registration_status }}
                                              </option>
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div> -->
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Auto Withdrawal status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.auto_withdrawal_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Otp status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.otp_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Mail status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.mail_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>SMS status</label>
                                      <div>
                                        <div class="input-group">
                                            <select class="form-control" v-model="editUser.sms_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Working Percentage</label>
                                      <div>
                                        <div class="input-group">
                                           <input class="form-control" type="text" v-model="editUser.working_percentage"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Copyright at</label>
                                      <div>
                                        <div class="input-group">
                                          <input class="form-control" type="text" v-model="editUser.copyright_at"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>App Link</label>
                                      <div>
                                        <div class="input-group">
                                           <input class="form-control" type="text" v-model="editUser.app_link"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Purchase Percentage</label>
                                      <div>
                                        <div class="input-group">
                                          <input class="form-control" type="text" v-model="editUser.purchase_percentage"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>

                                  <div class="row mt-3">
                                    <div class="col-md-12">
                                      <div class="text-center">
                                        <button
                                          class="btn btn-info col-md-12"
                                          name="submit"
                                          type="submit"
                                        >
                                          <i
                                            class="
                                              ace-icon
                                              fa fa-check
                                              bigger-110
                                            "
                                          ></i
                                          >Submit
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- panel-body -->
                            </div>
                            <!-- panel -->
                          </div>
                          <!-- col -->
                        </div>
                      </form>
                      <hr>
                      <h4 class="m-t-0 m-b-30">Project Status And Message</h4>
                         <form v-on:submit.prevent="onUpdateUserClick">
                      <input type="hidden" name="id" v-model="editUser.id" />
                        <div class="row">
                          <div class="col-md-12">
                            <div class="panel panel-primary">
                              <div class="panel-body">
                                <div class="row">
                             
                                  
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Login Message</label>
                                      <div>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="User ID" type="text" v-model="editUser.login_msg"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Login status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.login_status">
                                            <!-- <option value="editUser.login_status">
                                                {{ editUser.login_status }}
                                              </option> -->
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label> Registration Message</label>
                                      <div>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="Registration Message" type="text" v-model="editUser.registration_msg"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Registration status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.registration_status">
                                            <!-- <option value="editUser.registration_status">
                                            {{ editUser.registration_status }}
                                            </option> -->
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label> Topup Message</label>
                                      <div>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="Topup Message" type="text" v-model="editUser.topup_msg"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Topup status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.topup_status">
                                            <!-- <option value="editUser.topup_status">
                                              {{ editUser.topup_status }}
                                            </option> -->
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Add Fund Message</label>
                                      <div>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="Add Fund Message" type="text" v-model="editUser.add_fund_msg"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Add Fund status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.add_fund_status">
                                            <!-- <option value="editUser.add_fund_status">
                                              {{ editUser.add_fund_status }}
                                            </option> -->
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                        </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                     <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Withdraw Message</label>
                                      <div>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="Add Fund Message" type="text" v-model="editUser.withdraw_msg"/>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Withdraw status</label>
                                      <div>
                                        <div class="input-group">
                                           <select class="form-control" v-model="editUser.withdraw_status">
                                              <option value="on">on</option>
                                              <option value="off">off</option>
                                            </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4 ml-4">
                                    <div class="form-group">
                                      <label>Country Block Status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.country_block_status">
                                            <!-- <option value="editUser.country_block_status">
                                              {{ editUser.country_block_status }}
                                            </option> -->
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Admin Topup status</label>
                                      <div>
                                        <div class="input-group">
                                          <select class="form-control" v-model="editUser.admin_side_topup_on_off_status">
                                            <!-- <option value="editUser.admin_side_topup_on_off_status">
                                              {{ editUser.admin_side_topup_on_off_status }}
                                            </option> -->
                                            <option value="on">on</option>
                                            <option value="off">off</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                 

                                  <div class="row mt-3">
                                    <div class="col-md-12">
                                      <div class="text-center">
                                        <button
                                          class="btn btn-info col-md-12"
                                          name="submit"
                                          type="submit"
                                        >
                                          <i
                                            class="
                                              ace-icon
                                              fa fa-check
                                              bigger-110
                                            "
                                          ></i
                                          >Submit
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- panel-body -->
                            </div>
                            <!-- panel -->
                          </div>
                          <!-- col -->
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
  PROJECT_ADMIN_GETUSER_PROFILE,
  USER_ADMIN_UPDATE_PROFILE,
  ADMIN_OTP,
} from "@/adminstore/actions.type";

export default {
  data() {
    return {
      arrCountry: [],
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
        login_msg: "",
        registration_msg: "",
        topup_msg: "",
        add_fund_msg: "",
        country_block_status:"",
        topup_status: "",
        add_fund_status: "",
        admin_side_topup_on_off_status:"",
        withdraw_msg:"",
      },
    };
  },
  mixins: [countryMixin],
  components: {},
  computed: {},
  mounted() {
    this.getUserDetails();
    this.getCountry();
    this.getUserDetails();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    getUserDetails() {
      var data = { id: this.$route.params.id };
      this.$store
        .dispatch(PROJECT_ADMIN_GETUSER_PROFILE, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.editUser = {
              id: resp.data.projectsetting.id,
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
              auto_withdrawal_status: resp.data.projectsetting.auto_withdrawal_status,
              sms_status: resp.data.projectsetting.sms_status,
              otp_status: resp.data.projectsetting.otp_status,
              mail_status: resp.data.projectsetting.mail_status,
              copyright_at: resp.data.projectsetting.copyright_at,
              app_link: resp.data.projectsetting.app_link,
              login_msg:  resp.data.projectsetting.login_msg,
              registration_msg:  resp.data.projectsetting.registration_msg,
              topup_msg:  resp.data.projectsetting.topup_msg,
              add_fund_msg:  resp.data.projectsetting.add_fund_msg,
              country_block_status: resp.data.projectsetting. country_block_status,
              topup_status:  resp.data.projectsetting.topup_status,
              add_fund_status: resp.data.projectsetting.add_fund_status,
              admin_side_topup_on_off_status: resp.data.projectsetting.admin_side_topup_on_off_status,
              withdraw_msg: resp.data.projectsetting.withdraw_msg,
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
            .dispatch(USER_ADMIN_UPDATE_PROFILE, this.editUser)
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

    sendAdminOtp() {
      //3---- edit
      var data = { type: 3 };
      this.$store.dispatch(ADMIN_OTP, data).then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
  },
};
</script>