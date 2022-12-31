<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Edit User Profile Report</h4>
            </div>
            <form id="searchForm">
              <div class="row">
                <div class="col-md-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-md-3 ml-5">
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
                        <div class="col-md-4">
                          <div class="form-group">
                            <label>User Id</label>
                            <input
                              class="admin-form-control"
                              placeholder="Enter user id"
                              type="text"
                              id="to_user_id"
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
                  id="edit-user-profile-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <th>Name</th>
                      <th> Mobile</th>
                      <th>Old BTC Address</th>
                      <th>New BTC Address</th>
                      <th>Old ETH Address</th>
                      <th>New ETH Address</th>
                      <th>Old TRON Address</th>
                      <th>New TRON Address</th>
                      <!-- <th>Old USDT Address</th>
                      <th>New USDT Address</th> -->
                      <th>Updated By</th>
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
import "bootstrap/dist/css/bootstrap.min.css";
import "datatables.net-bs4";
import "datatables.net-bs4/css/dataTables.bootstrap4.min.css";
import "datatables.net-buttons-bs4";
import "datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css";
import { serveApiUserHost } from "../../../../admin_config.js";
import countryMixin from "../../../mixins/countryMixin";

import $ from "jquery";
// import moment from "moment";
import axios from "axios";

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  components: {
    // NavigationComponent
    // Breadcrum
  },
  data() {
    return {
      user_id: "",
      fullname: "",
      username: "",
      isAvialable: "",
      frm_date: null,
      to_date: null,
      edituserreport: {},
    };
  },
  computed: {},
  mounted() {
    this.productReport();
  },
  mixins: [countryMixin],
  methods: {
    exportToExcel() {
      var params = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        id: $("#to_user_id").val(),
        action: "export",
        responseType: "blob",
      };
      axios.post("getuserlogs", params).then((resp) => {
        if (resp.data.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute("download", "EditUserDetails.xls");
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.data.message);
        }
      });
    },
    productReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        const table = $("#edit-user-profile-report").DataTable({
          responsive: true,
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: true,
          ordering: false,
          dom: "Brtip",

          buttons: [
            // 'copyHtml5',
            "excelHtml5",
            /*'csvHtml5',
                            'pdfHtml5',*/
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "getuserlogs",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                // user_id: $('#user_id').val(),
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                id: $("#to_user_id").val(),
                // product_id:$('#product_id').val(),
                // status: $("#status").val(),
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
                {
                  return i++;
                }
              },
            },
            { data: "user_id" },
            { data: "fullname" },
             { data: "mobile" },
            { data: "old_btc_address" },
            { data: "new_btc_address" },
            { data: "old_ethereum" },
            { data: "new_ethereum" },
            { data: "old_trn_address" },
            { data: "new_trn_address" },
            // { data: "old_usdt_address" },
            // { data: "new_usdt_address" },
            // { data: 'old_xrp_address' },
            // { data: 'new_xrp_address' },

            { data: "updated_by" },
          ],
        });
        $("#search-box").click(function () {
          table.ajax.reload();
        });

        $("#onSearchClick").click(function () {
          table.ajax.reload();
        });

        $("#onResetClick").click(function () {
          $("#searchForm").trigger("reset");
          that.username = "";
          that.isAvialable = "";
          table.ajax.reload();
        });
      }, 0);
    },
  },
};
</script>