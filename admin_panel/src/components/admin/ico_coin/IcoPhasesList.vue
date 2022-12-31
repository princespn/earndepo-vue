<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">All ICO Phases List</h4>
            </div>

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
                      <th>Phase Name</th>
                      <!--  <th>Start Date</th>
                                        <th>End Date</th> -->
                      <th>Total Coin</th>
                      <th>Sell Coin</th>
                      <th>Available Coin</th>
                      <th>Buy Min Coin</th>
                      <th>Coin Rate</th>
                      <th>Status</th>
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
            url: serveApiUserHost + "geticophases",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;
              let params = {
                // user_id: $('#user_id').val(),
                id: $("#user_id").val(),
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                frompage: "admin",
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
            { data: "name" },
            /* { data: 'from_date' },
                             { data: 'to_date' },*/
            { data: "total_supply" },
            { data: "sold_supply" },

            /*{ data: 'payment_type' },*/
            /*{ data: 'withdraw' },*/
            {
               data:{total_supply:'total_supply',sold_supply:'sold_supply'},  
              render: function (data) {
                return data.total_supply - data.sold_supply;
              },
            },
            { data: "min_coin" },
            { data: "usd_rate" },
            // { data: 'status' },
            {
                data:{status:'status'},
              render: function (data) {
                if (data.status == "Available") {
                  return `<span class="text-info" >Active</sapn>`;
                } else {
                  return `<span class="text-danger" >Inactive</sapn>`;
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