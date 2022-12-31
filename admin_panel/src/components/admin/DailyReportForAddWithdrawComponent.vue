<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Daily Add Fund Report</h4>
            </div>
            <form id="searchFormfund">
              <div class="row">
                <div class="col-md-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-md-6 ">
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
                                  id="frm_datefund"
                                />
                                <!-- <input type="text" class="admin-form-control" placeholder="From Date" id="datepicker"> -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
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
                                  id="to_datefund"
                                />
                              </div>
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
                                id="onSearchClickfund"
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
                                id="onResetClickfund"
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
                      <th>Date</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Daily Withdrawal Report</h4>
            </div>
            <form id="searchFormwith">
              <div class="row">
                <div class="col-md-12">
                  <div class="panel panel-primary">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-md-6 ">
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
                                  id="frm_datewith"
                                />
                                <!-- <input type="text" class="admin-form-control" placeholder="From Date" id="datepicker"> -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label>To Date</label>
                            <div>
                              <div class="input-group">
                                <input
                                  type="date"
                                  class="admin-form-control"
                                  name="to_datewith"
                                  :format="dateFormat"
                                  placeholder="To Date"
                                  id="to_datewith"
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
                                id="onSearchClickwith"
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
                                id="onResetClickwith"
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
                  id="deposit-address-transaction2"
                  class="display nowrap"
                  style="width: 100%"
                >
                  <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>User Id</th>
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
import { serveApiUserHost } from "./../../../admin_config.js";

import moment from "moment";
import $ from "jquery";
import axios from 'axios';

// import NavigationComponent from "./NavigationComponent.vue";
export default {
        data() {
            return {
                user_id:'',
                fullname:'',
                isAvialable:'',
                frm_date : null,
                to_date : null,
                depositaddress : {},
                in_status:''
            }
        },
        components: {
            
        }, 
        mounted() {
            this.productReport();
             this.productReport2();
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
        }).catch()
    },
            dateFormat(date) {
                return moment(date).format('DD-MM-YYYY');
            },
            productReport(){
                let i = 0;
                let that = this;
                let token = localStorage.getItem('admin_token');
              
                setTimeout(function(){
                    const table1 = $('#deposit-address-transaction').DataTable({
                        responsive: true,
                        retrieve: true,
                        destroy: true,
                        processing: false,
                        serverSide: true,
                        stateSave: false,
                        ordering: false,
                        dom: 'Brtip',
                        lengthMenu: [[10, 50, 100], [10, 50, 100]],
                        buttons: [
                            // 'copyHtml5',
                           /* 'excelHtml5',
                            'csvHtml5',
                            'pdfHtml5',*/
                            'pageLength',
                        ],
                        // ajax: {
                        //     url: serveApiUserHost+'/getdepositaddrtrans',
                        //     type: 'POST',
                        //     data: function (d) {
                        //         i = 0;
                        //         i = d.start + 1;
                        //         let params = {
                        //             frm_date : $('#frm_date').val(),
                        //             to_date  : $('#to_date').val(),
                        //             id: $('#to_user_id').val(),
                        //         };
                        //         Object.assign(d, params);
                        //         return d;
                        //     },
                        //     headers: {
                        //       'Authorization': 'Bearer ' + token
                        //     },
                        //     dataSrc: function (json) {
                        //         if (json.code === 200) {
                        //             that.arrGetHelp = json.data.records;
                        //             
                        //             json['recordsFiltered'] = json.data.filterRecord;
                        //             json['recordsTotal'] = json.data.totalRecord;
                        //             return json.data.record;
                        //         } else {
                        //             
                        //             json['recordsFiltered'] = 0;
                        //             json['recordsTotal'] = 0;
                        //             return json;
                        //         }
                        //     }
                        // },
                         ajax: {
                            url: serveApiUserHost+'getDailyreport',
                            type: 'POST',
                            data: function (d) {
                                i = 0;
                                i = d.start + 1;

                                let params = {
                                    frm_date : $('#frm_datefund').val(),
                                    to_date  : $('#to_datefund').val(),
                                };
                                Object.assign(d, params);
                                return d;
                            },
                            headers: {
                              'Authorization': 'Bearer ' + token
                            },
                            dataSrc: function (json) {
                                if (json.code === 200) {
                                    that.arrGetHelp = json.data.records;
                                    
                                    json['recordsFiltered'] = json.data.recordsFiltered;
                                    json['recordsTotal'] = json.data.recordsTotal;
                                    return json.data.records;
                                } else {
                                    
                                    json['recordsFiltered'] = 0;
                                    json['recordsTotal'] = 0;
                                    return json;
                                }
                            }
                        },
                        columns: [
                            {
                                render: function () {
                                   // retur.row + 1;
                                   return i++;

                                }
                            },
                            {
                                render: function (data, type, row) {
                                    if (row.date === null || row.date === undefined || row.date === '') {
                                      return `-`;
                                    } else {
                                        return moment(String(row.date)).format('YYYY-MM-DD');
                                    }
                                }
                            }, 
                            { data: 'cr_sum' },  
                            // { data: 'WithdrawData' },  
                            
                        ]
                    });
                    $('#deposit-address-transaction').on('click','#deposite-address', function (){
                        //$('#deposit-address-model').modal();      
                        if (that.table.row($(this).parents('tr')).data() !== undefined) {
                            var data = that.table.row($(this).parents('tr')).data();
                            that.OnShowPinxClick(data);
                        } else {
                             data = that.table.row($(this)).data();
                            that.OnShowPinxClick(data);
                        }
                    });                    
                    $('#onSearchClickfund').click(function () {
                        table1.ajax.reload();
                    });
                    $('#onResetClickfund').click(function () {  
                        $('#searchFormfund').trigger("reset");
                        that.username = '';
                        that.isAvialable='';
                        table1.ajax.reload();
                    });
                },0);                
            },
             productReport2(){
                let i = 0;
                let that = this;
                let token = localStorage.getItem('admin_token');
              
                setTimeout(function(){
                    const table = $('#deposit-address-transaction2').DataTable({
                        responsive: true,
                        retrieve: true,
                        destroy: true,
                        processing: false,
                        serverSide: true,
                        stateSave: false,
                        ordering: false,
                        dom: 'Brtip',
                        lengthMenu: [[10, 50, 100], [10, 50, 100]],
                        buttons: [
                            // 'copyHtml5',
                           /* 'excelHtml5',
                            'csvHtml5',
                            'pdfHtml5',*/
                            'pageLength',
                        ],
                        // ajax: {
                        //     url: serveApiUserHost+'/getdepositaddrtrans',
                        //     type: 'POST',
                        //     data: function (d) {
                        //         i = 0;
                        //         i = d.start + 1;
                        //         let params = {
                        //             frm_date : $('#frm_date').val(),
                        //             to_date  : $('#to_date').val(),
                        //             id: $('#to_user_id').val(),
                        //         };
                        //         Object.assign(d, params);
                        //         return d;
                        //     },
                        //     headers: {
                        //       'Authorization': 'Bearer ' + token
                        //     },
                        //     dataSrc: function (json) {
                        //         if (json.code === 200) {
                        //             that.arrGetHelp = json.data.records;
                        //             
                        //             json['recordsFiltered'] = json.data.filterRecord;
                        //             json['recordsTotal'] = json.data.totalRecord;
                        //             return json.data.record;
                        //         } else {
                        //             
                        //             json['recordsFiltered'] = 0;
                        //             json['recordsTotal'] = 0;
                        //             return json;
                        //         }
                        //     }
                        // },
                         ajax: {
                            url: serveApiUserHost+'getDailyreport-for-withdraw',
                            type: 'POST',
                            data: function (d) {
                                i = 0;
                                i = d.start + 1;

                                let params = {
                                    frm_date : $('#frm_datewith').val(),
                                    to_date  : $('#to_datewith').val(), 
                                };
                                Object.assign(d, params);
                                return d;
                            },
                            headers: {
                              'Authorization': 'Bearer ' + token
                            },
                            dataSrc: function (json) {
                                if (json.code === 200) {
                                    that.arrGetHelp = json.data.records;
                                    
                                    json['recordsFiltered'] = json.data.recordsFiltered;
                                    json['recordsTotal'] = json.data.recordsTotal;
                                    return json.data.records;
                                } else {
                                    
                                    json['recordsFiltered'] = 0;
                                    json['recordsTotal'] = 0;
                                    return json;
                                }
                            }
                        },
                        columns: [
                            {
                                render: function () {
                                   // retur.row + 1;
                                   return i++;

                                }
                            },
                            {
                                render: function (data, type, row) {
                                    if (row.date === null || row.date === undefined || row.date === '') {
                                      return `-`;
                                    } else {
                                        return moment(String(row.date)).format('YYYY-MM-DD');
                                    }
                                }
                            }, 
                            { data: 'cr_sum' },  
                            // { data: 'WithdrawData' },  
                            
                        ]
                    });
                    $('#deposit-address-transaction2').on('click','#deposite-address', function (){
                        //$('#deposit-address-model').modal();      
                        if (that.table.row($(this).parents('tr')).data() !== undefined) {
                            var data = that.table.row($(this).parents('tr')).data();
                            that.OnShowPinxClick(data);
                        } else {
                            data = that.table.row($(this)).data();
                            that.OnShowPinxClick(data);
                        }
                    });                    
                    $('#onSearchClickwith').click(function () {
                        table.ajax.reload();
                    });
                    $('#onResetClickwith').click(function () {  
                        $('#searchFormwith').trigger("reset");
                        that.username = '';
                        that.isAvialable='';
                        table.ajax.reload();
                    });
                },0);                
            },
            OnShowPinxClick(data) {
                $('#deposit-address-model').modal();                 
                this.depositaddress = data;
            },
        }
    }
</script>