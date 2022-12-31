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
	                        			<p :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable!='' && username!=''">{{isAvialable}}</p>
  											  	<span :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable == 'Available'"> {{ username }}   {{ fullname }}</span>
                                 
                                 </div>

                                  <div class="form-group"> 
                                                <label for="balance">Right Balance</label>
                                                <input type="text" class="admin-form-control" id="r_bv" name="r_bv" v-model="r_bv" placeholder="Right Balance" readonly="" >
                                   </div>

                                    <div class="form-group"> 
                                                <label for="balance">Left Balance </label>
                                                <input type="text" class="admin-form-control" id="l_bv" name="balance" v-model="l_bv" placeholder="Left Balance" readonly="" >
                                  </div>
                             

                                 <div class="form-group">
                                     <label>Position</label>
                                    <select name="position" v-model="position" class="admin-form-control">
                                    <option selected value="">Select</option>
                                    <option value="2">Right</option>
                                    <option value="1">Left</option>
                                     
                                    </select> 
                              
                                 </div>
                                  <div class="form-group"> 
                                                <label for="balance">Right Business</label>
                                                <input type="text" class="admin-form-control" id="r_business" name="r_business" v-model="r_business" placeholder="Right Business" readonly="" >
                                   </div>

                                    <div class="form-group"> 
                                                <label for="balance">Left Business </label>
                                                <input type="text" class="admin-form-control" id="l_business" name="l_business" v-model="l_business" placeholder="Left Business" readonly="" >
                                  </div>
                            <div class="form-group">
                                     <label>Select Business Type </label>
                                    <select name="position" v-model="type" class="admin-form-control">
                                    <option selected value="">Select</option>
                                    <option value="1">Add Business</option>
                                    <option value="3">Remove Business</option>            
                                    </select> 
                                 </div>
                             
                                 <div class="form-group">
                                    <label for="power bv">Enter Business</label>
                                     <input type="text" class="admin-form-control" id="power_bv" name="power_bv" v-model="power_bv" placeholder="Enter Business Amount">
                                 
                                 </div>

                                <div class="form-group">
                                                  <label>OTP</label>
                                                  <input
                                                    type="text"
                                                    class="admin-form-control"
                                                    id="otp"
                                                    placeholder="Enter Otp"
                                                    name="otp"
                                                    v-model="otp"
                                                    data-vv-as="OTP "
                                                    @blur="OtpValidation($event)"
                                                  />
                                                  <div v-if="otpErr !== ''" class="tooltip1">
                                                    <span class="text-danger"> {{ this.otpErr }}</span>
                                                  </div>
                                  </div>

                                  <div class="form-group"> 
                                                <label for="remark">Remark</label>
                                                <input type="text" class="admin-form-control" id="remark" name="remark" v-model="remark" placeholder="Remark" >
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
 import Swal from 'sweetalert2';
 import { ADMIN_OTP,ADD_BUSNIESS,CHECKUSEREXISTED} from "@/adminstore/actions.type";
//  import axios from 'axios';
export default {
    components: {
       
    },
    data() {
        return {
          otp: "",
          username:'',
          fullname:'',
          user_id:'',
          l_bv:'',
          r_bv:'',
          l_business:'',
          r_business:'',
          position:'',
          power_bv:'',
          isAvialable:'',
          user:'',
          id:'',
          disablebtn: false,
          pos_avl:'',
          optArr:{},
          optall: 0,
           type:'',
           remark:''

          
        }
    },
    computed:{
            isCompleteForm(){
                return this.power_bv && this.type;
            },
            
    },
    methods: {
    OtpValidation(e) {
      const OTP = e.target.value;
      var OTPl = OTP.replace(/ /g, "");
      if (OTPl == "") {
        this.otpErr = "OTP should not be blank.";
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
          if(this.type == '')
            {
                      this.$toast.error("Please Select Type")
                      this.disablebtn = 0;
                       /*$('#submit').prop('disabled', false);*/
                      return false;
                   }
            this.disablebtn = true;
            //this.username = '';
               new Swal({
                    title: 'Are you sure ?',
                    text: "You want to Change Bussiness!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes!',
                    cancelButtonText: 'Cancel'
                }).then((result) => {

              if (result.value) {
               var data = {id: this.id,
                position:this.position,
                power_bv:this.power_bv,
                type:this.type,
                otp:this.otp,
                remark:this.remark};

               this.$store
        .dispatch(ADD_BUSNIESS, data)
            .then(response=>{
                if(response.code == 200) {
                    this.$toast.success(response.message)
                    this.disablebtn = false;
                    this.$router.push({name: 'addbussiness-report'});
                }else{
                    this.$toast.error(response.message)
                    this.pinvalid=false;
                    this.disablebtn = false;
                    this.message=response.message;
                }    

            }).catch(
            //   error=>{
            //     this.disablebtn = false;
            // }
            );

          }
               });  
        },

          sendAdminOtp() { 
      var data = {type: 9};
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