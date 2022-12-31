<template>
<div class="admin-content-body" style="overflow:auto;">
    <div class="container-fluid">
    <div class="row introscreen">
        <div class="col-md-4 offset-md-4">
            <h1><span>T</span>ree <span>V</span>iew</h1>
        </div>
        <div class="col-md-4">
            <div class="d-flex">
                <div>
                    <form class="input-group flex-nowrap" @submit.prevent="onSearchClick">
                        <input type="text" class="form-control-search" v-model="searchText" v-on:keyup="checkUserExisted" name="search" placeholder="Search..." autocomplete="off" />
                        <span class="input-group-text" id="addon-wrapping">
                            <a href="javascript:void(0)" @click="onSearchClick"> <i class="fa fa-search"></i></a>
                        </span>
                    </form>
                    <span :class="{'text-success': isAvialable == 'Available','text-danger': isAvialable == 'Not Available'}" v-if="isAvialable!=''">{{isAvialable}} </span>
                </div>
                <button class="btn btntree" @click="onBackClick" style="padding: 3px; cursor: pointer;">
                    <i class="fa fa-arrow-left"></i>
                </button>
                <button class="btn btntree" @click="onForwardClick">
                    <i class="fa fa-arrow-right"></i>
                </button>
            </div>
        </div>
    </div>
    <div class="adminTree">
        <div class="row admin-midline">
            <div class="col-12">
                <div class="admin-tree-level1">
                    <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                        <!-- <img src="/admin-assets/images/active.png" /> -->

                         <img class="img-a" :src="imgURL+'/images'+'/'+userdata.image" width="40">
                        <div class="adminTree-tooip-text">
                            <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{userdata.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{userdata.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{userdata.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{userdata.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{userdata.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{userdata.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{userdata.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{userdata.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{userdata.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{userdata.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{userdata.rank}}</span>
                                </li>
                            </ul>
                        </div>
                    </a>
                    <h6>{{userdata.user_id}}</h6>
                </div>
            </div>
        </div>
        <div class="row admin-midline AdminVHline">
            <div class="col-6 admintree-2-1">
                <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                    <!-- <img src="/admin-assets/images/absent.png" /> -->
                       <img class="img-a" :src="imgURL+'/images'+'/'+treelevel0.image" width="40" @click="getMatrixTreeData(treelevel0.user_id)">
                    <div class="adminTree-tooip-text">
                            <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel0.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel0.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel0.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel0.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel0.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel0.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel0.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel0.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel0.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel0.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel0.rank}}</span>
                                </li>
                            </ul>
                        </div>
                </a>
                <h6>{{treelevel0.user_id}}</h6>
            </div>
            <div class="col-6 admintree-2-2">
                <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                    <!-- <img src="/admin-assets/images/absent.png" /> -->
                       <img class="img-a" :src="imgURL+'/images'+'/'+treelevel1.image" width="40" @click="getMatrixTreeData(treelevel1.user_id)">

                    <div class="adminTree-tooip-text">
                            <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel1.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel1.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel1.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel1.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel1.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel1.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel1.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel1.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel1.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel1.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel1.rank}}</span>
                                </li>
                            </ul>
                        </div>
                </a>
                     <h6>{{treelevel1.user_id}}</h6>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <div class="row admin-midline AdminVHline">
                    <div class="col-6 admintree-3-1">
                        <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                            <!-- <img src="/admin-assets/images/active.png" /> -->
                               <img class="img-a" :src="imgURL+'/images'+'/'+treelevel10.image" width="40" @click="getMatrixTreeData(treelevel10.user_id)">
                            <div class="adminTree-tooip-text">
                          <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel10.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel10.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel10.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel10.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel10.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel10.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel10.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel10.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel10.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel10.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel10.rank}}</span>
                                </li>
                            </ul>
                        </div>
                        </a>
                        <h6>{{treelevel10.user_id}}</h6>
                    </div>
                    <div class="col-6 admintree-3-2">
                        <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                            <!-- <img src="/admin-assets/images/active.png" /> -->
                             <img class="img-a" :src="imgURL+'/images'+'/'+treelevel11.image" width="40" @click="getMatrixTreeData(treelevel11.user_id)">
                            <div class="adminTree-tooip-text">
                             <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel11.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel11.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel11.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel11.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel11.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel11.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel11.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel11.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel11.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel11.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel11.rank}}</span>
                                </li>
                            </ul>
                        </div> 
                        </a>
                       <h6>{{treelevel11.user_id}}</h6>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="row admin-midline AdminVHline">
                    <div class="col-6 admintree-3-3">
                        <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                            <!-- <img src="/admin-assets/images/active.png" /> -->
                    <img class="img-a" :src="imgURL+'/images'+'/'+treelevel12.image" width="40" @click="getMatrixTreeData(treelevel12.user_id)">
                            <div class="adminTree-tooip-text">
                            <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel12.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel12.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel12.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel12.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel12.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel12.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel12.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel12.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel12.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel12.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel12.rank}}</span>
                                </li>
                            </ul>
                        </div>
                        </a>
                        <h6>{{treelevel12.user_id}}</h6>
                    </div>
                    <div class="col-6 admintree-3-4">
                        <a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" id="myTooltip1" class="mytooltip">
                            <!-- <img src="/admin-assets/images/active.png" />  -->
                        <img class="img-a" :src="imgURL+'/images'+'/'+treelevel13.image" width="40" @click="getMatrixTreeData(treelevel13.user_id)">
                            <div class="adminTree-tooip-text">
                             <ul>
                                <li>
                                    <span>User Name</span>
                                    <span>{{treelevel13.user_id}}</span>
                                </li>
                                <li>
                                    <span>Fullname</span>
                                    <span>{{treelevel13.fullname}}</span>
                                </li>
                                <li>
                                    <span>Sponser User Name</span>
                                    <span>{{treelevel13.sponsor_fullname}}</span>
                                </li>
                                <li>
                                    <span>Date of joining</span>
                                    <span>{{treelevel13.entry_time}}</span>
                                </li>
                                <li>
                                    <span>Left ID</span>
                                    <span>{{treelevel13.l_c_count}}</span>
                                </li>
                                <li>
                                    <span>Right ID</span>
                                    <span>{{treelevel13.r_c_count}}</span>
                                </li>
                                <li>
                                    <span>Left Business</span>
                                    <span>{{treelevel13.l_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Business</span>
                                    <span>{{treelevel13.r_bv}}</span>
                                </li>
                                <li>
                                    <span>Left Balance</span>
                                    <span>{{treelevel13.left_bv}}</span>
                                </li>
                                <li>
                                    <span>Right Balance</span>
                                    <span>{{treelevel13.right_bv}}</span>
                                </li> 
                                <li>
                                    <span>User Rank</span>
                                    <span>{{treelevel13.rank}}</span>
                                </li>
                            </ul>
                        </div> 
                        </a>
                          <h6>{{treelevel13.user_id}}</h6>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>

</div>

</template>

<script>
import { adminAssets } from "../../../admin_config.js";
import { ADMIN_PRODUCTBASE, CHECKUSEREXISTED } from '@/adminstore/actions.type'
// import axios from 'axios';

// import moment from 'moment';
import $ from "jquery";

export default {
  name: 'app',
  data() {

            return {
				imgURL: adminAssets,
				  adminAssetsURL:'public/admin_assets/uploads/gallery/admin_assets',
				user_id:'',
				userdata:{     
                },
                treelevel0:{},
			    treelevel1:{},
                treelevel10:{},
                treelevel11:{},
                treelevel12:{},
                treelevel13:{},

                treelevel20:{},
                treelevel21:{},
                treelevel22:{},
                treelevel23:{},
                treelevel24:{},
                treelevel25:{},
                treelevel26:{},
                treelevel27:{},

				lengthOFlastlevelOfTree:0,
				isAvialable:'',
				searchText:'',
				nameForBack:'',
				BackListArray:[],
				ForwordListArray:[],
				back_status:false,
				forward_status:false, 
				tree_images:{} ,
				user_id_exp:'',
				fullname_exp:'', 
            }
        },
          mounted() {
        	this.getTreeViewManual();
			//   this.getUserTreeImages();
        	  $("li").hover(
			  function () {
			    $(this).addClass("is-active");
			  },
			  function () {
			    $(this).removeClass("is-active");
			  }
			);
        	//this.getPools();//

        },
         methods: {
			// getUserTreeImages(){
            //     axios.post('/get-user-tree-images',{
            //       type:"1"
            //     }).then(resp => {                  
            //         this.tree_images = resp.data.data;
            //     }).catch(err => {
                    
            //     })
            // },
            getTreeViewManual(){
                  var data = {id:this.user_id};
                    this.$store
                    .dispatch(ADMIN_PRODUCTBASE, data)
                .then(resp => {
					if(resp.code === 200) {
						this.userdata = resp.data.user;

						this.treelevel0 = resp.data.tree_data[0].level[0];
						this.treelevel1 = resp.data.tree_data[0].level[1];

                        this.treelevel10 = resp.data.tree_data[1].level[0];
						this.treelevel11 = resp.data.tree_data[1].level[1];

                        this.treelevel12 = resp.data.tree_data[1].level[2];
						this.treelevel13 = resp.data.tree_data[1].level[3];

                        this.treelevel20 = resp.data.tree_data[2].level[0];
						this.treelevel21 = resp.data.tree_data[2].level[1];

                        this.treelevel22 = resp.data.tree_data[2].level[2];
						this.treelevel23 = resp.data.tree_data[2].level[3];

                        this.treelevel24 = resp.data.tree_data[2].level[4];
						this.treelevel25 = resp.data.tree_data[2].level[5];

                        this.treelevel26 = resp.data.tree_data[2].level[6];
						this.treelevel27 = resp.data.tree_data[2].level[7];

                        // console.log(resp.data.tree_data[0].level[0].id)
						// this.lengthOFlastlevelOfTree = this.usertreeview[this.usertreeview.length - 1].level[this.usertreeview[this.usertreeview.length - 1].level.length - 1].level;

						if(!this.back_status){
							this.nameForBack = this.userdata.user_id;
			                if (this.BackListArray[this.BackListArray.length - 1] !== this.nameForBack) 
			                {
			                  this.BackListArray.push(this.nameForBack);
			                }
			                this.back_status = false;
						}
					}
                }).catch(
                    // err => {
                	// this.$toast.error(err);
                // }
                )
            },
            getWidth(data) {
			    switch (data.level) {
			      	case 1: return '50%';
			      	case 2: return '25%';
			    }
			},
			// changeStyle($event) {
			//     $('.nav li').hover(function () {
			//       	$(this).addClass('is-active').siblings().removeClass('is-active');
			//     });

			//     $('.nav li').mouseleave(function () {
			//       	$(this).removeClass('is-active');
			//     });
			// },
			getMatrixTreeData(id) {				
				this.user_id = id;
			    this.getTreeViewManual();
			},
			onSearchClick() {
			    this.isAvialable = '';
			    if (this.searchText === '') {
			      	this.isAvialable = '';
			    } else {
			      	this.user_id = this.searchText;
			    	this.getTreeViewManual();
			    }
			},
			onBackClick() {	
			    if (this.BackListArray.length === 1) {
			    	this.back_status = false;
			    	this.$toast.error('You are on root, you can not back');
			    } else {
			    	this.back_status = true;
			      	const lengthOfArray = this.BackListArray.length;
			      	const userIdForBack = this.BackListArray[lengthOfArray - 2];
			      	const userIdForForword = this.BackListArray[lengthOfArray - 1];
			      	this.getMatrixTreeData(userIdForBack);
			      	this.BackListArray.splice(lengthOfArray - 1, 1);
			      	this.ForwordListArray.push(userIdForForword);
			    }
			    this.searchText = '';
			    this.isAvialable = '';
			},
			onForwardClick() {
				
			    if (this.ForwordListArray.length === 0) {
			    	this.forward_status = false;
			    	this.$toast.error('You are on root, you can not Forward');
			    } else {
			    	this.forward_status = true;
			      	const lengthOfArray = this.ForwordListArray.length;

			      	/*if(lengthOfArray > 1){
			      		const userIdForForword = this.ForwordListArray[lengthOfArray - 2];
			      		this.getMatrixTreeData(this.ForwordListArray[lengthOfArray - 1]);
			      	} else {
			      		const userIdForForword = this.ForwordListArray[lengthOfArray - 1];
			      		this.getMatrixTreeData(this.ForwordListArray[lengthOfArray - 1]);
			      	}*/
			      	const userIdForBack = this.ForwordListArray[lengthOfArray - 1];
			      	//this.getMatrixTreeData(userIdForForword);
			      	this.getMatrixTreeData(this.ForwordListArray[lengthOfArray - 1]);
			      	this.ForwordListArray.splice(lengthOfArray - 1, 1);
			      	this.BackListArray.push(userIdForBack);
			    }
			    this.searchText = '';
			    this.isAvialable = '';
			},
			checkUserExisted(){
				// axios.post('/checkuserexist',{
                //     user_id: this.searchText,
                // })
                var data = {user_id: this.searchText};
                    this.$store
                .dispatch(CHECKUSEREXISTED, data)
                .then(resp => {
                    if(resp.data.code === 200){
						this.user_id_exp = resp.data.data.user_id;
						this.fullname_exp = resp.data.data.fullname;
                    	this.isAvialable = 'Available';
                    } else {
                    	this.isAvialable = 'Not Available';
                    }
                }).catch(
                    
                //     err => {
                // 	this.$toaster.error(err);
                // }
                
                )
			}
        }
}

</script>