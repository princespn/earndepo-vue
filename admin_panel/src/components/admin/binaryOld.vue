<template>
<div class="admin-content-body ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Binary Income Report</h4>
                    </div>
                    <div class="admin-card-body">
                        <div class="table-responsive admin-table">
                            <table id="direct-income-report" class="display nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                            <th>Sr.No</th>
                                            <th>User Id</th>
                                            <th>Amount</th>
                                            <th>Left Business</th>
                                            <th>Right Business</th> 
                                            <th>Laps Amount</th>
                                            <th>Rank</th>
                                            <th>Income Percentage</th>
                                            <!-- <th>Laps Business</th>  -->
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
        wallet_id: 1
      },
      walletlists: {
        srno: "",
        name: ""
      }
    };
  },
  computed: {
    isCompleteLevelIncome() {
      return (
        this.levelincome.level_balance &&
        this.levelincome.level_income_balance &&
        this.levelincome.wallet_id
      );
    }
  },
  mounted() {
    this.getLevelIncome();
  },
  methods: {
    getLevelIncome() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function() {
        const table = $("#direct-income-report").DataTable({
          responsive: true,
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100]
          ],
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: false,
          ordering: true,
          dom: 'lrtip',
          ajax: {
            url: serveApiUserHost + "getbinaryincome",
            type: "POST",
            data: function(d) {
              i = 0;
              i = d.start + 1;

              let params = {
                // level_id : $('#level-id').val(),
              };
              Object.assign(d, params);
              return d;
            },
            headers: {
              Authorization: "Bearer " + token
            },
            dataSrc: function(json) {
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
            }
          },
          columns: [
              {                                
                                render: function () {
                                    {
                                        //return meta.row + 1;
                                        //return meta.row + meta.settings._iDisplayStart + 1;
                                        return i++;                                        
                                    }
                                }
                            },
                            // {
                            //     render: function (data, type, row, meta) {
                            //         return `<span>${row.to_user_id}</span><span>(${row.to_fullname})</span>`;
                            //     }
                            // },
                            // {
                            //     render: function (data, type, row, meta) {
                            //         return `<span>${row.from_user_id}</span><span>(${row.from_fullname})</span>`;
                            //     }
                            // },
                            { data: 'amount' },
                            { data: 'left_bv' },
                            { data: 'right_bv' },
                            { data: 'laps_amount' },
                            { data: "rank" },
                            { data: "percentage" },
                            { data: 'entry_time' },
                            // {
                            //     render: function (data, type, row, meta) {
                            //         if (row.entry_time === null || row.entry_time === undefined || row.entry_time === '') {
                            //           return `-`;
                            //         } else {
                            //             return moment(String(row.entry_time)).format('YYYY-MM-DD');
                            //         }
                            //     }
                            // },
                            // { data: 'tax_amount' },
                            // { data: 'amt_pin' },
                            // { data: 'net_amount' },
                            // {
                            //     render: function (data, type, row, meta) {
                            //         if (row.status === 'Paid') {
                            //             return `<label class="text-info">${row.status}</label>`;
                            //         } else {
                            //             return `<label class="text-warning">${row.status}</label>`;
                            //         }
                            //     }
                            // }
          ]
        });
        $("#search-box").click(function() {
          table.ajax.reload();
        });
      }, 0);
  }
  }
};
</script>