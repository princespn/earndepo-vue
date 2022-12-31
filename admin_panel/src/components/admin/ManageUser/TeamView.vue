<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="admin-card-header">
          <h4 class="card-title">Team View</h4>
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
                        <label>Sponser Id</label>
                        <input
                          class="admin-form-control"
                          placeholder="Enter Sponser id"
                          type="text"
                          id="leader_id"
                          f
                        />
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="control-label">Team</label>
                        <select class="admin-form-control" id="position">
                          <option value="">Select Team</option>
                          <option value="">All</option>
                          <option value="1">Left Team</option>
                          <option value="2">Right Team</option>
                        </select>
                      </div>
                    </div>
                    <div class="row mt-3" >
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
                          <!-- <button
                            type="button"
                            class="btn btn-info waves-effect waves-light ml-4"
                            @click="exportToExcel"
                          >
                            Export To Excel
                          </button> -->
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
          <div class="col-12">
            <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                 v-once
                  id="team-view-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
                      <th>Full Name</th>
                      <th>Sponser Id</th>
                      <th>Position</th>
                      <!--  <th>Product Name</th>-->
                      <th>Left Business</th>
                      <th>Right Business</th>
                      <th>Joining Date</th>
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
import countryMixin from "../../../mixins/countryMixin";
import $ from "jquery";
import moment from "moment";


export default {
  data() {
    return {
      user_id: "",
      fullname: "",
      isAvialable: "",
      user_data: [],
      products: [],
      length: 10,
      start: 0,
    };
  },
  mounted() {
    this.teamViewReport();
  },
 
  mixins: [countryMixin],
  methods: {
    dateFormat(date) {
      return moment(date).format("DD-MM-YYYY");
    },
    teamViewReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        const table = $("#team-view-report").DataTable({
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
            // 'copyHtml5',
            "excelHtml5",
            // "csvHtml5",
            "pdfHtml5",
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "getteamviews",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                frm_date: $("#frm_date").val(),
                to_date: $("#to_date").val(),
                user_id: $("#user_id").val(),
                sponsor_id: $("#leader_id").val(),
                position: $("#position").val(),
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
            { data: "user_id" },
            { data: "fullname" },
            { data: "sponser_id" },
            { data: "position" },
            /*{
                              render: function (data, type, row, meta) {
                                return row.product.name;
                              }
                            },*/
            { data: "left_bv" },
            { data: "right_bv" },
            {
              data: "joining_date",
              render: function (data) {
                if (data === null || data === undefined || data === "") {
                  return `-`;
                } else {
                  return moment(String(data)).format("YYYY-MM-DD");
                }
              },
            },

            /*{ data: 'cost' },
                            { data: 'bvalue' },*/
            /*{
                              render: function (data, type, row, meta) {
                                return '<label class="text-info">'+row.status+'</label>';
                              }
                            }*/
          ],
        });

        $("#onSearchClick").click(function () {
          table.ajax.reload();
        });

        $("#onResetClick").click(function () {
          // alert();
          $("#searchForm").trigger("reset");
          that.username = "";
          that.isAvialable = "";
          table.ajax.reload();
        });
      }, 0);
    },
  },
};
</script>