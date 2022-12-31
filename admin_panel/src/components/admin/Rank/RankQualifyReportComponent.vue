<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Qaulify Rank Report</h4>
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
                        <div class="col-md-4 ml-4">
                          <div class="form-group">
                            <label>Select Type</label>
                            <select class="form-control" id="rank_name">
                              <option value="" selected>Select</option>
                              <option v-bind:value="'All'">All</option>
                              <option
                                v-for="option in getTypes"
                                v-bind:value="option.rank"
                                :key="option"
                              >
                                {{ option.rank }}
                              </option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-4">
                          <div class="form-group">
                            <label class="control-label"
                              >Matching Income Status</label
                            >
                            <select
                              v-model="mathing_income_status"
                              name="mathing_income_status"
                              id="mathing_income_status"
                              class="form-control"
                            >
                              <option value="">Select Status</option>
                              <option value="Active">Active</option>
                              <option value="Inactive">Inactive</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-4 ml-4">
                          <div class="form-group">
                            <label class="control-label"
                              >Club Capping Status</label
                            >
                            <select
                              v-model="club_capping_status"
                              name="club_capping_status"
                              id="club_capping_status"
                              class="form-control"
                            >
                              <option value="">Select Status</option>
                              <option value="1">Achieved</option>
                              <option value="0">Not Achieved</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-4">
                          <div class="form-group">
                            <label class="control-label">User Status</label>
                            <select
                              v-model="user_status"
                              name="user_status"
                              id="user_status"
                              class="form-control"
                            >
                              <option value="">Select Status</option>
                              <option value="Active">Active</option>
                              <option value="Inactive">Inactive</option>
                            </select>
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
                            class="btn btn-info waves-effect waves-light ml-4"
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
                  id="total-rank-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <th>Full Name</th>
                      <th>Rank</th>
                      <th>Matching Income Status</th>
                      <th>Freedom Club Capping Status</th>
                      <th>User Status</th>
                      <th>Entry Time</th>
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
import { Get_All_Rank } from "@/adminstore/actions.type";

import $ from "jquery";
import moment from "moment";
import axios from 'axios'

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  components: {
    // NavigationComponent
    // Breadcrum
  },
  data() {
    return {
              user_id:'',
                fullname:'',
                isAvialable:'',
                provide_help_data  : [],
                length : 10,
                start  : 0,
                arrProducts:[],
                INR:'',
                ranks:[],
                getTypes:[],
                export_url:'',
 

    
    
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
    this.getTransactionType();
  },
  methods: {
     exportToExcel(){
                var params = {frm_date: $('#frm_date').val(), to_date: $('#to_date').val(),id: $('#user_id').val(),rank : $('#rank_name').val(),action:'export',responseType: 'blob' };
                axios.post('getqualifyranks', params).then(resp => {
                    if(resp.data.code === 200){
                        //this.export_url = resp.data.data.excel_url;
                        var mystring = resp.data.data.data;
                        var myblob = new Blob([mystring], {
                            type: 'text/plain'
                        });

                        var fileURL = window.URL.createObjectURL(new Blob([myblob]));
                        var fileLink = document.createElement('a');

                        fileLink.href = fileURL;
                        fileLink.setAttribute('download', 'qualifyrank_report.xls');
                        document.body.appendChild(fileLink);

                        fileLink.click();
                    }else{    
                        this.$toast.error(resp.data.message)
                    }    
                });
            },
    getTransactionType() {
      this.$store
        .dispatch(Get_All_Rank)
        .then((response) => {
          this.getTypes = response.data;
          //   console(this.getTypes);
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    getLevelIncome() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        const table = $("#total-rank-report").DataTable({
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
            url: serveApiUserHost + "getqualifyranks",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                //product_id: $('#product_id').val(),
                id: $("#user_id").val(),
                // rank: $("#rank_name").val(),
                /*  pin: $('#pin').val(),*/
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                mathing_income_status: $("#mathing_income_status").val(),
                club_capping_status: $("#club_capping_status").val(),
                user_status: $("#user_status").val(),
                // rank: $('#rank').val(),
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
                {
                  return i++;
                }
              },
            },
            { data: "user_id" },
            { data: "fullname" },
            // { data: 'pin' },
            { data: "rank" },
            { data: "maching_income_status" },
            { data: "club_capping_status" },
            { data: "user_status" },
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
          table.ajax.reload();
        });
        $("#rank_name").on("change", function () {
          //   alert("abhay");
          table.ajax.reload();
        });
        $("#onResetClick").click(function () {
          $("#searchForm").trigger("reset");
          that.username = "";
          that.isAvialable = "";
          table.ajax.reload();
        });
        $("#search-box").click(function () {
          table.ajax.reload();
        });
      }, 0);
    },
  },
};
</script>