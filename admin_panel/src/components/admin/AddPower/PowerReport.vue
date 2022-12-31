<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">
        <div class="admin-card-header">
        <h4 class="page-title">Power BV Report</h4>
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

             <div class="admin-card-body">
              <div class="table-responsive admin-table">
                <table
                 v-once
                  id="manage-user-report"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                     <th>Sr.No</th>                            
                                            <th>User Id</th>
                                            <th>Full Name</th>
                                            <th>Power Business</th>
                                            <th>Position</th>
                                            <th>Before Left Business</th>
                                            <th>Before Right Business</th>
                                            <th>After Left Business</th>
                                            <th>After Right Business </th>
                                            <th>Before Curr Amt left Business</th>
                                            <th>Before Curr Amt Rght Business</th>
                                            <th>After Curr Amt left Business</th>
                                            <th>After Curr Amt Rght Business</th>          
                                            <th>Date</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
      </div>
    </div>
  </div>
</template>
<script>
import { serveApiUserHost } from "../../../../admin_config.js";
import moment from 'moment';
 import axios from 'axios';
 import $ from "jquery";


    export default {
        data() {
            return {
                 user_id:'',
                fullname:'',
                isAvialable:'',
                provide_help_data  : [],
                length : 10,
                start  : 0,
                filters:{
                	product_id:'',
	                cost:'',
	                b_value:'',
                },
                arrProducts:[],
                export_url:''
            }
        },
        mounted() {
            this.powerReport();
            
        },
        methods: {
            checkUserExisted(){
        axios.post('/checkuserexist',{
            user_id: this.username,
        }).then(resp => {
            if(resp.data.code === 200){
                this.user_id = resp.data.data.user_id;
                this.fullname = resp.data.data.fullname;
                this.isAvialable = 'Available';
            } else {
                this.user_id = '';
                this.isAvialable = 'Not Available';
            }
        }).catch(
        //   err => {
        //     this.$toaster.error(err);
        // }
        )
    },
            powerReport(){
                let i = 0;
                // let that = this;
                  let token = localStorage.getItem("admin_token");
                setTimeout(function(){
                    const table = $('#manage-user-report').DataTable({
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
                            url: serveApiUserHost+'power-report',
                            type: 'POST',
                            data: function (d) {
                                i = 0;
                                i = d.start + 1;

                                let params = {
                                    frm_date : $('#frm_date').val(),
                                    to_date  : $('#to_date').val(),
                                    user_id  : $('#user_id').val(),
                                    
                                };
                                Object.assign(d, params);
                                return d;
                            },
                            headers: {
                              'Authorization': 'Bearer ' + token
                            },
                            dataSrc: function (json) {
                                if (json.code === 200) {
                                    /*var totalSum = 0;
                                    for(var x in json.data.records){
                                        totalSum += parseFloat(json.data.records[x].amount);
                                    }*/
                                    //$('#totalSum').html(totalSum);
                                    json['recordsFiltered'] = json.data.recordsFiltered;
                                    json['recordsTotal'] = json.data.recordsTotal;
                                    return json.data.records;
                                    // console.log(json.data.records);
                                } else {
                                    $('#totalSum').html(0);
                                    json['recordsFiltered'] = 0;
                                    json['recordsTotal'] = 0;
                                    return json;
                                }
                            }
                        },
                        columns: [
                                {
                                render: function () 
                                {
                                    return i++;
                                },
                                },
                
                            { data: 'user' },
                            { data: 'fullname' },
                            { data: 'power_bv' },                            
                           {
                                render: function (data, type, row) {
                                    if (row.position == 1) {
                                      return 'Left';
                                    } else {
                                        return 'Right';
                                    }
                                }
                            },
                            { data: 'before_lbv' },
                            { data: 'before_rbv' },
                            { data: 'after_lbv' },
                            { data: 'after_rbv' },
                            { data: 'before_curr_lbv' },
                            { data: 'before_curr_rbv' },
                            { data: 'after_curr_lbv' },
                            { data: 'after_curr_rbv' },
                            {
                                render: function (data, type, row) {
                                    if (row.entry_time === null || row.entry_time === undefined || row.entry_time === '') {
                                      return `-`;
                                    } else {
                                        return moment(String(row.entry_time)).format('YYYY-MM-DD');
                                    }
                                }
                            },
                         
                        ]
                    });
                    $('#onSearchClick').click(function () {
                        table.ajax.reload();
                    });

                    $('#onResetClick').click(function () {
                        $('#searchForm').trigger("reset");
                        table.ajax.reload();
                    });
                },0);

          /*      $('#binary-income-report').on('click', '.pair_detail',function () {
                    that.$router.push({ 
                        name:'subbinaryincomereport',
                        params:{
                            id:$(this).data('id'),
                            payout_no:$(this).data('payoutid')
                        }
                    });
                });*/
            },

            exportToExcel(){
                var params = {frm_date: $('#frm_date').val(), to_date: $('#to_date').val(),user_id: $('#user_id').val(),action:'export',responseType: 'blob' };
                axios.post('bussiness-report', params).then(resp => {
                    if(resp.data.code === 200){
                        //this.export_url = resp.data.data.excel_url;
                        var mystring = resp.data.data.data;
                        var myblob = new Blob([mystring], {
                            type: 'text/plain'
                        });

                        var fileURL = window.URL.createObjectURL(new Blob([myblob]));
                        var fileLink = document.createElement('a');

                        fileLink.href = fileURL;
                        fileLink.setAttribute('download', 'bussiness-report.xls');
                        document.body.appendChild(fileLink);

                        fileLink.click();
                    }else{    
                        this.$toast.error(resp.data.message)
                    }    
                });
            }
        
        }
    }
</script>