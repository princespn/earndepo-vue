<template>
<div class="admin-content-body ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Stop Direct Income</h4>
                    </div>
                    <div class="admin-card-body">
                        <div class="table-responsive admin-table">
                            <table  v-once id="direct-income-report" class="display nowrap" style="width:100%">
                                <thead>
                                    <tr>
		                                <th>Sr.No</th>
		                                <th>User Id</th>
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
    import $ from "jquery";
    import moment from 'moment';
    import { BLOCK_DIRECT_INCOME } from '@/adminstore/actions.type'
    import Swal from 'sweetalert2';

    export default {
        data() {
            return {
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
            this.stopDirectReport();
           // this.getProducts();
        },
        components: {
            
        },
        methods: {
            dateFormat(date) {
                return moment(date).format('DD-MM-YYYY');
            },
            stopDirectReport(){
                let i = 0;
                let that = this;
                let token = localStorage.getItem('admin_token');
                setTimeout(function(){
                    that.table = $('#direct-income-report').DataTable({
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
                            /*'excelHtml5',
                            'csvHtml5',
                            'pdfHtml5',*/
                            'pageLength',
                        ],
                        ajax: {
                            url: serveApiUserHost+'stop-direct-report',
                            type: 'POST',
                            data: function (d) {
                                i = 0;
                                i = d.start + 1;

                                let params = {
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
                                    {
                                        
                                        return i++;                                        
                                    }
                                }
                            },
                            {
                                data:"user_id",
                                render: function (data) {
                                    return `<span>${data}</span><span></span>`;
                                }
                            },
                            {
                                data:{direct_income_status:"direct_income_status",id:"id"},
                                render: function (data) {
                                    return `
                                            <label class="${(data.direct_income_status == 1)?'text-info':'text-warning'} waves-effect" id="changeStatus" data-id="${data.id}" data-status="${data.direct_income_status}">${(data.direct_income_status == 1)?'Unblock':'Unblock'}
                                            </label>`;
                                }
                            }
                        ]
                    });
                    $('#direct-income-report').on('click','#changeStatus',function () {
                        that.changeStatus($(this).data("id"),$(this).data("status"));
                    });
                },0);
            },
           
            reset() {
                this.product_id = this.cost = this.b_value = '';
            },

            changeStatus(id, direct_income_status){

               new Swal({
                    title: 'Are you sure?',
                    text: `You want to stop direct income!`,
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes'
                }).then((result) => {
                    if (result.value) {
                        var data= {id: id,direct_income_status: direct_income_status,}; 
                        this.$store
                        .dispatch(BLOCK_DIRECT_INCOME, data)
                        .then(resp => {
                            if(resp.code == 200){
                                this.$toast.success(resp.message);
                                // this.table.ajax.reload(); 
                                // table.ajax.reload();
                                document.location.reload();

                            } else {
                                this.$toast.error(resp.message);
                            }
                        }).catch()
                    }
                });
            },
        }
    }
</script>