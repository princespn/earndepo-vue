<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="admin-card-header">
          <h4 class="card-title">Confirm Withdrawal Report</h4>
        </div>
        <form id="searchForm">
          <div class="row">
            <div class="col-md-12">
              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-3 ">
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
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Country</label>
                          <select v-model="country" name="country" id="country" class="admin-form-control">
                              <option disabled value="" selected>Select Country</option>
                              <option v-for="co in countries" v-bind:value="co.iso_code"
                                :key = "co">{{ co.country }}</option>
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

        <div class="row">
          <div
            class="col-md-3 col-sm-6"
            v-for="(summary, index) in withdrawsummary"
            v-bind:key="index"
          >
            <div class="panel">
              <div class="panel-body">
                <h5 class="panel-title text-muted">
                  Total {{ summary.currency }} Amount
                  <span class="pull-right">{{ summary.total_amount }}</span>
                </h5>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                   v-once
                  id="confirm-withdrawal-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <th>Total Amount</th>
                      <th>Deduction</th>
                      <th>Net Amount</th>
                      <th>Network Type</th>
                      <th>Wallet</th>
                      <th>To Address</th>
                      <th>Country</th>
                      <th>IP Address</th>
                      <th>Status</th>
                      <th>Date</th>
                      <th>Remark</th>
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
import $ from "jquery";
import moment from "moment";
import axios from 'axios'
import {
  GET_WITHDRAW_CONFIRM,
  GET_WITHDRAW_SUMMARY,
} from "@/adminstore/actions.type";

export default {
  data() {
    return {
      user_id: "",
      fullname: "",
      isAvialable: "",
      frm_date: null,
      to_date: null,
      confirmWithdrawal: {},
      countries: [],
      country: "",
      export_url: "",
      withdrawsummary: {},
       username: "",

   
             
    };
  },
  components: {},
  mounted() {
    this.productReport();
    this.getCountry();
    this.getWithdrawalSummary();
  },
  methods: {
     getCountry() {
              axios
                .get("../country", {})
                .then(response => {
                  this.countries = response.data.data;
                })
                .catch();
            },
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    productReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");

      setTimeout(function () {
        that.table = $("#confirm-withdrawal-report").DataTable({
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
            url: serveApiUserHost + "getwithdrwalconfirmed",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;
              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                id: $("#to_user_id").val(),
                country: $("#country").val(),
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
                return i++;
              },
            },
            {
              data: { user_id: "user_id", fullname: "fullname" },
              render: function (data) {
                return `<span>${data.user_id}</span><span>(${data.fullname})</span>`;
              },
            },
            {
              data: { amount: "amount", deduction: "deduction" },
              render: function (data) {
                {
                  var total_amount =
                    parseInt(data.amount) + parseInt(data.deduction);
                  return total_amount;
                }
              },
            },
            { data: "deduction" },
            { data: "amount" },
            { data: "network_type" },
            { data: "withdraw_type" },
            { data: "to_address" },
            { data: "country" },
            {
              data: "ip_address",
              render: function (data) {
                if (data === null || data === undefined || data === "") {
                  return `-`;
                } else {
                  return data;
                }
              },
            },
            /*  { data: 'perfect_money_address' },*/
            { data: "status" },
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
            { data: "remark" },
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
      }, 0);
    },
    OnShowPinxClick(data) {
      $("#confirm-withdrawal-model").modal();
      this.confirmWithdrawal = data;
    },

    exportToExcel() {
      var data = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        id: $("#to_user_id").val(),
        country: $("#country").val(),
        action: "export",
        responseType: "blob",
      };
      this.$store.dispatch(GET_WITHDRAW_CONFIRM, data).then((resp) => {
        if (resp.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute("download", "confirmed_withdrwal.xls");
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.data.message);
        }
      });
    },
    getWithdrawalSummary() {
      var data = { status: 1, verify_status: 1 };
      this.$store.dispatch(GET_WITHDRAW_SUMMARY, data).then((resp) => {
        if (resp.code === 200) {
          this.withdrawsummary = resp.data;
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
  },
};
</script>