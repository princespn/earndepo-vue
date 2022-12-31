<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Setting Fund Report</h4>
            </div>
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                 v-once
                  id="total-sell-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr No</th>
                      <th>User Id</th>
                      <th>Amount</th>
                      <th>Status</th>
                      <th>Remark</th>
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
import { serveApiUserHost } from "../../../admin_config.js";

import $ from "jquery";
import moment from "moment";

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  components: {
    // NavigationComponent
    // Breadcrum
  },
  data() {
    return {
      INR: "",
      type: "",
      levelincome: {
        level_balance: "",
        level_income_balance: "",
        wallet_id: 1,
      },
      walletlists: {
        srno: "",
        name: "",
      },
    };
  },
  computed: {
    isCompleteLevelIncome() {
      return (
        this.levelincome.level_balance &&
        this.levelincome.level_income_balance &&
        this.levelincome.wallet_id
      );
    },
  },
  mounted() {
    this.getLevelIncome();
  },
  methods: {
    getLevelIncome() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        const table = $("#total-sell-report").DataTable({
          responsive: true,
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: true,
          ordering: false,
          dom: "Brtip",
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          buttons: [
            // 'copyHtml5',
            "excelHtml5",
            /*'csvHtml5',
                            'pdfHtml5',*/
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "setting_fund_report",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                // level_id : $('#level-id').val(),
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
                json["draw"] = json.data.draw;
                json["recordsFiltered"] = json.data.recordsFiltered;
                json["recordsTotal"] = json.data.recordsTotal;
                return json.data.records;
              } else {
                json["draw"] = 0;
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
            { data: "amount" },
            // { data: 'pin' },
            { data: "status" },
            { data: 'admin_remark' },
            
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
        $("#search-box").click(function () {
          table.ajax.reload();
        });
      }, 0);
    },
  },
};
</script>