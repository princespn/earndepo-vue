<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Enquiry Reports</h4>
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
                  id="enquiries-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>Fullname</th>
                      <th>Email</th>
                      <th>Mobile</th>

                      <th>Subject</th>
                      <th>Message</th>
                      <th>Entry Date</th>
                      <th>Action</th>
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
import "bootstrap/dist/css/bootstrap.min.css";
import "datatables.net-bs4";
import "datatables.net-bs4/css/dataTables.bootstrap4.min.css";
import "datatables.net-buttons-bs4";
import "datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css";
import { serveApiUserHost } from "../../../admin_config.js";
// import countryMixin from "../../../mixins/countryMixin";

import $ from "jquery";
import moment from "moment";
// import axios from "axios";

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  components: {
    // NavigationComponent
    // Breadcrum
  },
  data() {
    return {
      users: {},
    };
  },
  computed: {},
  mounted() {
    this.enquiryReport();
    //this.enquiries_report_page_vigit();
  },
  //   mixins: [countryMixin],
  methods: {
    enquiryReport() {
      let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function () {
        const table = $("#enquiries-report").DataTable({
          responsive: true,
          lengthMenu: [
            [10, 50, 100],
            [10, 50, 100],
          ],
          retrieve: true,
          destroy: true,
          processing: false,
          serverSide: true,
          stateSave: true,
          ordering: false,
          dom: "Brtip",

          buttons: [
            // 'copyHtml5',
            "excelHtml5",
            /*'csvHtml5',
                            'pdfHtml5',*/
            "pageLength",
          ],
          ajax: {
            url: serveApiUserHost + "enquiries",
            type: "POST",
            data: function (d) {
              i = 0;
              i = d.start + 1;

              let params = {
                // user_id: $('#user_id').val(),
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
                {
                  return i++;
                }
              },
            },
            { data: "fullname" },
            { data: "email" },
            { data: "mobile" },

            { data: "subject" },
            { data: "message" },
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
            //  {
            //   data: { id: "id", status: "status" },
            //   render: function (data) {
            //     return `<a class="myProfile" title="Profile" data-id="${
            //       data.id
            //     }">
            //                                     <i class="fa fa-user font-16"></i>
            //                                 </a>&nbsp;
            //                                 <a class="editmyProfile" data-id="${
            //                                   data.id
            //                                 }" title="Edit">
            //                                     <i class="fa fa-pencil font-16"></i>
            //                                 </a><br>
            //                                 <label class="${
            //                                   data.status == "Active"
            //                                     ? "text-info"
            //                                     : "text-warning"
            //                                 } waves-effect" id="changeStatus" data-id="${
            //       data.id
            //     }" data-status="${data.status}">${
            //       data.status == "Active" ? "Block" : "Unblock"
            //     }
            //                                 </label>`;
            //   },
            // },
             {
                                render: function (data, type, row) {
                                    return `<label type="button" class="text-info btn-sm waves-effect enquiry-reply" title=`+row.email+`> Send Reply</label>`
                                }
                            }
          ],
        });
            $('#enquiries-report').on('click', '.enquiry-reply',function () {
 
                    //console.log(data);
                   // parent
                    that.$router.push({ 
                        name:'send-reply',
                         params:{
                                id:$(this).attr( "title" ),
                            }
                    });
                    
                });
                  
        $("#search-box").click(function () {
          table.ajax.reload();
        });

        $("#onSearchClick").click(function () {
          table.ajax.reload();
        });

        $("#onResetClick").click(function () {
          $("#searchForm").trigger("reset");
          that.username = "";
          that.isAvialable = "";
          table.ajax.reload();
        });
        //  enquiries_report_page_vigit()
        //  {
        //         axios.get(serveApiUserHost+'/send-enquiry-count-zero').
        //         // then(response => {
                
        //         // }).catch({
               
        //         // });

        //     }
          
      }, 0);
    },
  },
};
</script>