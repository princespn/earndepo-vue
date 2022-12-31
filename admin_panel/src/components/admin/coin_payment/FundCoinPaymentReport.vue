<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Activation Report</h4>
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
                        <div class="col-md-4 ml-5">
                          <div class="form-group">
                            <label>Select Status</label>
                            <select
                              v-model="in_status"
                              name="in_status"
                              id="in_status"
                              class="admin-form-control"
                            >
                              <option value="">Select Status</option>
                              <option value="1">Confirm</option>
                              <option value="0">Pending</option>
                              <option value="2">Expired</option>
                              <option value="">All</option>
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
                  id="deposit-address-transaction"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <!--  <th>More Details</th> -->
                      <th>Address</th>
                      <th>Action</th>
                      <th>Amount</th>
                      <th>Currency Price</th>
                      <th>Payment Type</th>
                      <th>USD</th>
                      <th>Status</th>
                      <th>Entry Date</th>
                    </tr>
                  </thead>
                </table>
              </div>
              <!-- <div class="container px-5 py-5">
                <div class="row">
                  <div class="col-md-2">
                    <h6>Pending: ${{ pending }}</h6>
                  </div>
                  <div class="col-md-2">
                    <h6>Confirmed: ${{ confirmed }}</h6>
                  </div>
                  <div class="col-md-2">
                    <h6>Expired: ${{ expired }}</h6>
                  </div>

                  <div class="col-md-3">
                    <h6>Total Cancel Amount: {{cancelsum}}</h6>
                    <h6>Total Confirmed Amount: ${{ confirmedsum }}</h6>
                  </div>
                  <div class="col-md-3">
                    <h6>Total Expired Amount: ${{ expiredsum }}</h6>
                  </div>
                </div>
              </div> -->
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
  GET_FUND_TRANS_COUNT,
  GET_FUND_COIN_PAYMENT,
} from "@/adminstore/actions.type";
import countryMixin from "../../../mixins/countryMixin";
import moment from "moment";
import $ from "jquery";

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  data() {
    return {
      user_id: "",
      fullname: "",
      isAvialable: "",
      frm_date: null,
      to_date: null,
      depositaddress: {},
      in_status: "",
      pending: "",
      confirmed: "",
      expired: "",
      cancelsum: "",
      confirmedsum: "",
      expiredsum: "",
    };
  },
   mixins: [countryMixin],
  components: {},
  mounted() {
    this.productReport();
    this.getStatusCount();
  },
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    productReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");

      setTimeout(function () {
        that.table = $("#deposit-address-transaction").DataTable({
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
            /* 'excelHtml5',
                            'csvHtml5',
                            'pdfHtml5',*/
            "pageLength",
          ],

          ajax: {
            url: serveApiUserHost + "getfundcoincaymentreport",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                // to_date: $("#to_date").val(),
                id: $("#to_user_id").val(),
                status: $("#in_status").val(),
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
            // dataSrc: function (json) {
            //   if (json.code === 200) {
            //     that.arrGetHelp = json.data.records;
            //     json["draw"] = json.data.draw;
            //     json["recordsFiltered"] = json.data.recordsFiltered;
            //     json["recordsTotal"] = json.data.recordsTotal;
            //     return json.data.records;
            //   } else {
            //     json["draw"] = 0;
            //     json["recordsFiltered"] = 0;
            //     json["recordsTotal"] = 0;
            //     return json;
            //   }
            // },
          },
          columns: [
            {
              render: function () {
                //return meta.row + 1;
                return i++;
              },
            },
            {
              data: { user_id: "user_id", fullname: "fullname" },
              render: function (data) {
                return `<span>${data.user_id}</span><span>(${data.fullname})</span>`;
              },
            },
            { data: "address" },
            {
              data: "status_url",
              render: function (data) {
                return "<a href='" + data + "'>Checkout</a>";
              },
            },
            { data: "hash_unit" },
            { data: "currency_price" },
            { data: "payment_mode" },
            { data: "price_in_usd" },
            { data: "status" },
            /*{ data: 'remark' },*/
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
       this.$store.dispatch(GET_FUND_COIN_PAYMENT, data).then((resp) => {
        if (resp.code === 200) {
          //this.export_url = resp.data.data.excel_url;
          var mystring = resp.data.data;
          var myblob = new Blob([mystring], {
            type: "text/plain",
          });

          var fileURL = window.URL.createObjectURL(new Blob([myblob]));
          var fileLink = document.createElement("a");

          fileLink.href = fileURL;
          fileLink.setAttribute(
            "download",
            "CoinpaymentAddressTransactions.xls"
          );
          document.body.appendChild(fileLink);

          fileLink.click();
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
    getStatusCount() {

         this.$store
        .dispatch(GET_FUND_TRANS_COUNT)
        .then((response) => {
          this.pending = response.data.pending;
          this.confirmed = response.data.confirmed;
          this.expired = response.data.expired;
          // this.cancelsum = response.data.data.cancelsum;
          this.confirmedsum = response.data.confirmedsum;
          this.expiredsum = response.data.expiredsum;
        })
        .catch((error) => {
          this.$toast.error(error);
        });
    },
  },
};
</script>