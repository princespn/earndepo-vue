<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-10 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Bulk User Update</h4>
            </div>
            <div class="admin-card-body">
              <form class="row g-3">
                <div class="col-md-12">
                  <textarea
                    id="user_ids"
                    name="user_ids"
                    class="admin-form-control"
                    v-model="user_ids"
                    placeholder="Enter , Seperated UserID"
                  ></textarea>
                </div>
                <div class="col-md-6">
                  <input
                    type="text"
                    class="admin-form-control"
                    placeholder="Full Name"
                    v-model="fullname"
                  />
                </div>
                <div class="col-md-6">
                  <input
                    type="email"
                    class="admin-form-control"
                    placeholder="Email Id"
                    v-model="email"
                  />
                </div>
                <div class="col-md-6">
                  <input
                    type="text"
                    class="admin-form-control"
                    placeholder="Mobile"
                    v-model="mobile"
                  />
                </div>
                <div class="col-md-6">
                  <select
                    name="country"
                    class="admin-form-control"
                    v-model="country"
                    id="country"
                  >
                    <option value="">Select Country</option>
                    <option
                      v-for="country in countries"
                      v-bind:key="country.id"
                      v-bind:value="country.iso_code"
                    >
                      {{ country.country }}
                    </option>
                  </select>
                </div>
                <div class="col-md-6">
                  <input
                    type="text"
                    class="admin-form-control"
                    placeholder="New Password"
                    v-model="new_password"
                  />
                </div>
                <div class="col-md-6">
                  <input
                    type="text"
                    class="admin-form-control"
                    placeholder="Re-Enter Password"
                    v-model="retype_password"
                  />
                </div>
                <div class="form-group">
                  <div class="form-label-group">
                    Note:- Password must be more than 6 characters. It should
                    contain uppercase, lowercase, numerical and special
                    characters.
                  </div>
                </div>
                <div class="col-md-12 text-center">
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="updateBulkUsers()"
                  >
                    Submit
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import $ from "jquery";
import Swal from "sweetalert2";
import { GET_COUNTRY,UPDATE_BULK_USER} from '@/adminstore/actions.type';

export default {
  data() {
    return {
      fullname: "",
      mobile: "",
      email: "",
      new_password: "",
      retype_password: "",
      user_ids: "",
      isAvialable: "",
      isUserExit: "",
      isDisabledBtn: true,
      countries: [],
      country: "",
    };
  },
  computed: {
    isCompleteUserid() {
      return (
        this.user_ids &&
        (this.email ||
          this.mobile ||
          this.password ||
          this.fullname ||
          this.retype_password)
      );
    },
  },
  mounted() {
    this.getCountry();
  },
  methods: {
    getCountry() {
         this.$store
        .dispatch(GET_COUNTRY)
        .then((resp) => {
          if (resp.code === 200) {
            this.countries = resp.data;
          } else {
            this.$toast.error(resp.message);
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
    updateBulkUsers() {
      this.isDisabledBtn = false;
     new Swal({
        title: "Are you sure ?",
        text: "You want to update users",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
          var data= {
              mobile: this.mobile,
              fullname: this.fullname,
              email: this.email,
              user_ids: this.user_ids,
              password: this.new_password,
              country: this.country,
            };
            this.$store
            .dispatch(UPDATE_BULK_USER, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);

                this.$router.push({ name: "bulk-user-update-report" });
              } else {
                this.$toast.error(resp.message);
              }
              $("#update-users").trigger("reset");
            });
        }
      });
    },
  },
};
</script>