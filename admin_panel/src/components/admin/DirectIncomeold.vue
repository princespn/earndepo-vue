<template>
<div class="admin-content-body ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Direct Income Report</h4>
                    </div>
                    <div class="admin-card-body">
                        <div class="table-responsive admin-table">
                            <table id="example" class="display nowrap" style="width:100%">
                                <thead>
                                    <tr> 
                                            <th>Sr.No</th>
                                            <th>To User Id</th>
                                            <th>From User Id</th>
                                            <th>Amount</th>
                                            <th>Purchase Wallet Amount</th>
                                            <th>Wallet Amount</th>
                                            <th>Status</th>
                                            <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                      <tr  v-for="(item, i) in directIncomeData" :key="i">
                                        <td> {{i+1}}</td>
                                        <td> {{item.to_user_id}}({{item.to_fullname}})</td>
                                        <td> {{item.from_user_id}}({{item.from_fullname}})</td>
                                        <td> ${{item.amount}} </td>
                                        <td> ${{item.purchase_wallet_amount}} </td>
                                        <td> ${{item.working_wallet_amount}} </td>
                                        <td> {{item.status}} </td>
                                        <td> {{item.entry_time}} </td>
                                      </tr>
                                      <!-- <tr>
                                        <td>Tiger2</td>
                                        <td>Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>5421</td>
                                        <td>t.nixon@datatables.net</td>
                                        </tr>
                                        <tr>
                                        <td>Tiger3</td>
                                        <td>Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>5421</td>
                                        <td>t.nixon@datatables.net</td>
                                        </tr>
                                        <tr>
                                        <td>Tiger4</td>
                                        <td>Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>5421</td>
                                        <td>t.nixon@datatables.net</td>
                                    </tr> -->
                                </tbody>
                            </table>
                            <pagination v-model="page" :records="total" :per-page="perpage" @paginate="myCallback"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</template>


<script>



import $ from "jquery";
import { ADMIN_DIRECT_INCOME } from '@/adminstore/actions.type'

export default {
  name: "app",
  components: {
   
  },
  data() {
       return {
    step:false,
    start:0,
    // length:10,
    perpage:10,
    end:10,
    total:0,
    page:1,
    calpage:1,
    directIncomeData:[]
  }
  },
  mounted() {
    
    this.getLevelIncome(this.start,this.end);

  },
  methods: {
    getLevelIncome(start){
     

    var data={
    start: start,
    length:100,
    search:"",
        };
      this.$store
      .dispatch(ADMIN_DIRECT_INCOME, data)
      .then(response => {
        if (response.code === 200) {
           this.total=response.data.recordsTotal;
           this.directIncomeData=response.data.records;
          setTimeout(function(){
            $('#example').DataTable(
              {
                    dom: 'Bfrtip',
                        buttons: ['excel', 'csv', 'print'
                        ]
              }
            );
            },
              1000
           );
          console.log('direct income data ::',this.directIncomeData)
        } else {
          this.error = response.message
        }
      })
      .catch(error => {
        console.log(error)
      })
    }
  }

};
</script>