<template>
 <!-- <div v-if="token"> -->
 <div>
    <div id="main-wrapper">
       <div class="wrapper">
        <!-- <Navbar v-if="!currentRouteName"></Navbar> -->
        <Navbar></Navbar>
        <router-view></router-view>
      </div>
      <!-- The Modal -->
        <div class="modal popup-wraper fade" id="logoutModal">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Logout</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
                 <div class="modal-wraper">
                     <p class="title-para">Do You Want To Logout ?</p>
                     <div class="btn-wraper d-flex justify-content-center">
                         <button type="button" class="btn btn-confirm">Yes</button>
                         <button type="button" class="btn btn-confirm">No</button>
                     </div>
                 </div>
              </div>
            </div>
          </div>
        </div> 
      <!-- <Footer v-if="!currentRouteName"></Footer>  -->
      <Footer></Footer>   
    </div>
  </div>

  <!-- <div v-else>
    <router-view></router-view>
  </div> -->
</template>
<script>
import Navbar from "@/components/user/Navbar";
import Footer from "@/components/user/Footer";


export default {
  name: 'app',
    components: {
      Navbar,
      Footer
  },
  data() {
    return {
      token: "",
      isregister:false,
    
    };
  },
 /*computed: {
    currentRouteName() {

      if (this.$route.name == 'register' || this.$route.name == 'thankyou'|| this.$route.name == 'login' ) {
        return true;
      }else{
       return false;
      }
        
    }
    
},*/
  mounted() {

   
    this.token = localStorage.getItem("user-token"); 
    // var path = this.$router.options.routes;
    // var path = this.$router.name;
  },
 
};
</script>
