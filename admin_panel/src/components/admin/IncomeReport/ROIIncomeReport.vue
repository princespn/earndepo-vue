<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">ROI Income Report</h4>
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
                                class="btn btn-info waves-effect waves-light ml-4"
                                @click="exportToExcel">Export To Excel</button>
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
                  id="binary-income-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <th>Top Up Id</th>
                      <th>Amount</th>
                      <th>On Amount</th>
                      <th>Status</th>
                      <th>Date</th>
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

import moment from "moment";
// import { ADMIN_DAILYBOUNS } from "@/adminstore/actions.type";
import countryMixin from "../../../mixins/countryMixin";
import $ from "jquery";
import axios from 'axios';

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  data() {
    return {
      length: 10,
      start: 0,
      arrProducts: [],
      export_url: "",
      user_id: "",
      fullname: "",
      username: "",
      isAvialable: "",
    };
  },
  mounted() {
    this.roiIncomeReport();
  },
  mixins: [countryMixin],

  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    roiIncomeReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");

      setTimeout(function () {
        that.table = $("#binary-income-report").DataTable({
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
            // 'excelHtml5',
            /*'csvHtml5',
                            'pdfHtml5',*/
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "getdailybouns",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;
              let params = {
                // user_id: $('#user_id').val(),
                id: $("#user_id").val(),
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
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
            {
              data: { user_id: "user_id", fullname: "fullname" },
              render: function (data) {
                return `<span>${data.user_id}</span><span>(${data.fullname})</span>`;
              },
            },
            { data: "pin" },
            { data: "amount" },
            { data: "on_amount" },
            {
              data: "status",
              render: function (data) {
                return '<label class="text-success">' + data + "</label>";
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

            // {
            //     render: function (row) {
            //         return (row.entry_time === null || row.entry_time === undefined ||  row.entry_time === '')? '-' : moment(String(row.entry_time)).format('YYYY-MM-DD');

            //     }
            // }
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


     exportToExcel(){
                var params = {frm_date: $('#frm_date').val(), to_date: $('#to_date').val(),id: $('#user_id').val(),action:'export',responseType: 'blob' };
                axios.post('getdailybouns', params).then(resp => {
                    if(resp.data.code === 200){
                        //this.export_url = resp.data.data.excel_url;
                        var mystring = resp.data.data.data;
                        var myblob = new Blob([mystring], {
                            type: 'text/plain'
                        });

                        var fileURL = window.URL.createObjectURL(new Blob([myblob]));
                        var fileLink = document.createElement('a');

                        fileLink.href = fileURL;
                        fileLink.setAttribute('download', 'ROIincome.xls');
                        document.body.appendChild(fileLink);

                        fileLink.click();
                    }else{    
                        this.$toast.error(resp.data.message)
                    }    
                });
            },
        

    // exportToExcel() {
    //   var data = {
    //     frm_date: $("#frm_date").val(),
    //     to_date: $("#to_date").val(),
    //     id: $("#user_id").val(),
    //     action: "export",
    //     responseType: "blob",
    //   };
    //   this.$store.dispatch(ADMIN_DAILYBOUNS, data).then((resp) => {
    //     if (resp.code === 200) {
    //       var mystring = resp.data.data;
    //       var myblob = new Blob([mystring], {
    //         type: "text/plain",
    //       });

    //       var fileURL = window.URL.createObjectURL(new Blob([myblob]));
    //       var fileLink = document.createElement("a");

    //       fileLink.href = fileURL;
    //       fileLink.setAttribute("download", "ROIincome.xls");
    //       document.body.appendChild(fileLink);

    //       fileLink.click();
    //     } else {
    //       this.$toast.error(resp.message);
    //     }
    //   });
    // },
  },
};
</script>