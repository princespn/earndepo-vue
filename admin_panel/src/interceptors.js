import axios from 'axios';

export default function setup() {
    axios.interceptors.request.use(function (config) {
        const token = localStorage.getItem('admin_token');
        console.log(token);
        if (token != null) {
            config.headers.Authorization = "Bearer " + token;
        }
        return config;
    }, function (err) {
        return Promise.reject(err);
    });

    axios.interceptors.response.use(function (config) {
        if (config.data.code == 403 || config.data.message == 'Already login in other device') { 
          localStorage.removeItem('admin_token');
          localStorage.removeItem('admin_token');
          localStorage.clear();
          setTimeout(function() { 
          this.$router.push({ name: "login" });
          }, 1000); 
          setTimeout(function() { 
              location.reload();
          }, 1500); 


      }else{
          return config;
      }
      
  }, function (err) {
      if (err.response.status == 401 || err.response.status == 403) {
          localStorage.clear();
          localStorage.removeItem('admin_token');
          setTimeout(function() { 
              this.$router.push({ name: "login" });
              }, 1000);
              setTimeout(function() { 
                  location.reload();
              }, 1500); 
  
          //return;
      }
  });
}