<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Withdraw Request Report</h4>
            </div>
            <br />
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
                class="col-md-6 col-sm-6"
                v-for="summary in withdrawsummary"
                v-bind:key="summary.currency"
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
            <div class="admin-card-button ml-4" v-if="otpstatus == 1">
                <button
                  type="button"
                  class="btn btn-primary waves-effect waves-light"
                  @click="sendAdminOtp"
                >
                  Send Otp
                </button>
                <p>Note :- Otp Valid 2 Hours</p>
              </div>
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                   v-once
                  id="withdraw-request-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th><input type="checkbox" id="allCheck" />Select All</th>
                      <th>User Id</th>
                      <th>Amount</th>
                      <th>UserIP</th>
                      <th>Service Charges</th>
                      <th>Net Amount</th>
                      <th>Currency Type</th>
                      <th>Wallet Type</th>
                      <th>Address</th>
                      <th>IP Address</th>
                      <th>Status</th>
                      <th>Date</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
            <div class="row" style="padding-bottom: 15px">
              <!-- <div class="col-md-12">
		                            <div class="form-group">
		                                <div class="col-md-2">
		                                    <h4>Remark:</h4>
		                                </div>
		                                <div>
		                                    <div class="col-md-4">
		                                        <textarea class="form-control rounded-0" id="remark" placeholder="Enter remark here" rows="3" v-model="remark">Pay Now</textarea>
		                                    </div>
		                                </div>
		                            </div>
		                        </div> -->
         <!-- <div class="form-group col-4" v-if="otpstatus == 1">
                  <label>OTP</label>
                  <input
                    type="text"
                    class="form-control"
                    id="otp"
                    placeholder="Enter Otp"
                    name="otp"
                    v-model="otp_btm"
                    data-vv-as="OTP "
                    @blur="OtpValidation($event)"
                  />
                  <div v-if="otpErr !== ''" class="tooltip1">
                    <span class="text-danger">
                      {{ this.otpErr }}</span
                    >
                  </div>
                </div> -->
              <div class="col-md-12">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                  <button
                    type="button"
                    class="btn btn-info waves-effect waves-light"
                    @click="showOTPPopup"
                    :disabled="arrayForSelectedCheckbox.length == 0"
                  >
                    Verify Withdrawals
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal fade" id="add-remark-modal">
        <div class="modal-dialog modal-md" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true" class="fa fa-times"></span>
              </button>
              <h5 class="modal-title" id="exampleModalLabel">Enter OTP</h5>
            </div>
            <div class="modal-body">
              <div class="row form-group" v-if="otpstatus == 1">
                <div class="col-md-2">
                  <label>Enter OTP</label>
                </div>
                <div class="col-md-10">
                  <input
                    type="text"
                    class="form-control"
                    v-model="admin_otp"
                    name="admin_otp"
                    id="admin_otp"
                    required
                  />
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-2">
                  <label>Admin Otp:</label>
                </div>
                <div class="col-md-10">
                  <input
                    type="text"
                    class="form-control"
                    v-model="otp_btm"
                    name="otp"
                    id="otp"
                    required
                  />
                </div>
              </div>
            </div>
            <div class="modal-footer text-right">
              <button
                type="button"
                class="btn btn-info"
                @click="withdrawalVerify"
              >
                Submit
              </button>
              <button
                type="button"
                class="btn"
                data-dismiss="modal"
                aria-label="Close"
                 @click="closeOTPPopup"
              >
                Cancel
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { serveApiUserHost } from "../../../../admin_config.js";
import {
  GET_WITHDRAW_SUMMARY,
  GET_WITHDRAW_VERIFY,
  GET_WITHDRAW_VERIFY_OTP,
  ADMIN_OTP,
  GET_ADMIN_OTP_STATUS
} from "@/adminstore/actions.type";
import countryMixin from "../../../mixins/countryMixin";
import moment from "moment";
import $ from "jquery";

export default {
  data() {
    return {
      otp :"",
      otpErr:"",
      otpstatus:'',
      user_id: "",
      fullname: "",
      isAvialable: "",
      username: "",
      user_data: [],
      products: [],
      length: 10,
      start: 0,
      remark: "Verified by admin",
      arrayForSelectedCheckbox: [],
      admin_otp: "",
      withdrawsummary: [],
      otp_btm: "",
    };
  },
    mixins: [countryMixin],
  mounted() {
    this.withdrawRequestReport();
    this.getWithdrawalSummary();
    this.getAdminOtpstatus();
  },
  components: {},
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    sendAdminOtp() {
      //7---- verify withdraw
      var data = {type: 7};
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
    withdrawRequestReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        that.table = $("#withdraw-request-report").DataTable({
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          responsive: true,
          stateSave: false,
          ordering: false,
          dom: "Brtip",
          buttons: [
            "pageLength",
            /*{
                                extend: 'excelHtml5',
                                title: 'Withdraw Request Report',
                                exportOptions: {
                                    columns: ':visible'
                                }
                            },*/
          ],
          ajax: {
            url: serveApiUserHost + "getwithdrwalverify",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                user_id: $("#user_id").val(),
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
              data: "sr_no",
              render: function (data) {
                return `<input data-id="${data}" type="checkbox" class="myCheck" value="${data}">`;
              },
            },
            {
              data: { user_id: "user_id", fullname: "fullname" },
              render: function (data) {
                return `<span>${data.user_id}</span><span>(${data.fullname})</span>`;
              },
            },
            {
              data: "amount",
              render: function (data) {
                return `${Number(data)}`;
              },
            },
            { data: "user_ip" },
            {
              data: "deduction",
              render: function (data) {
                return `${Number(data)}`;
              },
            },
            {
              data: { amount: "amount", deduction: "deduction" },
              render: function (data) {
                return `${Number(data.amount) - Number(data.deduction)}`;
              },
            },
            { data: "network_type" },
            { data: "wallet_type" },
            { data: "to_address" },
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

        $("#withdraw-request-report tbody").on(
          "click",
          ".myCheck",
          function () {
            $("#allCheck").prop("checked", false);
            if ($(this).is(":checked")) {
              that.arrayForSelectedCheckbox.push($(this).data("id"));
            } else if (!$(this).is(":checked")) {
              that.arrayForSelectedCheckbox.splice(
                that.arrayForSelectedCheckbox.indexOf($(this).data("id")),
                1
              );
            }
          }
        );

        $("#withdraw-request-report thead").on(
          "click",
          "#allCheck",
          function () {
            that.arrayForSelectedCheckbox = [];
            if ($("#allCheck").is(":checked")) {
              $('input[type="checkbox"].myCheck').prop("checked", true);
              $(".myCheck").each(function () {
                that.arrayForSelectedCheckbox.push($(this).data("id"));
              });
            } else if (!$("#allCheck").is(":checked")) {
              $('input[type="checkbox"].myCheck').prop("checked", false);
              $(".myCheck").each(function () {
                that.arrayForSelectedCheckbox.splice(
                  that.arrayForSelectedCheckbox.indexOf($(this).data("id")),
                  1
                );
              });
            }
          }
        );
      }, 0);
    },
    showOTPPopup() {
      window.$("#add-remark-modal").modal("show");
    },
    closeOTPPopup(){
      this.admin_otp ='';
      this.otp_btm ='';
      window.$("#add-remark-modal").modal("hide");
    },
    withdrawalVerify() {
      if (this.otp_btm !== "") {
        var data = {
          request_id: this.arrayForSelectedCheckbox,
            admin_otp: this.otp_btm,
            otp: this.admin_otp,
        };
        this.$store
          .dispatch(GET_WITHDRAW_VERIFY_OTP, data)
          .then((resp) => {
            if (resp.code === 200) {
              this.$toast.success(resp.message);
              window.$("#add-remark-modal").modal("hide");
              this.$router.push({ name: "verifiedwithdrawalreport" });
            } else {
              this.$toast.error(resp.message);
              window.$("#add-remark-modal").modal("hide");
              this.admin_otp = "";
              this.otp_btm="";
            }
            $(".close").trigger("click");
            $(".close").trigger("click");
          })
          .catch();
      } 
      else {
        this.$toast.error("OTP is required");
      }
    },
    exportToExcel() {
      var data = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        user_id: $("#user_id").val(),
        action: "export",
        responseType: "blob",
      };
      this.$store.dispatch(GET_WITHDRAW_VERIFY, data)
      .then((resp) => {
        //this.export_url = resp.data.data.excel_url;
        var mystring = resp.data.data;
        var myblob = new Blob([mystring], {
          type: "text/plain",
        });

        var fileURL = window.URL.createObjectURL(new Blob([myblob]));
        var fileLink = document.createElement("a");

        fileLink.href = fileURL;
        fileLink.setAttribute("download", "AllPendingWithdrawals.xls");
        document.body.appendChild(fileLink);

        fileLink.click();
      });
    },
    getWithdrawalSummary() {
      var data = { status: 0, verify_status: 0 };
      this.$store.dispatch(GET_WITHDRAW_SUMMARY, data).then((resp) => {
        if (resp.code === 200) {
          this.withdrawsummary = resp.data;
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
            this.otpstatus = resp.data.withdraw_pending_update_status;
            // this.$toast.success(resp.message);
          } else {
            this.$toast.error(resp.message);
          }
        });
    }
  },
};
</script>