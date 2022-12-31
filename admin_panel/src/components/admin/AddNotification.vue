<template>
<div class="admin-content-body ">
    <div class="container-fluid">
        <div class="row">
            <div class="col-8 mx-auto">
                <div class="admin-card">
                    <div class="admin-card-header">
                        <h4 class="card-title">Add Notification</h4>
                    </div>
                    <div class="admin-card-body">
                       <form class="row g-3">
                            <div class="col-md-12">
                                <select id="inputState" class="admin-form-select">
                                  <option selected>Mode</option>
                                  <option>...</option>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <select id="inputState" class="admin-form-select">
                                  <option selected>Type</option>
                                  <option>...</option>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <input type="text" class="admin-form-control" placeholder="Title">
                            </div>
                            <div class="col-md-12">
                                <textarea class="admin-form-control" rows="4" placeholder="Enter Message"></textarea>
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