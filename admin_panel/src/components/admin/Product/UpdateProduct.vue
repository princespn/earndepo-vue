<template>
  <div class="admin-content-body">
    <div class="container-fluid">
      <div class="row">
        
        <div class="col-12 mx-auto">
          <div class="admin-card">
            <div class="admin-card-header">
              <h4 class="card-title">Update Product</h4>
            </div>

            <div class="admin-card-body">
              
              
              <div   v-for="(results,i) in product_ids" :key="i"  class="form-group row">  
            <form id="addFund" class="form-group row">
                <div class="form-group col-3">
                  <label>Package Type</label>
                  <p>{{results.package_type}} ( {{results.status}} )</p>
                  <!-- <input
                    type="text"
                    name="package_type"
                    class="admin-form-control"
                    :id="'package_type'+results.id"
                    placeholder="Enter Package Type"
                    v-model="results.package_type"
                   
                  /> -->
                   <input type="hidden" name="id"  :id="'id'+results.id" v-model="results.id" />
                  <div class="clearfix"></div>
                 
                </div>

                <div class="form-group col-2">
                  <label>Min Amount</label>
                  <input
                    type="text"
                    name="min_hash"
                    class="admin-form-control"
                   
                    :id="'min_hash'+results.id"
                    placeholder="Enter Min Amount"
                    v-model="results.min_hash"
                   
                  />
                  <div class="clearfix"></div>
                 
                </div>

                <div class="form-group col-2">
                  <label>Max Amount</label>
                  <input
                    type="text"
                    name="max_hash"
                    class="admin-form-control"
                  
                    :id="'max_hash'+results.id"
                    placeholder="Enter Max Amount"
                    v-model="results.max_hash"
                  />
                  <div class="clearfix"></div>
                 
                </div>

                <div class="form-group col-2">
                  <label>ROI Persentage</label>
                  <input
                    type="text"
                    name="roi"
                    class="admin-form-control"
                    :id="'roi'+results.id"
                    placeholder="Enter ROI Persentage"
                    v-model="results.roi"
                  />
                  <div class="clearfix"></div>
                 
                </div>


                <div class="form-group col-2">
                  <label>ROI Days</label>
                  <input
                    type="text"
                    name="duration"
                    class="admin-form-control"
                    :id="'duration'+results.id"
                    placeholder="Enter ROI Days"
                    v-model="results.duration"
                  />
                  <div class="clearfix"></div>
                  
                </div>

                <div class="form-group col-1">
                     <label>Action</label>
                  <button
                    type="button"
                    class="btn btn-rounded btn-outline-primary"
                    @click="addProduct(results.id)"
                  >
                    Update
                  </button>
                </div>
            </form>
             </div>

                
            </div>
       
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import $ from  'jquery';
import axios from 'axios';
import Swal from "sweetalert2";
import _ from "lodash";
import {
  UPDATEPRODUCT,
  PRODUCT,
} from "@/adminstore/actions.type";
export default {
  data() {
    return {
      //results: [],  
      otpErr: "",
      isActiveBtn: true,
      otp: "",
      product_ids: {
        id: "",
        name: "",
      },
      results: 
            {
            id: '',
            package_type: '',
            min_hash: '',
            max_hash: '',
            roi: '',
            duration: '',
            status:'',
            },
      
      isAvialable: "",
      username: "",
      fullname: "",
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
    };
  },
  computed: {
   
  },
  mounted() {
    this.getProducts();
  },
  methods: {
    changeSelect(event) {
      let user = _.split(event.target.value, "-", 2); //using lodash here. You can also just use js split func
      let id = user[0]; // your id
      this.min_hash = this.arrProduct[id].min_hash;
      this.max_hash = this.arrProduct[id].max_hash;
      this.activeDiv = true;
      this.hashvalidation();
      // this.usermsg='Amount should be on range ' + this.min_hash + ' to ' + this.max_hash;
    },
    OtpValidation(e) {
      const OTP = e.target.value;
      var OTPl = OTP.replace(/ /g, "");
      if (OTPl == "") {
        this.otpErr = "OTP should not be blank.";
      } else {
        this.otpErr = "";
      }
    },
    addProduct(id) {

        var pid = $("#id"+id).val();
        var roi = $("#roi"+id).val();
        var min_hash = $("#min_hash"+id).val();
        var max_hash = $("#max_hash"+id).val();
        var duration = $("#duration"+id).val();
       
        var datas =  {
            
            id: pid,
            min_hash: min_hash,
            max_hash: max_hash,
            roi: roi,
            duration: duration,
           
          };
          console.log(datas);
        axios
          .post("/update-product", {
        
            id: pid,
            min_hash: min_hash,
            max_hash: max_hash,
            roi: roi,
            duration: duration,
           
          })
        .then((resp) => {
          if (resp.data.code === 200) {
            try {
              this.$toast.success(resp.data.message);
            } catch (err) {
               alert(err.data.message);
            }
          }
        })
        .catch({});
    },

    addProductold() {
      this.isDisabledBtn = false;
      new Swal({
        title: "Are you sure ?",
        text: "You want to Update!",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes!",
        cancelButtonText: "Cancel",
      }).then((result) => {



        if (result.value) {

           alert(this.results.package_type);

          var data = {
            
            id: this.results.id,
            package_type: this.results.package_type,
            min_hash: this.results.min_hash,
            max_hash: this.results.max_hash,
            roi: this.results.roi,
            duration: this.results.duration,
           
          };

          //this.results.push(data);
          console.log(data);
          //this.results.push(this.data);
          this.$store
            .dispatch(UPDATEPRODUCT, data)
            .then((resp) => {
              if (resp.code === 200) {
                this.$toast.success(resp.message);
    
               // this.$router.push({ name: "product/product-update" });
              } else {
                this.$toast.error(resp.message);
              }
              
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

    getProducts() {
      var data = { status: "Active" };
      this.$store
        .dispatch(PRODUCT, data)
        .then((resp) => {
          if (resp.code === 200) {
            this.product_ids = resp.data;
           
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