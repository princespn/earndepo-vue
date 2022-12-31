<template>
  <!-- Start content -->
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="content">
        <form>
          <div class="panel panel-color panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">User OTP Status</h3>
            </div>
            <div class="panel-body panel-border">
              <div class="form-group">
                <div class="row">
                  <span class="status-type">Profile Status</span>
                  <label class="switch">
                    <input
                      name="profile"
                      id="profile"
                      type="checkbox"
                      :checked="profile == 1 ? 'checked' : ''"
                      v-model="profile"
                    />
                   
                  </label>
                </div>
                <div class="row">
                  <span class="status-type">Withdraw Status</span>
                  <label class="switch">
                    <input
                      name="withdraw"
                      id="withdraw"
                      type="checkbox"
                      :checked="withdraw == 1 ? 'checked' : ''"
                      v-model="withdraw"
                    />
                   
                  </label>
                </div>
                <div class="row">
                  <span class="status-type">Transfer Status</span>
                  <label class="switch">
                    <input
                      name="transfer"
                      id="transfer"
                      type="checkbox"
                      :checked="transfer == 1 ? 'checked' : ''"
                      v-model="transfer"
                    />
                   
                  </label>
                </div>
                
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12"></div>
          </div>
        </form>
        <div class="text-center">
          <button
            class="btn btn-primary waves-effect waves-light"
            type="button"
            @click="updateChecked"
          >
            Update Status
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {
  GET_SUBADMIN,
  GET_ADMIN_NAV,
  GET_OTP_STATUS,
  CHANGE_OTP_STATUS
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      arrSubadmins: [],
      arrSubadminsNavigations: [],
      arrNavigationId: [],
      selctedUser: "",
      subadminDetails: {},
      profile: "",
      withdraw: "",
      transfer: "",
      
    };
  },
  mounted() {
    //this.getSubadmins();
    this.getSubadminNavigation();
    this.getOtpStatus();
  },
  methods: {
    getSubadmins() {
      this.$store
        .dispatch(GET_SUBADMIN)
        .then((resp) => {
          if (resp.code === 200) {
            this.arrSubadmins = resp.data;
          }
        })
        .catch((err) => {
          this.$toast.success(err);
        });
    },
    getSubadminNavigation() {
      this.$store
        .dispatch(GET_ADMIN_NAV)
        .then((resp) => {
          if (resp.code === 200) {
            this.arrSubadminsNavigations = resp.data.navigations;
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    getOtpStatus() {
      this.$store
        .dispatch(GET_OTP_STATUS)
        .then((resp) => {
          if (resp.code === 200) {
            this.profile = resp.data.profile_update_status;
            this.withdraw = resp.data.withdraw_update_status;
            this.transfer = resp.data.transfer_update_status;
           
          }
        })
        .catch((err) => {
          this.$toast.success(err);
        });
    },
    updateChecked() {
      var data = {
        profile: this.profile,
        withdraw: this.withdraw,
        transfer: this.transfer,
       
      };
      this.$store
        .dispatch(CHANGE_OTP_STATUS, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.$toast.success(resp.message);
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
  },
};
</script>