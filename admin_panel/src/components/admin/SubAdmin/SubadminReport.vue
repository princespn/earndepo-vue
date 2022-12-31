<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Create Sub Admin</h4>
            </div>

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

            <div class="admin-card-body">
              <form id="addSubadmin">
                <div class="row">
                  <div class="col-md-4">
                    <div class="form-group">
                      <label>User Name (User Id)</label>
                      <input
                        name="user_id"
                        class="
                          admin-form-control
                          {
                          error:
                          errors.has('user_id')
                          }
                        "
                        placeholder="Enter User Name"
                        type="text"
                        v-model="subadmin.user_id"
                        v-on:keyup="checkUserExisted"
                      />

                      <p
                        :class="{ 'text-danger': isAvialable == 'Available' }"
                        v-if="isAvialable == 'Available' && isAvialable != ''"
                      >
                        This user id already exist
                      </p>

                      <p
                        :class="{
                          'text-success': isAvialable == 'Not Available',
                        }"
                        v-if="
                          isAvialable == 'Not Available' && isAvialable != ''
                        "
                      >
                        You can use this Name
                      </p>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div
                      name="password"
                      class="form-group"
                      style="position: relative"
                    >
                      <label>Password </label>
                      <input
                        name="password"
                        class="
                          admin-form-control
                          {
                          error:
                          errors.has('password')
                          }
                        "
                        placeholder="Enter Password"
                        type="password"
                        v-model="subadmin.password"
                        :disabled="!isButtonActive"
                      />
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group">
                      <label>Sub Admin Name</label>
                      <input
                        name="fullname"
                        class="
                          admin-form-control
                          {
                          error:
                          errors.has('fullname')
                          }
                        "
                        placeholder="Enter Sub Admin Name"
                        type="text"
                        v-model="subadmin.fullname"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <div class="form-group">
                      <label>Email Id</label>
                      <input
                        name="email"
                        class="
                          admin-form-control
                          {
                          error:
                          errors.has('email')
                          }
                        "
                        placeholder="Enter Email Id"
                        type="email"
                        v-model="subadmin.email"
                      />
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group" style="position: relative">
                      <label>Contact Number</label>
                      <input
                        name="mobile"
                        class="
                          admin-form-control
                          {
                          error:
                          errors.has('mobile')
                          }
                        "
                        id="mobile"
                        placeholder="Enter Contact Number"
                        type="text"
                        v-model="subadmin.mobile"
                      />
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group">
                      <label>Department</label>
                      <select
                        name="type"
                        class="admin-form-control { error: errors.has('type') }"
                        v-model="subadmin.type"
                      >
                        <option selected="" value="">Select Department</option>
                        <!-- <option value="sub-admin">Sub Admin</option> -->
                        <!-- <option value="sub-admin">Sub Admin</option> -->
                        <option value="admin">Admin</option>
                      </select>
                    </div>
                  </div>
                  <!-- <div class="form-group col-md-6">
                                    <label>OTP</label>
                                       <input type="text" class="admin-form-control" id="otp" placeholder="Enter Otp" name="otp"  v-model="subadmin.otp" data-vv-as="OTP ">
                                 </div> -->
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="text-center">
                      <button
                      
                        type="button"
                        class="btn btn-rounded btn-outline-primary"
                        @click="addSubadmin"
                        v-html="buttonValue"
                       
                      ></button>
                      <!-- <button
                        type="button"
                        class="btn btn-rounded btn-outline-primary"
                        @click="addSubadmin"
                        v-html="buttonValue"
                       
                      ></button> -->
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <br />
            <br />
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                 v-once
                  id="subadmin-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User ID</th>
                      <th>Full Name</th>
                      <th>Mobile No</th>
                      <th>Email Id</th>
                      <th>Department</th>
                      <th>Date</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Sr.No</th>
                      <th>User ID</th>
                      <th>Full Name</th>
                      <th>Mobile No</th>
                      <th>Email Id</th>
                      <th>Department</th>
                      <th>Date</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- end row -->
      </div>
    </div>
  </div>
</template>

<script>
import $ from "jquery";
import Swal from "sweetalert2";
import moment from "moment";
import { serveApiUserHost } from "../../../../admin_config.js";
import {
  CHECKUSEREXISTED,
  CREATE_SUBADMIN,
  UPDATE_SUBADMIN,
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      action_status: "add",
      buttonValue: "Add Subadmin",
      isButtonActive: true,
      subadmin: {
        id: "",
        fullname: "",
        otp: "",
        email: "",
        user_id: "",
        mobile: "",
        type: "",
        password: "",
      },
      isAvialable: "",
    };
  },
  components: {},
  mounted() {
    this.subadminReport();
  },
  computed: {
    computed: {
             isCompleteForm(){
                return this.subadmin.fullname && this.subadmin.email &&  this.subadmin.mobile && this.subadmin.type && this.subadmin.user_id && this.subadmin.password;
            }
        },
  },
  methods: {
    checkUserExisted() {
      // alert();
      var data = { user_id: this.subadmin.user_id };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.isAvialable = "Available";
          } else {
            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    subadminReport() {
      let i = 0;

      let that = this;
      // alert("sujata");
      let token = localStorage.getItem("admin_token");

      setTimeout(function () {
        that.table = $("#subadmin-report").DataTable({
          responsive: true,
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: false,
          ordering: false,
          dom: "Bfrtip",
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          buttons: [
            // 'copyHtml5',
            "excelHtml5",
            "pdfHtml5",
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "getsubadminsdetails",
            type: "POST",

            data: function (d) {
              i = 0;
              i = d.start + 1;
              let params = {};
              Object.assign(d, params);
              return d;
            },
            headers: {
              Authorization: "Bearer " + token,
            },
            dataSrc: function (json) {
              if (json.code === 200) {
                that.arrGetHelp = json.data.records;

                json["recordsFiltered"] = json.data.recordsFiltered;
                json["recordsTotal"] = json.data.recordsTotal;
                return json.data.records;
              } else {
                json["recordsFiltered"] = 0;
                json["recordsTotal"] = 0;
                return json;
              }
            },
          },
          columns: [
            {
              render: function () {
                return i++;
              },
            },
            { data: "user_id" },
            { data: "fullname" },
            { data: "mobile" },
            { data: "email" },
            { data: "type" },
            {
              data: "entry_time",
              render: function (data) {
                if (data === null || data === undefined || data === "") {
                  return `-`;
                } else {
                  return moment(String(data)).format("YYYY-MM-DD");
                }
              },
            },
          ],
        });
      }, 0);
    },
    addSubadmin() {
      //alert(this.subadmin.fullname +''+this.subadmin.email+'' + this.subadmin.mobile +'' +  this.subadmin.type +'' +  this.subadmin.user_id +'' +  this.subadmin.password)
      new Swal({
        title: "Are you sure ?",
        text: "You won't be " + this.action_status + " subadmin.",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "No",
      }).then((result) => {
        if (result.value) {
          if (this.action_status === "add") {
            this.$store
              .dispatch(CREATE_SUBADMIN, this.subadmin)
              .then((resp) => {
                if (resp.code === 200) {
                  this.$toast.success(resp.message);
                  $("#addSubadmin").trigger("reset");
                  this.table.ajax.reload();
                } else {
                  this.$toast.error(resp.message);
                  $("#addSubadmin").trigger("reset");
                }
              })
              .catch((err) => {
                this.$toast.error(err);
                $("#addSubadmin").trigger("reset");
              });
          } else if (this.action_status === "update") {
            this.$store
              .dispatch(UPDATE_SUBADMIN, this.subadmin)
              .then((resp) => {
                if (resp.code === 200) {
                  this.$toast.success(resp.message);
                  $("#addSubadmin").trigger("reset");
                  this.action_status = "add";
                  this.buttonValue = "Add Subadmin";
                  this.table.ajax.reload();
                } else {
                  this.$toast.error(resp.message);
                  $("#addSubadmin").trigger("reset");
                }
              })
              .catch((err) => {
                this.$toast.error(err);
                $("#addSubadmin").trigger("reset");
              });
          }
        }
      });
    },
  },
};
</script>