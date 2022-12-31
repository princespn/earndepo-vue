<template>
  <!-- Start content -->
<div class="admin-content-body ">
 <div class="container-fluid">  
  <div class="content">
    <div class="">
      <div class="page-header-title">
        <h4 class="page-title">Add Rank Power Upline</h4>
      </div>
    </div>

    <div class="page-content-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="panel panel-primary">
              <div class="panel-body">
                <div class="">
                  <form id="change-user-password" @submit.prevent="">
                    <div class="col-md-5 col-md-offset-3">
                     <input type="hidden" name="user_id" v-model="user_id">

                      <div class="form-group">
                        <label>User Id</label>
                        <input
                          type="text"
                          name="username"
                          class="form-control"
                          id="username"
                          placeholder="User Id"
                          v-model="username"
                          v-on:keyup="checkUserExisted"
                        />
                        <div class="clearfix"></div>
                           <p :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable!='' && username!=''">{{isAvialable}}</p>
                           <span :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable == 'Available'"> {{ username }}   {{ fullname }}</span>

                      </div>
                     <div class="form-group">
                        <label>Full name</label>
                           <input type="text" class="form-control" id="fullname" name="fullname" v-model="fullname" readonly>                        
                                     <!-- <div class="tooltip2" v-show="errors.has('fullname')">
                                       <div class="tooltip-inner">
                                          <span v-show="errors.has('fullname')">{{ errors.first('fullname') }}</span>
                                       </div>
                                    </div> -->
                                             
                     </div>
                      <div class="form-group">
                        <label>Select Rank</label>
                            <select class="form-control" id="rank_name" v-model="rank" name="rank">
                                 <option :value="null"  selected >Select</option>
                                 <option v-for="option in getTypes" v-bind:value="option.rank" :key="option"> {{ option.rank  }}</option> 
                           </select>
                            <!-- <div class="tooltip2" v-show="errors.has('rank')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('rank')">{{ errors.first('rank') }}</span>
                              </div>
                           </div> -->
                                             
                     </div>
                     <div class="form-group">
                        <label>Position</label>
                             <select name="position" v-model="position" class="form-control" @change="rankCount">
                                    <option selected value="">Select</option>
                                    <option value="r">Right</option>
                                    <option value="l">Left</option>
                                    </select> 
                            <!-- <div class="tooltip2" v-show="errors.has('position')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('position')">{{ errors.first('position') }}</span>
                              </div>
                           </div> -->
                                             
                     </div>
                     <div class="form-group">
                        <label>Rank Count</label>
                           <input name="rankname" class="form-control"  type="text"  v-model="rankname" readonly >
                           <!-- <div class="tooltip2" v-show="errors.has('rankname')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('rankname')">{{ errors.first('rankname') }}</span>
                              </div>
                           </div> -->
                          
                                             
                     </div>
                      <div class="form-group">
                        <label>Add Power</label>
                             <input type="text" class="form-control" id="power" name="power" v-model="power" placeholder="Enter Power">
                            <!-- <div class="tooltip2" v-show="errors.has('power')">
                              <div class="tooltip-inner">
                                 <span v-show="errors.has('power')">{{ errors.first('power') }}</span>
                              </div>
                           </div> -->
                          
                                             
                     </div>
                      <div class="col-md-offset-5">
                        <button type="button" class="btn btn-primary text-center" @click="addPower()">Submit</button>

                        <!-- <button
                          type="button"
                          class="btn btn-primary text-center"
                          @click="stopDirectIncome"
                          :disabled="!isComplete || !isDisabledBtn"
                        >
                          Submit
                        </button> -->
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <!-- panel-body -->
            </div>
            <!-- panel -->
          </div>
          <!-- col -->
        </div>
      </div>
    </div>
  </div>
 </div>
</div>
</template>

<script>
import Swal from "sweetalert2";
import {CHECKUSEREXISTED,Get_All_Rank,ADD_Rank_POWERUPLINE} from '@/adminstore/actions.type'
import axios from 'axios'


export default {
  data() {
    return {
      product_ids: {
        id: "",
        name: "",
      },
      topup: {
        user_id: "",
        rank: "",
        pin: "",
        product_id: null,
        hash_unit: "",
        payment_type: "BTC",
      },
      isAvialable: "",
      username: "",
      fullname: "",
      values: "",
      position:'',
      user:'',
      id:'',
      disablebtn: false,
      ranks:[],
      getTypes:[],
      power:0,
      rank:'',
      rankname:'', 
      getdata: {},
      arrProduct: [],
      min_hash: "",
      max_hash: "",
      isValid: true,
      usermsg: "",
      isDisabledBtn: true,
      franchise: {
      user_id: "",
      },
      masterfranchise: {
        user_id: "",
        id: "",
      },
      masterFranchiseList: [],
      //   countries:[],
      mflist: {},
    };
  },
  computed: {
    //
    isComplete() {
      return this.topup.user_id;
    },
  },
  mounted() {
     this.getTransactionType();
 
  },
  methods: {
     rankCount()
       {
            var position_rank = this.position;
            var rank_name_last = this.rank.toLowerCase().trim();
           
            if(rank_name_last == 'noble'){
               rank_name_last = 'ace';
            }

            if(rank_name_last == 'eques'){
               rank_name_last = 'herald';
            }

            if(rank_name_last == 'baron'){
               rank_name_last = 'guardian';
            }

            if(rank_name_last == 'comes'){
               rank_name_last = 'crusader';
            }

            if(rank_name_last == 'earl'){
               rank_name_last = 'commander';
            }

            if(rank_name_last == 'marchio'){
               rank_name_last = 'valorant';
            }

            if(rank_name_last == 'prorex'){
               rank_name_last = 'legend';
            }

            if(rank_name_last == 'knight'){
               rank_name_last = 'relic';
            }

            if(rank_name_last == 'archidux'){
               rank_name_last = 'almighty';
            }

            if(rank_name_last == 'magnus'){
               rank_name_last = 'conqueror';
            }

            if(rank_name_last == 'rexus'){
               rank_name_last = 'titan';
            }

            if(rank_name_last == 'imperator'){
               if(position_rank == 'l'){
                  rank_name_last = 'lmmortal';
               }else{
                   rank_name_last = 'immortal';
               }
               
            }
            
            var rank_last_name = position_rank+"_"+rank_name_last;
            axios.post('/getRankCount',{
                   rank_name: rank_last_name,
                    user_id: this.username,
               }).then(resp => {
                   if(resp.data.code === 200){
                      this.rankname=resp.data.data.rank_name; 
                  //  console.log(this.rankname);
                   }
               }).catch(err => {
                   this.$toast.error(err);
               })
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
     
      checkUserExisted() {
      var data = { user_id: this.username };
      this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
           if (resp.code === 200) {
            this.id = resp.data.id;
            this.user_id = resp.data.user_id;
            this.fullname = resp.data.fullname;
            this.isAvialable = "Available";
          } else {
            this.user_id = '';
            this.isAvialable = 'Not Available';
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    addPower() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to Add Power!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
             var data= {
                id: this.id,
                position:this.position,
                power:this.power,
                rank: this.rank,
             }; 
             this.$store
            .dispatch(ADD_Rank_POWERUPLINE, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
                this.$router.push({ name: "add-rank-power-upline-report" });
              } else {
                this.$toast.error(resp.message);
              }
              //$('#addTopUp').trigger("reset");
                this.username = "";
              this.topup = {
                user_id: "",
                rank: "",
              };
              this.isDisabledBtn = true;
            })
            .catch((err) => {
             
              this.$toast.error(err);
            });
        }
        
        else {
          this.isDisabledBtn = true;
        }
      });
    },
    hashvalidation() {
      if (
        this.topup.hash_unit < this.min_hash ||
        this.topup.hash_unit > this.max_hash
      ) {
        this.usermsg =
          "Amount should be on range " + this.min_hash + " to " + this.max_hash;
        this.isValid = false;
      } else {
        this.isValid = true;
        this.usermsg = "";
      }
    },
  },
};
</script>