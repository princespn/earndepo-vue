<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Verified Withdraw Request Report</h4>
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
            </div>
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                   v-once
                  id="withdraw-verifiedrequest-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>
                        <input
                          type="checkbox"
                          name="allCheck"
                          class="allCheck"
                        />Select All
                      </th>
                      <th>Action</th>
                      <th>User Id</th>
                      <th>Amount</th>
                      <th>Deduction</th>
                      <th>Net Amount</th>
                      <th>Network Mode</th>
                      <th>Wallet</th>
                      <th>Address</th>
                      <th>Status</th>
                      <th>Date</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
            <div class="row" style="padding-bottom: 15px">
              <div class="col-md-12">
                <div class="form-group">
                  <div class="col-md-2">
                    <h4>Remark:</h4>
                  </div>
                  <div>
                    <div class="col-md-4">
                      <textarea
                        class="form-control rounded-0"
                        id="remark"
                        placeholder="Enter remark here"
                        rows="3"
                        v-model="remark_btm"
                      ></textarea>
                    </div>
                  </div>
                </div>
                <div class="form-group" v-if="otpstatus == 1">
                  <div class="col-md-2">
                    <h4>Otp:</h4>
                  </div>
                  <div>
                    <div class="col-md-4">
                      <input
                        class="form-control"
                        required=""
                        placeholder="OTP"
                        type="text"
                        v-model="otp_btm"
                        name="otp"
                        aria-required=""
                      />
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <button
                    type="button"
                    class="btn btn-info waves-effect waves-light"
                    @click="onMakePaymentClick"
                    :disabled="!isRequired || btn_pay_off == false"
                  >
                    Make Payment
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
              <h5 class="modal-title" id="exampleModalLabel">Add Remark</h5>
            </div>
            <div class="modal-body">
              <div class="row form-group">
                <div class="col-md-2">
                  <label>Remark</label>
                </div>
                <div class="col-md-10">
                  <textarea
                    class="form-control"
                    v-model="remark"
                    name="remark"
                    id="remark"
                  ></textarea>
                </div>
              </div>
            </div>
            <div class="modal-footer text-right">
              <button
                type="button"
                class="btn btn-info"
                @click="withdrawalReject"
                :disabled="isdisabledR"
              >
                Submit
              </button>
              <button
                type="button"
                class="btn"
                data-dismiss="modal"
                aria-label="Close"
              >
                Cancel
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="modal fade" id="add-otp-modal">
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
            <div class="modal-body" >
              <div class="row form-group">
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
            </div>
            <div class="modal-footer text-right">
              <button
                type="button"
                class="btn btn-info"
                @click="withdrawalConfirm"
                :disabled="isdisabled"
              >
                Submit
              </button>
              <button
                type="button"
                class="btn"
                data-dismiss="modal"
                aria-label="Close"
              >
                Cancel
              </button>
            </div>
          </div>
        </div>
      </div>

      <!-- Approve E-pin -->
      <div class="modal fade" id="approve-Pin" role="dialog">
        <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content">
            <form class="clearForm">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                  &times;
                </button>
                <h4 class="modal-title">Approve Request</h4>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Request Id</label>
                      <input
                        class="form-control"
                        required=""
                        placeholder="request Number"
                        type="text"
                        v-model="pinRequestIdForApprovePin"
                        name="pinRequestIdForApprovePin"
                        aria-required=""
                        readonly
                      />
                    </div>

                    <div class="form-group">
                      <label>OTP</label>
                      <input
                        class="form-control"
                        required=""
                        placeholder="OTP"
                        type="text"
                        v-model="otp"
                        name="otp"
                        aria-required=""
                      />
                    </div>

                    <div class="form-group">
                      <label>Remark</label>
                      <textarea
                        class="form-control"
                        required=""
                        placeholder="Enter remark"
                        type="text"
                        v-model="remarkForApprovePin"
                        name="remarkForApprovePin"
                        aria-required=""
                      ></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button
                  type="button"
                  @click="onManualApprove"
                  :disabled="!isComplete"
                  class="btn btn-primary waves-effect waves-light"
                  data-dismiss="modal"
                >
                  Submit
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { serveApiUserHost } from "../../../../admin_config.js";
import {
  GET_WITHDRAW_VERIFIED,
  APPROVE_WITHDRAW,
  ADMIN_OTP,
  GET_WITHDRAW_SUMMARY,
  REJECT_WITHDRAW,
  SEND_WITHDRAW,
  APPROVE_WITHDRAW_REQUEST,
  GET_ADMIN_OTP_STATUS,
} from "@/adminstore/actions.type";
import moment from "moment";
import $ from "jquery";
import Swal from "sweetalert2";
import countryMixin from "../../../mixins/countryMixin";
export default {
  data() {
    return {
      otpstatus:'',
      user_id: "",
      fullname: "",
      username: "",
      isAvialable: "",
      user_data: [],
      products: [],
      length: 10,
      start: 0,
      arrayForSelectedCheckbox: [],
      remark: "",
      sr_no: "",
      admin_otp: "",
      isdisabled: false,
      isdisabledR: false,
      pinRequestIdForApprovePin: "",
      remarkForApprovePin: "",
      export_url: "",
      withdrawsummary: [],
      otp: "",
      remark_btm: "",
      otp_btm: "",
      btn_pay_off: true,
    };
  },
  mounted() {
    this.withdrawRequestReport();
    this.getWithdrawalSummary();
    this.getAdminOtpstatus();
  },
  mixins: [countryMixin],
  computed: {
    isComplete() {
      return this.remarkForApprovePin && this.pinRequestIdForApprovePin;
    },
    isRequired() {
      return this.remark_btm;
    },
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    withdrawRequestReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        that.table = $("#withdraw-verifiedrequest-report").DataTable({
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
            url: serveApiUserHost + "getwithdrwalverified",
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
              data: { sr_no: "sr_no" },
              render: function (data) {
                return `<input data-id="${data.sr_no}" type="checkbox" class="myCheck" value="${data.sr_no}">`;
              },
            },
            {
              data: { sr_no: "sr_no", status: "status" },
              render: function (data) {
                return `<a href="javaScript:void(0);" class="text-info waves-effect manualapproverequest" data-id="${data.sr_no}">M-Approve
                                            </a><br>
                                            <a href="javaScript:void(0);" class="text-danger waves-effect changestatus" data-id="${data.sr_no}" data-status="${data.status}">Reject
                                            </a>`;
              },
            },
            {
              data: { user_id: "user_id", fullname: "fullname" },
              render: function (data) {
                return `<span>${data.user_id}</span><span>(${data.fullname})</span>`;
              },
            },
            // { render: function (data) {
            //     if(row.withdraw_type == 6)
            //          {
            //             return `Principal`;
            //         } else{
            //             return `Working`;
            //         }

            //     }
            // },
            {
              data: { amount: "amount", deduction: "deduction" },
              render: function (data) {
                return `${Number(data.amount) + Number(data.deduction)}`;
              },
            },
            {
              data: { deduction: "deduction" },
              render: function (data) {
                return `$${data.deduction}`;
              },
            },
            {
              data: { amount: "amount" },
              render: function (data) {
                return `$${data.amount}`;
              },
            },
            { data: "network_type" },
            { data: "withdraw_type" },
            { data: "to_address" },
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
            // { data: 'account_no' },
            // { data: 'branch_name' },
            // { data: 'holder_name' },
            // { data: 'pan_no' },
            // { data: 'bank_name' },
            // { data: 'ifsc_code' },
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

        $("#withdraw-verifiedrequest-report").on(
          "click",
          ".changestatus",
          function () {
            that.changeStatus($(this).data("id"), $(this).data("status"));
          }
        );

        $("#withdraw-verifiedrequest-report").on(
          "click",
          ".manualapproverequest",
          function () {
            if (that.table.row($(this).parents("tr")).data() !== undefined) {
              var data = that.table.row($(this).parents("tr")).data();
              that.ApprovePayment(data, that.table);
            } else {
              data = that.table.row($(this)).data();
              that.ApprovePayment(data, that.table);
            }
          }
        );

        $("#withdraw-verifiedrequest-report").on(
          "click",
          ".approverequest",
          function () {
            that.showOTPPopup($(this).data("id"));
          }
        );
        $("#withdraw-verifiedrequest-report").on(
          "click",
          ".myCheck",
          function () {
            $(".allCheck").prop("checked", false);
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

        $("#withdraw-verifiedrequest-report").on(
          "click",
          ".allCheck",
          function () {
            that.arrayForSelectedCheckbox = [];
            if ($(".allCheck").is(":checked")) {
              $('input[type="checkbox"].myCheck').prop("checked", true);
              $(".myCheck").each(function () {
                that.arrayForSelectedCheckbox.push($(this).data("id"));
              });
            } else if (!$(".allCheck").is(":checked")) {
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

    ApprovePayment(data, table) {
      /*console.log(data); */
      this.sr_no = data.sr_no;
      this.pinRequestIdForApprovePin = this.sr_no;
      this.tbl = table;
      $("#approve-Pin").modal();
    },
    onManualApprove() {
      var data = {
        id: this.pinRequestIdForApprovePin,
        remark: this.remarkForApprovePin,
        otp: this.otp,
      };

      this.$store
        .dispatch(APPROVE_WITHDRAW, data)
        .then((response) => {
          if (response.code === 200) {
            this.$toast.success(response.message);
            this.tbl.ajax.reload();
          } else {
            this.$toast.error(response.message);
            this.errmessage = response.message;
          }
        })
        .catch((error) => {
          this.$toast.error(error.response.message);
        });
    },
    changeStatus(id, status = "2") {
      this.sr_no = id;
      this.status = status;

      new Swal({
        title: "Are you sure?",
        text: `You want to reject this request`,
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes",
      }).then((result) => {
        if (result.value) {
          window.$("#add-remark-modal").modal('show');
        }
      });
    },
    withdrawalReject() {
      this.isdisabledR = true;
      var data = {
        sr_no: this.sr_no,
        remark: this.remark,
      };

      this.$store
        .dispatch(REJECT_WITHDRAW, data)
        .then((resp) => {
          if (resp.code == 200) {
            this.$toast.success(resp.message);
            window.$("#add-remark-modal").modal("hide");
            this.table.ajax.reload();
          } else {
            this.$toast.error(resp.message);
          }
          this.sr_no = "";
          this.remark = "";
          $(".close").trigger("click");
          $(".close").trigger("click");
        })
        .catch();
    },
    showOTPPopup(sr_no) {
      this.sr_no = sr_no;
      $("#add-otp-modal").modal();
    },
    withdrawalConfirm() {
      this.isdisabled = true;
      var data = {
        request_id: this.sr_no,
        admin_otp: this.admin_otp,
      };

      this.$store
        .dispatch(SEND_WITHDRAW, data)
        .then((resp) => {
          if (resp.code == 200) {
            this.$toast.success(resp.message);
            this.table.ajax.reload();
          } else {
            this.$toast.error(resp.message);
          }
          this.sr_no = "";
          this.admin_otp = "";
          $(".close").trigger("click");
          $(".close").trigger("click");
        })
        .catch();
    },
    onMakePaymentClick() {
      var data = {
        request_id: this.arrayForSelectedCheckbox,
        remark: this.remark_btm,
        otp: this.otp_btm,
      };
      this.$store
        .dispatch(APPROVE_WITHDRAW_REQUEST, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.remark_btm = "";
            this.otp_btm = "";
            //this.$router.push({name:'confirmwithdrawalreport'});
            this.$toast.success(resp.message);
            $("#withdraw-verifiedrequest-report").DataTable().ajax.reload();
          } else {
            this.remark_btm = "";
            this.otp_btm = "";
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.remark_btm = "";
          this.otp_btm = "";
          this.$toast.error(err);
        });
    },

    exportToExcel() {
      var data = {
        frm_date: $("#frm_date").val(),
        to_date: $("#to_date").val(),
        user_id: $("#user_id").val(),
        action: "export",
        responseType: "blob",
      };
      this.$store.dispatch(GET_WITHDRAW_VERIFIED, data).then((resp) => {
        if (resp.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute("download", "verifiedwithdrawal.xls");
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.message);
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
    sendAdminOtp() {
      //1---- withdraw

      var data = { type: 1 };
      this.$store.dispatch(ADMIN_OTP, data).then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
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
            this.otpstatus = resp.data.withdraw_verfied_otp_update_status;
            // this.$toast.success(resp.message);
          } else {
            this.$toast.error(resp.message);
          }
        });
    }
  },
};
</script>