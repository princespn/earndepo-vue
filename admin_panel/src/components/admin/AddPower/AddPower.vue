<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="admin-card-button">
          <button
            type="button"
            class="btn btn-primary waves-effect waves-light"
            @click="sendAdminOtp"
          >
            Send Otp
          </button>
          <p>Note :- Otp Valid 2 Hours</p>
        </div>
        <div class="col-6 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Add And Remove Business Amount</h4>
            </div>

            <div class="admin-card-body">
        <form id="change-user-password" @submit.prevent="">
                              <!-- <div class="col-md-5 col-md-offset-3"> -->
                                 <input type="hidden" name="user_id" v-model="user_id">
                                 <div class="form-group">
                                     <label>User Id</label>
                                    <input type="text" class="admin-form-control" id="username" placeholder="User Id" name="username"  v-model="username" v-on:keyup="checkUserExisted" data-vv-as="User Id">
                                    <!-- <div class="tooltip2" v-show="isAvialable == 'Not Available'">
                                       <div class="tooltip-inner">
                                          <span>{{ isAvialable }}</span>
                                       </div>
                                    </div> -->
                                     <p :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable!='' && username!=''">{{isAvialable}}</p>
                                     <span :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable == 'Available'"> {{user_id_ext}}   ( {{fullname_ext}}  )</span>
                                 
                                 </div>


                                 <div class="form-group">
                                     <label>Position</label>
                                    <select name="position" v-model="position" class="admin-form-control">
                                    <option selected value="">Select</option>
                                    <option value="2">Right</option>
                                    <option value="1">Left</option>
                                   <!--  <option v-for = "opt in optArr" value="opt."></option> -->
                                     <!--  <option  value="2">Right</option>
                                      <option  selected value="1">Left</option> -->
                                     
                                    </select> 
                                 
                                 </div>

                                 <div class="form-group">
                                    <label for="power bv">Power Business</label>
                                     <input type="text" class="admin-form-control" id="power_bv" name="power_bv" v-model="power_bv" placeholder="Enter BV" >
                                  
                                 </div>

                                 <div class="form-group">
                                     <label>Type</label>
                                    <select name="position" v-model="type" class="admin-form-control">
                                    <option selected value="">Select</option>
                                    <option value="1">Add Power only Id</option>
                                    <option value="3">Remove Power only Id</option>
                                    <option value="2">Add Power upto Admin</option>
                                    <option value="4">Remove Power upto Admin</option>
                                  
                                     
                                    </select> 
                              
                                 </div>
                                  <div class="form-group">
                                    <label>OTP</label>
                                       <input type="text" class="admin-form-control" id="otp" placeholder="Enter Otp" name="otp"  v-model="otp" data-vv-as="OTP ">
                                 </div>
                             
                            
                                 <div class="col-md-offset-5">
                                    <button :disabled="!isCompleteForm || disablebtn == true" type="button" class="btn btn-primary" name="signup1" value="Sign up" @click="addPower">Submit</button>
                                 </div>
                              <!-- </div> -->
                           </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import { ADMIN_OTP,ADD_POWER,CHECKUSEREXISTED} from "@/adminstore/actions.type";
export default {
    components: {
       
    },
    data() {
        return {
            user_id_ext: '',
                 fullname_ext: '',
          username:'',
          user_id:'',
          position:1,
          power_bv:'',
          isAvialable:'',
          user:'',
          id:'',
          disablebtn: false,
          pos_avl:'',
          optArr:{},
          optall: 0,
           type:1,
            otp:'',

          
        }
    },
    computed:{
            isCompleteForm(){
                return this.power_bv && this.otp;
            },
            
    },
    methods: {

            OtpValidation(e) {
                const OTP = e.target.value;
                var OTPl = OTP.replace(/ /g, "");
                if (OTPl == "") {
                    this.otpErr = "OTP should not be Blank.";
                } else {
                    this.otpErr = "";
                }
                },

       checkUserExisted(){
    
   var data = {user_id: this.username};

        this.$store
        .dispatch(CHECKUSEREXISTED, data)        
               .then(resp => {
                   if(resp.code === 200){
                       this.id = resp.data.id;
                       this.user_id = resp.data.user_id;
                       this.fullname = resp.data.fullname;
                       this.l_bv = resp.data.l_bv;
                       this.r_bv = resp.data.r_bv;
                       this.l_business = resp.data.l_business;
                       this.r_business = resp.data.r_business;
                       this.isAvialable = 'Available';

                       if(resp.data.power_lbv > 0){

                          this.optArr = {'value':1,'pos':'Left'};
                       }else if(resp.data.power_rbv > 0){
                          this.optArr= {'value':2,'pos':'Right'};
                          this.position=2;
                         
                       }else{

                           this.optall = 0;
                       } 
                      // alert(this.optArr.value);
                   } else {
                       this.user_id = '';
                       this.isAvialable = 'Not Available';
                   }
               }).catch(
              //    err => {
              //      this.$toast.error(err);
              //  }
               )
        },
        addPower() {
            this.disablebtn = true;
            this.username = '';

            var data = {
                        id: this.id,
                        position:this.position,
                        power_bv:this.power_bv,
                        type:this.type,
                        otp:this.otp,
                        };

               this.$store
            .dispatch(ADD_POWER, data)
            .then(response=>{
                if(response.code == 200) {
                    this.$toast.success(response.message)
                    this.disablebtn = false;
                    this.$router.push({name: 'power-report'});
                }else{
                    this.$toast.error(response.message)
                    this.pinvalid=false;
                    this.disablebtn = false;
                    this.message=response.message;
                }    

            }).catch(
            //    error=>{
            //     this.disablebtn = false;
            // }
            );
        },
    
    sendAdminOtp() { 
      var data = {type: 6};
       this.$store
      .dispatch(ADMIN_OTP, data)
      .then((resp) => {
        if (resp.code === 200) {
          this.$toast.success(resp.message);
        } else {
          this.$toast.error(resp.message);
        }
      });
    },
       
        
    }
}
</script>
