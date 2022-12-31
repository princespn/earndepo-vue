<template>
<div class="admin-content-body ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-8 mx-auto">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Exposure Country percentage</h4>
                    </div>
                    <div class="admin-card-body">
                       <form class="row g-3">
                            <div class="col-md-12">
                                <select id="inputState" class="admin-form-select">
                                  <option selected>Select Country</option>
                                  <option>...</option>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <input type="text" class="admin-form-control" placeholder="Percentage">
                            </div>
                            <div class="col-md-12">
                                <input type="text" class="admin-form-control" placeholder="Color Code">
                            </div>
                            <div class="col-md-12">
                                <div class="input-group mb-3">
                                    <div class="form-file">
                                        <input type="file" class="form-file-input admin-form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <button type="button" class="btn btn-rounded btn-outline-primary">Submit</button>
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
import "datatables.net-bs4";
export default {
  name: "app",
  components: {
   
  },
  data() {
  },
  mounted() {
    
    this.getLevelIncome();

  },
  methods: {
    getLevelIncome(){
      $('table').dataTable();
    }
  }

};
</script>