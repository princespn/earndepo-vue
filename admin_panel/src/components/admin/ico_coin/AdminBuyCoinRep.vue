<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Admin Buy Token Rep</h4>
            </div>
            <form id="searchForm">
              <div class="row">
                <div class="col-md-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-md-5 ml-5">
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
                        <div class="col-md-5">
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
                      <th>Sr No</th>
                      <th>User Id</th>
                      <th>Token</th>
                      <th>Phase</th>
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
import countryMixin from "../../../mixins/countryMixin";
import $ from "jquery";

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
            url: serveApiUserHost + "getIcoAdminBuyRep",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;
              let params = {
                // user_id: $('#user_id').val(),
                id: $("#user_id").val(),
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                frompage: "user",
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
            /*{ data: 'amount' },*/
            {
              data: "coin",
              render: function (data) {
                return `<span>${data}</span>`;
              },
            },
            {
              data: "phase_name",
              render: function (data) {
                return `<span>${data}</span>`;
              },
            },

            {
              data: "entry_time",
              render: function (data) {
                if (data === null || data === undefined || data === "") {
                  return `-`;
                } else {
                  //return data;
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
  },
};
</script>