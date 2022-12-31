<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Manage User</h4>
            </div>
            <form id="searchForm">
              <div class="row">
                <div class="col-md-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-md-3">
                          <div class="form-group">
                            <label>From Date</label>
                            <div>
                              <div class="input-group">
                                <input
                                  type="date"
                                  class="admin-form-control"
                                  name="frm_date"
                                  :format="dateFormat"
                                  placeholder="From Date"
                                  id="frm_date"
                                />
                                <!-- <input type="text" class="admin-form-control" placeholder="From Date" id="datepicker"> -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-group">
                            <label>To Date</label>
                            <div>
                              <div class="input-group">
                                <input
                                  type="date"
                                  class="admin-form-control"
                                  name="to_date"
                                  :format="dateFormat"
                                  placeholder="To Date"
                                  id="to_date"
                                />
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-group">
                            <label>User Id</label>
                            <input
                              class="admin-form-control"
                              placeholder="Enter user id"
                              type="text"
                              id="user_id"
                              v-model="username"
                              v-on:keyup="checkUserExisted"
                            />
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
                        </div>
                        <div class="col-md-3">
                          <div class="form-group">
                            <label class="control-label">Status</label>
                            <select class="admin-form-control" id="status">
                              <option value="">Select status</option>
                              <option value="">All</option>
                              <option value="Active">Active</option>
                              <option value="Inactive">Inactive</option>
                            </select>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="text-center">
                              <button
                                type="button"
                                class="
                                  btn btn-primary
                                  waves-effect waves-light
                                  ml-4
                                "
                                id="onSearchClick"
                              >
                                Search
                              </button>
                              <button
                                type="button"
                                class="
                                  btn btn-info
                                  waves-effect waves-light
                                  ml-4
                                "
                                @click="exportToExcel"
                              >
                                Export To Excel
                              </button>
                              <button
                                type="button"
                                class="
                                  btn btn-dark
                                  waves-effect waves-light
                                  ml-4
                                "
                                id="onResetClick"
                              >
                                Reset
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
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                 v-once
                  id="manage-user-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <!-- <th>Click to login</th> -->
                      <th>User Id</th>
                      <th>Full Name</th>
                      <th>Mobile</th>
                      <th>Country</th>
                      <th>Email</th>
                      <!-- <th>paypal address</th> -->
                      <th>Sponser</th>
                      <th>Position</th>
                      <th>Entry Date</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { serveApiUserHost } from "../../../../admin_config.js";
import { USER_BLOCK } from "@/adminstore/actions.type";
import $ from "jquery";
import axios from "axios";
import moment from "moment";
import Swal from "sweetalert2";
import countryMixin from "../../../mixins/countryMixin";

export default {
  data() {
    return {
      user_id: "",
      fullname: "",
      isAvialable: "",
      products: [],
      export_url: "",
    };
  },
  mounted() {
    this.manageUserReport();
  },
  mixins: [countryMixin],
  components: {},
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    manageUserReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        that.table = $("#manage-user-report").DataTable({
          responsive: true,
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: false,
          ordering: false,
          dom: "Brtip",
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          buttons: [
            // 'copyHtml5',
            /*'excelHtml5',
            'csvHtml5',
            'pdfHtml5',*/
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "getusers",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                id: $("#user_id").val(),
                // product_id:$('#product_id').val(),
                status: $("#status").val(),
              };
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
                //return meta.row + 1;
                return i++;
              },
            },
            // {
            //   data: { user_id: "user_id", login_url: "login_url" },
            //   render: function (data) {
            //     return `<a target="_blank" href="${data.login_url}${data.user_id}">Click to login</a>`;
            //   }
            // },
            { data: "user_id" },

            { data: "fullname" },
            { data: "mobile" },
            { data: "country" },
            { data: "email" },
            { data: "sponser_id" },
            { data: "position" },

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
            { data: "status" },
            {
              data: { id: "id", status: "status" },
              render: function (data) {
                return `<a class="myProfile" title="Profile" data-id="${
                  data.id
                }">
                                                <i class="fa fa-user font-16"></i>
                                            </a>&nbsp;
                                            <a class="editmyProfile" data-id="${
                                              data.id
                                            }" title="Edit">
                                                <i class="fa fa-pencil font-16"></i>
                                            </a><br>
                                            <label class="${
                                              data.status == "Active"
                                                ? "text-info"
                                                : "text-warning"
                                            } waves-effect" id="changeStatus" data-id="${
                  data.id
                }" data-status="${data.status}">${
                  data.status == "Active" ? "Block" : "Unblock"
                }
                                            </label>`;
              },
            },
          ],
        });

        $("#onSearchClick").click(function () {
          that.table.ajax.reload();
        });

        $("#onResetClick").click(function () {
          $("#searchForm").trigger("reset");
          that.username = "";
          that.isAvialable = "";
          that.table.ajax.reload();
        });

        $("#manage-user-report").on("click", "#changeStatus", function () {
          that.changeStatus($(this).data("id"), $(this).data("status"));
        });

        /* $('#manage-user-report').on('click','#login',function () {
             that.login($(this).data("user_id"));
         });*/

        $("#manage-user-report").on("click", ".editmyProfile", function () {
          that.$router.push({
            name: "edituserprofile",
            params: {
              id: $(this).data("id"),
            },
          });
        });

        $("#manage-user-report").on("click", ".myProfile", function () {
          that.$router.push({
            name: "userprofile",
            params: {
              id: $(this).data("id"),
            },
          });
        });
      }, 0);
    },
    changeStatus(id, status) {
      new Swal({
        title: "Are you sure?",
        text: `You want to change status of this user`,
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes",
      }).then((result) => {
        if (result.value) {
          var data = { id: id, status: status };
          this.$store
            .dispatch(USER_BLOCK, data)
            .then((resp) => {
              if (resp.code == 200) {
                this.$toast.success(resp.message);
                this.table.ajax.reload();
              } else {
                this.$toast.error(resp.message);
              }
            })
            .catch();
        }
      });
    },
    exportToExcel() {
      var params = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        id: $("#user_id").val(),
        status: $("#status").val(),
        action: "export",
        responseType: "blob",
      };
      axios.post("getusers", params).then((resp) => {
        if (resp.data.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute("download", "AllUsers.xls");
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.data.message);
        }
      });
    },
  },
};
</script>