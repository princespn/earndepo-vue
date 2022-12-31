<template>
<div class="admin-content-body ">
    <div class="container-fluid">
      
        <div class="row">
            <div class="col-12">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Run Cron</h4>
                    </div>
                      <form id="searchForm">
          <div class="row">
            <div class="col-md-12">
              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                   
                    <div class="col-md-4 ml-4">
                      <div class="form-group">
                        <label>Select Cron</label>
                        <div>
                          <div class="input-group">
                            <select class="form-control" id="select_cron" v-model="cron_name">
>
		                                             <option  value="" >Select Cron</option>
                                                     <option  :value="category.name" v-bind:key="category.id" v-for="category in AllCrons">{{category.cron_name}}</option>
		                                             <!-- <option  value="" >All</option>
		                                             <option  value="1" >Left Team</option>
		                                             <option  value="2" >Right Team</option> -->
					                                 
		                                        </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>Number of count</label>
                        <div>
                          <div class="input-group">
                             <input class="form-control" placeholder="Enter Cron Count" v-model="cron_run_count" type="text" id="number_of_count" >
                          </div>
                        </div>
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
                            @click="clickOnCat(cron_name)"
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
                            <table  v-once id="manage-user-report" class="display nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Sr.No</th>
                                        <th>Cron Signature</th> 
                                        <th>Cron Name</th> 
                                        <th>Running Status</th>
                                        <!-- <th>Remark</th> -->
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
// import {Get_ACTIVE_CRONS} from '@/adminstore/actions.type'


import $ from "jquery";
import moment from 'moment';
import axios from 'axios';

// import NavigationComponent from "./NavigationComponent.vue";
export default {
  components: {
    // NavigationComponent
    // Breadcrum
  },
  data() {
    return {
      INR: "",
      cron_name:'',
      cron_run_count:'',
      products: [],
      export_url:'',
      AllCrons:{},
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
    this.getAllCrons();
  },
  methods: {
      clickOnCat(cron_name){
                if(cron_name == 'cron:optimized_binary_qualify'){
                     this.cUrl = 'RunBinaryQualifyCron';
                }
                if(cron_name == 'cron:optimized_roi_dynamic'){
                     this.cUrl = 'RunCronRoiDynamic';
                }
                if(cron_name == 'cron:optimized_binary_income'){
                     this.cUrl = 'RunBinaryIncomeCron';
                }
                if(cron_name == 'cron:addpower_uptoadmin'){
                     this.cUrl = 'AddPowerUptoAdmin';
                }
                if(cron_name == 'cron:removepower_uptoadmin'){
                     this.cUrl = 'RemovePowerUptoAdmin';
                }
                // this.subCategories=[];    
                // alert(event.target.value);
                axios.post('/RunCronFromAdminSide',{
                    //status : 'Active',
                    cron_id : cron_name,
                    cron_run_count : this.cron_run_count,
                    cron_fun : this.cUrl
                })
                .then(resp => {
                    //alert(resp.data.code);
                    if(resp.data.code === 200){
                        // this.subCategories = resp.data.data;
                        this.$toast.success(resp.data.message);
                        this.table.ajax.reload();
                    }
                })
                .catch()
            },

        getAllCrons()
            {
                      axios.post('/getactivecrons',{
                            user_id: this.username,
                        }).then(resp => {
                            if(resp.data.code === 200){
                                this.AllCrons = resp.data.data.records;
                                // this.fullname = resp.data.data.fullname;
                                // this.isAvialable = 'Available';
                            } 
                        }).catch()
            },
    getLevelIncome() {
      // let i = 0;
      let that = this;
      let token = localStorage.getItem("admin_token");
      setTimeout(function() {
        const table = $("#manage-user-report").DataTable({
              responsive: true,
                        retrieve: true,
                        destroy: true,
                        processing: false,
                        serverSide: true,
                        stateSave: true,
                        ordering: false,
                        dom: 'Brtip',
                        lengthMenu: [[10, 50, 100], [10, 50, 100]],
                        buttons: [
                            // 'copyHtml5',
                           'excelHtml5',
                             /*'csvHtml5',
                            'pdfHtml5',*/
                            'pageLength',
                        ],
          ajax: {
            url: serveApiUserHost + "getcronrun",
            type: "POST",
            data: function(d) {
              // i = 0;
              // i = d.start + 1;

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
                            // {                                
                            //   render: function () {
                            //         {
                                       
                            //             return i++;                                        
                            //         }
                            //     }
                            // },
                            {
                                render: function (data, type, row, meta) {
                                    return meta.row + 1;
                                    // return i++;
                                }
                            },
                            { data: 'name'},
                            { data: 'cron_name' },
                            // { data: 'pin' },
                            // { data: 'run_status' },
                            {
                                data: "run_status",
                                render: function (data) {
                                    return `
                                            <label class="${(data.run_status == '0')?'text-info':'text-warning'} waves-effect">${(data.run_status == '0')?'Ideal':'Running'}
                                            </label>`;
                                }
                            },
                            // { data: 'position' },
                            //  {
                            //     data: "position",
                            //     render: function (data) {
                            //         if (data === 1) {
                            //           return `Left`;
                            //         } else {
                            //             return 'Right';
                            //         }
                            //     }
                            // },
                            // { data: 'before_bv'},
                            // { data: 'power_bv' },
                            // { data: 'after_bv'},
                            // { data: "rank" },
                            // { data: "percentage" },
                            {
                                 data: "entry_time",
                                render: function (data) {
                                    
                                    if (data === null || data === undefined || data === '') {
                                      return `-`;
                                    } else {
                                        return moment(String(data)).format('YYYY-MM-DD');
                                    }
                                }
                            },
                         
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