<template>
 <div v-if="token">
    <div id="admin-main-wrapper">
       
        <Navbar v-if="!currentRouteName"></Navbar>
        <router-view></router-view>
        <Footer v-if="!currentRouteName"></Footer>  
    </div>
  </div>

  <div v-else>
    <router-view></router-view>
  </div>
</template>
<script>
import Navbar from "@/components/admin/Navbar";
import Footer from "@/components/admin/Footer";


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
 computed: {
    currentRouteName() {

      if (this.$route.name == 'login' ) {
        return true;
      }else{
       return false;
      }
        
    }
    
},
  mounted() {

   
    this.token = localStorage.getItem("admin_token"); 
      // var path = this.$router.options.routes;
 
     // var path = this.$router.name;
     
  },
 
};
</script>
