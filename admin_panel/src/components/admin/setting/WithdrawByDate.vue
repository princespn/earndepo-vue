<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-8 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Update Withdraw By Date</h4>
            </div>

            <div class="admin-card-body">
              <form id="addFund">
                <div class="col-md-7 col-md-offset-3">
                  <div class="form-group">
                    <label>Withdrawal By Status</label>
                    <p>
                      <label>
                        <input
                          type="radio"
                          name="on"
                          id="status"
                          v-model="status"
                          :value="'on'"
                          :selected="status == 'on'"
                        />
                        <span>ON</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input
                          type="radio"
                          name="off"
                          id="off"
                          v-model="status"
                          :value="'off'"
                          :selected="status == 'off'"
                        />
                        <span>OFF</span>
                      </label>
                    </p>
                  </div>

                  <div class="form-group">
                    <label>Date 1</label>
                    <input
                      type="text"
                      class="admin-form-control"
                      id="first_day"
                      name="first_day"
                      max="31"
                      v-model="first_day"
                      onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                      placeholder="Enter Date 1"
                    />
                  </div>

                  <div class="form-group">
                    <label for="username">Date 2</label>
                    <input
                      type="text"
                      class="admin-form-control"
                      id="second_day"
                      name="second_day"
                      max="31"
                      v-model="second_day"
                      onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                      placeholder="Enter Date 2"
                    />
                  </div>

                  <div class="form-group">
                    <label for="number">Date 3</label>
                    <input
                      type="text"
                      class="admin-form-control"
                      id="third_day"
                      name="third_day"
                      max="31"
                      v-model="third_day"
                      onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                      placeholder="Enter Date 3"
                    />
                  </div>
                  <div class="col-md-offset-5">
                    <button
                      type="button"
                      class="btn btn-primary text-center"
                      @click="withdraw_by_dates"
                      :disabled="!withdrawbydate || !errMsg"
                    >
                      Update
                    </button>
                  </div>
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

import {
  GETWITHDRAWDATE,
  WITHDRAW_BY_DATE
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      status: "",
      first_day: "",
      second_day: "",
      third_day: "",
      errMsg: true,
    };
  },
  computed: {
    withdrawbydate() {
      return this.first_day && this.second_day && this.third_day;
    },
  },
  mounted() {
    this.updatewithdrawdate();
  },
  methods: {
    updatewithdrawdate() {
        this.$store
        .dispatch(GETWITHDRAWDATE)
        .then((response) => {
          var setting = response.data;
          // alert(setting.sts);
          this.status = setting.sts;
          this.first_day = setting.first_day;
          this.second_day = setting.second_day;
          this.third_day = setting.third_day;
        })
        .catch((error) => {
          this.$toast.error(error);
        });
    },
    withdraw_by_dates() {
      var data={
          status: this.status,
          first_day: this.first_day,
          second_day: this.second_day,
          third_day: this.third_day,
        }

        this.$store
        .dispatch(WITHDRAW_BY_DATE, data)
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