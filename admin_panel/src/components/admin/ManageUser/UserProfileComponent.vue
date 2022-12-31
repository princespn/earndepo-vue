<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="admin-card">

	 
	    <div>
	      <h4 class="page-title ml-4 mt-4" > View Profile </h4>
	    </div>
	 

	  <div class="page-content-wrapper ">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-12 col-sm-3">
	          <div class="panel panel-primary">
	            <div class="panel-body add-new">
	              <router-link class="btn btn-primary waves-effect waves-light pull-right" to="/user/manage-user-account">
	                <i class="fa fa-mail-reply"></i> &nbsp;Back
	              </router-link>
	            </div>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-sm-6">
	          <div class="panel panel-color panel-primary">
	            <div class="panel-heading">
	              <h3 class="panel-title">Personal Details {{userProfileData.user_id}}</h3>
	            </div>
	            <div class="panel-body panel-border">
	              <div class="table-responsive">
	                <table class="table table-striped table-bordered">
	                  <tbody>
	                    <tr>
	                      <td>
	                        <strong>Date Of Joining </strong>
	                      </td>
	                      <td>{{userProfileData.entry_time}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>User Id</strong>
	                      </td>
	                      <td>{{userProfileData.user_id}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Sponsor Id</strong>
	                      </td>
	                      <td>{{userProfileData.sponsor_id}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Full Name</strong>
	                      </td>
	                      <td>{{userProfileData.fullname}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Position</strong>
	                      </td>
	                      <td>{{userProfileData.position}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Mobile</strong>
	                      </td>
	                      <td>{{userProfileData.mobile}}</td>
	                    </tr>
	                   <!--  <tr>
	                      <td>
	                        <strong>Nominee Name</strong>
	                      </td>
	                      <td>{{userProfileData.nominee_name}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong> Nominee Relation</strong>
	                      </td>
	                      <td>{{userProfileData.relation}}</td>
	                    </tr> -->
	                    <tr>
	                      <td>
	                        <strong> Email</strong>
	                      </td>
	                      <td>{{userProfileData.email}}</td>
	                    </tr>
	                    <!-- <tr>
	                      <td>
	                        <strong> BTC Address</strong>
	                      </td>
	                      <td>{{userProfileData.btc_address}}</td>
	                    </tr> -->
	                   <!--  <tr>
	                      <td>
	                        <strong> City</strong>
	                      </td>
	                      <td>{{userProfileData.city}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong> State</strong>
	                      </td>
	                      <td>{{userProfileData.state}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong> Country</strong>
	                      </td>
	                      <td>{{userProfileData.country}}</td>
	                    </tr> -->
	                    <!-- <tr>
	                      <td>
	                        <strong> Insurance Amount</strong>
	                      </td>
	                      <td>{{userProfileData.insurance_amt}}</td>
	                    </tr> -->
	                  </tbody>
	                </table>
	              </div>
	            </div>
	          </div>

	          <!-- panel -->
	        </div>

	        <div class="col-sm-6">


	          <div class="panel panel-color panel-dark">
	            <div class="panel-heading">
	              <h3 class="panel-title">BTC Information</h3>
	            </div>
	            <div class="panel-body panel-border">
	              <div class="table-responsive">
	                <table class="table table-striped table-bordered">
	                  <tbody>
	                  	 <tr>
	                      <td>
	                        <strong> BTC Address</strong>
	                      </td>
	                      <td>{{userProfileData.btc_address}}</td>
	                    </tr>
	                    	 <tr>
	                      <td>
	                        <strong> TRN Address</strong>
	                      </td>
	                      <td>{{userProfileData.trn_address}}</td>
	                    </tr>
	                    	 <tr>
	                      <td>
	                        <strong> ETH Address</strong>
	                      </td>
	                      <td>{{userProfileData.ethereum}}</td>
	                    </tr>
	                    	 <tr>
	                      <td>
	                        <strong> BNB Address</strong>
	                      </td>
	                      <td>{{userProfileData.bnb_address}}</td>
	                    </tr>
	                   <!--  <tr>
	                      <td>
	                        <strong>Bank Account Number</strong>
	                      </td>
	                      <td>{{userProfileData.account_no}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>A/C Name</strong>
	                      </td>
	                      <td>{{userProfileData.holder_name}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Bank Name</strong>
	                      </td>
	                      <td>{{userProfileData.bank_name}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Bank Branch Name</strong>
	                      </td>
	                      <td>{{userProfileData.branch_name}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Bank IFSC Code</strong>
	                      </td>
	                      <td>{{userProfileData.ifsc_code}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>PAN Number</strong>
	                      </td>
	                      <td>{{userProfileData.pan_no}}</td>
	                    </tr> -->
	                   <!--  <tr>
	                      <td>
	                        <strong>Paytm Number</strong>
	                      </td>
	                      <td>{{userProfileData.paytm_no}}</td>
	                    </tr>
	                    <tr>
	                      <td>
	                        <strong>Tez Number</strong>
	                      </td>
	                      <td>{{userProfileData.payzapp_no}}</td>
	                    </tr> -->
	                    <!-- <tr>
	                      <td>
	                        <strong>Account Type</strong>
	                      </td>
	                      <td>{{userProfileData.account_type}}</td>
	                    </tr> -->
	                  </tbody>
	                </table>
	              </div>
	            </div>
	          </div>

	          <!-- panel -->
	        </div>
	        <!-- col -->
	      </div>
	      <!-- End row -->

	      <!-- Inline Form -->

	    </div>
	    <!-- container -->

	  </div>
	  <!-- Page content Wrapper -->

	</div>
		</div>
			</div>

	<!-- content -->
</template>

<script>
    
 
import { VIEW_PROFILE } from '@/adminstore/actions.type'


    export default {
    	
        data() {
            return {
                userProfileData: {
                    id: '',
                    user_id: '',
                    sponsor_id: '',
                    fullname: '',
                    dob: '',
                    nominee_name: '',
                    relation: '',
                    email: '',
                    country: '',
                    contact_number: '',
                    state: '',
                    city: '',
                    account_no: '',
                    holder_name: '',
                    bank_name: '',
                    branch_name: '',
                    pan_no: '',
                    ifsc_code: '',
                    paytm_no: '',
                    payzapp_no: '',
                    insurance_amt: '',
                    mobile:'',
                    entry_time:'',
                    btc_address:'',
                    ethereum:'',
                    bnb_address:'',
                    trn_address:'',
                }
            }
        },
        mounted() {
            this.getUserDetails();
        },
        methods: {
            getUserDetails(){
				var data = {id: this.$route.params.id };
                this.$store
                .dispatch(VIEW_PROFILE, data)
				.then(resp => {
                    if(resp.code === 200){
                        this.userProfileData = {
                            id: resp.data.id,
                            user_id: resp.data.user_id,
                            sponsor_id: resp.data.ref_user_id,
                            fullname: resp.data.fullname,
                            dob: resp.data.dob,
                            mobile: resp.data.mobile,
                            nominee_name: resp.data.nominee_name,
                            relation: resp.data.relation,
                            email: resp.data.email,
                            country: resp.data.country,
                            contact_number: resp.data.contact_number,
                            state: resp.data.state,
                            city: resp.data.city,
                            account_no: resp.data.account_no,
                            holder_name: resp.data.holder_name,
                            bank_name: resp.data.bank_name,
                            branch_name: resp.data.branch_name,
                            pan_no: resp.data.pan_no,
                            ifsc_code: resp.data.ifsc_code,
                            entry_time: resp.data.entry_time,
                            position: resp.data.position,
                            ethereum: resp.data.ethereum,
                            btc_address: resp.data.btc_address,
                            bnb_address: resp.data.bnb_address,
                            trn_address: resp.data.trn_address
                        }
                    } else {
                        this.$toast.error(resp.message);
                    }
                }).catch(err => {
                    this.$toast.error(err);
                })
            }
        }
    }
</script>