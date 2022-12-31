<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-10 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Add Notification</h4>
            </div>
            <div class="admin-card-body">
              <div class="row">
                <div class="col-lg-12">
                  <div class="panel panel-primary">
                    <div class="panel-body masonry">
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
                                <div class="checkbox checkbox-primary">
                                  <!-- <input id="Dashboard" type="checkbox" (change)="onChange(ChildData.id, $event.target.checked)" [attr.checked]="(ChildData.is_assign=='Yes')? 'checked' : null">
						                          <label for="Dashboard">
						                            {{ChildData.menu}}
						                          </label> -->

                                  <input
                                    name="arrNavigationId[]"
                                    type="checkbox"
                                    :checked="
                                      ChildData.is_assign == 'Yes'
                                        ? 'checked'
                                        : null
                                    "
                                    :value="ChildData.id"
                                  />
                                  <label>
                                    {{ ChildData.menu }}
                                  </label>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </form>
                      <div class="text-center">
                        <button
                          class="btn btn-primary waves-effect waves-light"
                          type="button"
                          @click="updateChecked"
                        >
                          Update Rights
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import $ from "jquery";
import { GET_SUBADMIN, GET_ADMIN_NAV,ASSIGN_TO_ADMIN } from "@/adminstore/actions.type";
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
    //this.getSubadmins();
    this.getSubadminNavigation();
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
    updateChecked() {
      var arrNavigationId = $("input[name='arrNavigationId[]']:checked")
        .map(function () {
          return parseInt($(this).val());
        })
        .get()
        .join();

      var data = {
        navigations: { arrData: arrNavigationId },
        //id: this.selctedUser
      };

      this.$store
        .dispatch(ASSIGN_TO_ADMIN, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.$toast.success(resp.message);
            location.reload();
            // this.location.reload();
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