<template>
 <div v-if="token">
    <div id="main-wrapper">
       
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
import Navbar from "@/components/user/Navbar";
import Footer from "@/components/user/Footer";
import { GET_PROJECT_SETTING } from "@/store/actions.type";

export default {
  name: 'app',
    components: {
      Navbar,
      Footer
  },
  data() {
    return {
      objProSettings: {},
      token: "",
      isregister:false,
    
    };
  },
 computed: {
    currentRouteName() {

      if (this.$route.name == 'register' || this.$route.name == 'thankyou'|| this.$route.name == 'login' ) {
        return true;
      }else{
       return false;
      }
        
    }
    
},
  mounted() {

    this.getProSettings();
    this.token = localStorage.getItem("user-token"); 
      // var path = this.$router.options.routes;
 
     // var path = this.$router.name;
     
  },
  methods: {
     getProSettings() {
            this.$store
                .dispatch(GET_PROJECT_SETTING, {})
                .then((resp) => {
                    if (resp.code === 200) {
                        this.objProSettings = resp.data;
                        localStorage.setItem('profile-status', resp.data.profile_update_status);
                        localStorage.setItem('withdraw-status', resp.data.withdraw_update_status);
                        localStorage.setItem('transfer-status', resp.data.transfer_update_status);
                    }
                })
                .catch();
        },
  }
};
</script>
