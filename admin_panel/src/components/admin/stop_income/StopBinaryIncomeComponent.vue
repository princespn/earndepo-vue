<template>
  <!-- Start content -->
<div class="admin-content-body ">
 <div class="container-fluid">
  <div class="content">
    <div class="">
      <div class="page-header-title">
        <h4 class="page-title">Stop Binary Income</h4>
      </div>
    </div>

    <div class="page-content-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="panel panel-primary">
              <div class="panel-body">
                <div class="">
                  <form id="addTopUp">
                    <div class="col-md-5 col-md-offset-3">
                      <input
                        type="hidden"
                        name="user_id"
                        v-model="topup.user_id"
                      />
                      <div class="form-group">
                        <label>User Id</label>
                        <input
                          type="text"
                          name="username"
                          class="form-control"
                          id="username"
                          placeholder="User Id"
                          v-model="username"
                          v-on:keyup="checkUserExisted" 
                        />
                        <p :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable!='' && username!=''">{{isAvialable}}</p>
                 			  <span :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable == 'Available'"> {{ username }}   ({{ fullname }})</span>
                        <!-- <div class="clearfix"></div>
                        <p
                          :class="{
                            'text-success': isAvialable == 'Available',
                            'text-danger': isAvialable == 'Not Available',
                          }"
                          v-if="isAvialable != '' && username != ''"
                        >
                          {{ isAvialable }}
                        </p> -->
                      </div>
                      <div class="col-md-offset-5">
                        <button
                          type="button"
                          class="btn btn-primary text-center"
                          @click="stopBinaryIncome"
                          :disabled="!isComplete || !isDisabledBtn"
                        >
                          Submit
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <!-- panel-body -->
            </div>
            <!-- panel -->
          </div>
          <!-- col -->
        </div>
      </div>
    </div>
  </div>
 </div>
</div> 
</template>

<script>
import Swal from "sweetalert2";

import { BLOCK_BINARY_INCOME,CHECKUSEREXISTED } from '@/adminstore/actions.type'
export default {
  data() {
    return {
      user_id:'',
      fullname:'',
      isAvialable:'',
      product_ids: {
        id: "",
        name: "",
      },
      topup: {
        user_id: "",
        pin: "",
        product_id: null,
        hash_unit: "",
        payment_type: "BTC",
      },
      
      username: "",
      values: "",
      getdata: {},
      arrProduct: [],
      min_hash: "",
      max_hash: "",
      isValid: true,
      usermsg: "",
      isDisabledBtn: true,
      franchise: {
        user_id: "",
      },
      masterfranchise: {
        user_id: "",
        id: "",
      },
      masterFranchiseList: [],
      //   countries:[],
      mflist: {},
    };
  },
  computed: {
    //
    isComplete() {
      return this.topup.user_id;
    },
  },

  mounted() {
    // this.getProducts();
    //this.getFranchiseUserList();
    // this.getMasterFranchiseUserList();
    // this.getCountry()
  },
  methods: {
    checkUserExisted() {
        var data = {user_id: this.username};
        this.$store
        .dispatch(CHECKUSEREXISTED, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.topup.user_id = resp.data.id;
            this.user_id = resp.data.id;
            this.fullname = resp.data.fullname;
            this.isAvialable = "Available";
          } else {
            this.topup.user_id = "";
            this.isAvialable = "Not Available";
          }
        })
        .catch((err) => {
          this.$toast.error(err);
        });
    },
   
    stopBinaryIncome() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to stop binary income!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {
        if (result.value) {
             var data= {id: this.topup.user_id};
        
             this.$store
            .dispatch(BLOCK_BINARY_INCOME, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
                this.$router.push({ name: "stop-binary-report" });
              } else {
                this.$toast.error(resp.message);
              }
              //$('#addTopUp').trigger("reset");
              this.username = "";
              this.topup = {
                user_id: "",
                pin: "",
                product_id: null,
                hash_unit: "",
              };
              this.isDisabledBtn = true;
            })
            .catch((err) => {
              this.$toast.error(err);
            });
        } else {
          this.isDisabledBtn = true;
        }
      });
    },
    hashvalidation() {
      if (
        this.topup.hash_unit < this.min_hash ||
        this.topup.hash_unit > this.max_hash
      ) {
        this.usermsg =
          "Amount should be on range " + this.min_hash + " to " + this.max_hash;
        this.isValid = false;
      } else {
        this.isValid = true;
        this.usermsg = "";
      }
    },
  },
};
</script>