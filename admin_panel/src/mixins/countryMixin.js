

import axios from 'axios';
export default {
    methods: {
      getCountry() {
        axios
          .get("/getcountry")
          .then((resp) => {
            if (resp.data.code === 200) {
              this.arrCountry = resp.data.data;
            } else {
              this.$toast.error(resp.data.message);
            }
          })
          .catch((err) => {
            this.$toast.error(err);
          });
      }, 
         checkUserExisted() {
          axios
            .post("/checkuserexist", {
              user_id: this.username,
            })
            .then((resp) => {
              if (resp.data.code === 200) {
                this.user_id = resp.data.data.user_id;
                this.fullname = resp.data.data.fullname;
                this.isAvialable = "Available";
            
              } else {
                this.user_id = "";
                this.isAvialable = "Not Available";
                this.fullname = "";
              }
            })
            .catch();
        },
    }
  };