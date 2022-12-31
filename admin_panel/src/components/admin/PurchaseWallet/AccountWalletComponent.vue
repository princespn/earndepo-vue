<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="admin-card-header">
          <h4 class="card-title">Account Wallet Report</h4>
        </div>
        <form id="searchForm">
          <div class="row">
            <div class="col-md-12">
              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-4 ml-4">
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
                    <div class="col-md-4">
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

                    <div class="row mt-3">
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
                            class="btn btn-dark waves-effect waves-light ml-4"
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
                  id="account-wallet-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <!--  <th>Direct Income</th>
                      <th>Binary Income</th>
                      <th>ROI Income</th> -->
                      <th>Purchase Wallet Balance</th>
                      <!--  <th>Franchise Income</th> -->
                      <th>Total Income</th>
                      <th>Account Wallet Balance</th>
                      <th>Entry Date</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th></th>
                      <!-- <th></th>
                      <th></th>
                      <th></th> -->
                      <!--  <th></th> -->
                      <th>Total Balance</th>
                      <th id="topup" style="color: red"></th>
                      <th id="withdraw" style="color: red"></th>
                      <th id="inv" style="color: red"></th>
                      <th></th>
                    </tr>
                  </tfoot>
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
import { GET_ACCOUNT_WALLET } from "@/adminstore/actions.type";

export default {
  data() {
    return {
      fullname: "",
      isAvialable: "",

      dashboard: {
        total_users: 0,
        total_unblock_users: 0,
        total_block_users: 0,
        total_active_user: 0,
        total_inactive_user: 0,
        total_investment: 0,
        total_deposite_admin: 0,
        total_deposite_btc: 0,
        total_deposite_wallet: 0,
        total_income: 0,
        total_direct_income: 0,
        total_binary_income: 0,
        total_level_income: 0,
        total_roi_income: 0,
        total_withdraw: 0,
        total_withdraw_pending: 0,
        total_withdraw_confirm: 0,
        total_balance: 0,
      },
      user_id: "",
      frm_date: "",
      to_date: "",
      export_url: "",
    };
  },
  components: {},
  mounted() {
    this.getDashboardData();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    getDashboardData() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");

      setTimeout(function () {
        that.table = $("#account-wallet-report").DataTable({
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
            /*"excelHtml5",
            "csvHtml5",
            "pdfHtml5",*/
            "pageLength",
          ],

          ajax: {
            url: serveApiUserHost + "getaccountwallet",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                id: $("#to_user_id").val(),
              };
              Object.assign(d, params);
              return d;
            },
            headers: {
              Authorization: "Bearer " + token,
            },
            dataSrc: function (json) {
              if (json.code === 200) {
                $("#inv").html(json.data.total);
                $("#withdraw").html(json.data.balance);
                $("#topup").html(json.data.topup_bal);
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
              data: {
                top_up_wallet: "top_up_wallet",
                top_up_wallet_withdraw: "top_up_wallet_withdraw",
              },
              render: function (data) {
                return `<span>$${(
                  data.top_up_wallet - data.top_up_wallet_withdraw
                ).toFixed(2)}</span>`;
              },
            },
            {
              data: "working_wallet",
              render: function (data) {
                return `<span>$${data.toFixed(2)}</span>`;
              },
            },
            {
              data: {
                working_wallet: "working_wallet",
                working_wallet_withdraw: "working_wallet_withdraw",
              },
              render: function (data) {
                return `<span>$${(
                  data.working_wallet - data.working_wallet_withdraw
                ).toFixed(2)}</span>`;
              },
            },

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
      $("#deposit-address-model").modal();
      this.depositaddress = data;
    },

    exportToExcel() {
      var data = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        id: $("#to_user_id").val(),
        action: "export",
        responseType: "blob",
      };
      this.$store.dispatch(GET_ACCOUNT_WALLET, data).then((resp) => {
        if (resp.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute("download", "account_wallet.xls");
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
  },
};
</script>