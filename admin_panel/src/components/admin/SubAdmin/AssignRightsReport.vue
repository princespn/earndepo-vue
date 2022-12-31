	<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Assign Rights Report</h4>
            </div>
            <div class="admin-card-body">
              <div class="col-md-6 col-md-offset-3 col-xs-12">
                <div class="form-group">
                  <label>Select Sub Admin</label>
                  <select
                    class="admin-form-control"
                    name="department"
                    v-model="selctedUser"
                    @change="onSelectAdminClick"
                  >
                    <option selected="" value="">Select SubAdmin</option>
                    <option
                      :value="subadmin.id"
                      v-bind:key="subadmin.id"
                      v-for="subadmin in arrSubadmins"
                    >
                      {{ subadmin.fullname }}
                    </option>
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br />
      <div class="admin-card" v-if="selctedUser">
        <div class="admin-card-body">
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-offset-3 col-md-10">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered">
                    <tbody>
                      <tr>
                        <td>
                          <strong>Name</strong>
                        </td>
                        <td>{{ subadminDetails.fullname }}</td>
                      </tr>
                      <tr>
                        <td>
                          <strong>Mobile No</strong>
                        </td>
                        <td>{{ subadminDetails.mobile }}</td>
                      </tr>
                      <tr>
                        <td>
                          <strong>Email Id</strong>
                        </td>
                        <td>{{ subadminDetails.email }}</td>
                      </tr>
                      <tr>
                        <td>
                          <strong>Sub Admin ID</strong>
                        </td>
                        <td>{{ subadminDetails.user_id }}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br />
      <div class="admin-card" v-if="selctedUser">
        <div class="admin-card-body">
          <div class="col-md-offset-3 col-md-12">
            <form>
              <div class="row">
                <div
                  class="panel panel-color panel-primary"
                  v-for="ParentData of arrSubadminsNavigations"
                  v-bind:key="ParentData.parentmenu.id"
                >
                  <div class="panel-heading">
                    <h3 class="panel-title">
                      {{ ParentData.parentmenu.parent_menu }}
                    </h3>
                  </div>
                  <div
                    class="panel-body panel-border"
                    v-if="ParentData.childmenu.length > 0"
                  >
                    <div
                      class="form-group"
                      v-for="ChildData of ParentData.childmenu"
                      v-bind:key="ChildData.id"
                    >
                      <div class="checkbox-primary">
                        <label>
                          {{ ChildData.menu }}
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { GET_SUBADMIN, GET_SUBADMIN_NAV } from "@/adminstore/actions.type";
export default {
  data() {
    return {
      arrSubadmins: [],
      arrSubadminsNavigations: [],
      arrNavigationId: [],
      selctedUser: "",
      subadminDetails: {},
    };
  },
  mounted() {
    this.getSubadmins();
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
    onSelectAdminClick() {
      for (let i = 0; i < this.arrSubadmins.length; i++) {
        if (this.arrSubadmins[i].id == this.selctedUser) {
          this.subadminDetails = this.arrSubadmins[i];
          break;
        }
      }
      this.getSubadminNavigation();
    },
    getSubadminNavigation() {
      var data = { id: this.selctedUser, status: "active" };
      this.$store
        .dispatch(GET_SUBADMIN_NAV, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.arrSubadminsNavigations = resp.data.navigations;
              
            /*Array.prototype.forEach.call(this.arrSubadminsNavigations, parent => {
			              Array.prototype.forEach.call(parent.childmenu, child => {
			                if (child.is_assign == 'Yes') {
			                  this.onChange(child.id, true);
			                }
			              });
			            });*/
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