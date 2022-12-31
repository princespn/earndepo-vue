<template>
<div class="admin-content-body rightside-event">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-primary admin-text-primary">
                                <i class="fa-solid fa-user-tie"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1">User</p>
                                <h4 class="mb-0">{{dashboard.total_users}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-warning admin-text-warning">
                                <i class="fa-solid fa-user-tie"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Unblock Users</p>
                                <h4 class="mb-0">{{dashboard.total_unblock_users}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-danger admin-text-danger">
                                <i class="fa-solid fa-user-tie"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Block Users</p>
                                <h4 class="mb-0">{{dashboard.total_block_users}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-success admin-text-success">
                                <i class="fa-solid fa-user-tie"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1">Active User</p>
                                <h4 class="mb-0">{{dashboard.total_active_user}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-info admin-text-info">
                                <i class="fa-solid fa-user-tie"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1">Inactive User</p>
                                <h4 class="mb-0">{{dashboard.total_inactive_user}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-primary admin-text-primary">
                                <i class="fa-solid fa-wallet"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1">Add Fund</p>
                                <h4 class="mb-0">{{Number(dashboard.add_fund_btc).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div-->
            <!--div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-warning text-warning">
                                <i class="fa-solid fa-money-bill-transfer"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1">Upcoming Withdrawal</p>
                                <h4 class="mb-0">{{Number(dashboard.total_withdraw_pending).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-dark admin-text-dark">
                                <i class="fa-solid fa-sack-dollar"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Total account wallet balance</p>
                                <h4 class="mb-0">{{Number(dashboard.total_account_wallet_bal).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-pink admin-text-pink">
                                <i class="fa-solid fa-piggy-bank"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Total purchase wallet balance </p>
                                <h4 class="mb-0">{{Number(dashboard.total_purchase_wallet_bal).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-pink admin-text-pink">
                                <i class="fa-solid fa-piggy-bank"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Level Income </p>
                                <h4 class="mb-0">{{Number(dashboard.total_level_income).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div-->
            <div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-pink admin-text-pink">
                                <i class="fa-solid fa-piggy-bank"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> ROI Income </p>
                                <h4 class="mb-0">{{Number(dashboard.total_roi_income).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--div class="col-md-4">
                <div class="widget-stat admin-card">
                    <div class="admin-card-body p-4">
                        <div class="media ai-icon">
                            <span class="me-3 admin-bgl-pink admin-text-pink">
                                <i class="fa-solid fa-piggy-bank"></i>
                            </span>
                            <div class="media-body">
                                <p class="mb-1"> Total Income </p>
                                <h4 class="mb-0">{{Number(dashboard.total_income).toFixed(2)}}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div-->
        </div>
    </div>
</div>

</template>

<script>

import moment from 'moment';
import { ADMIN_DASHBOARD } from '@/adminstore/actions.type'


export default {
  name: 'app',
   data() {
        return {
                dashboard : {
                    total_users : 0,
                    total_unblock_users : 0,
                    total_block_users : 0,
                    total_active_user : 0,
                    total_inactive_user : 0,
                    total_investment : 0,
                    total_account_wallet_bal : 0,
                    total_purchase_wallet_bal : 0,
                    total_deposite_admin : 0,
                    total_deposite_btc : 0,
                    total_deposite_wallet : 0,
                    total_income : 0,
                    total_direct_income : 0,
                    total_binary_income : 0,
                    total_level_income : 0,
                    total_roi_income : 0,
                    total_withdraw : 0,
                    total_withdraw_pending : 0,
                    total_withdraw_confirm : 0,
                    total_balance : 0,
                    freedom_income : 0,
                    supermatching_income : 0,
                    total_dex_wallet_bal:0
                },
                hiddenUserId : '',
                user_id : '',
                frm_date : '',
                to_date : '',
                userExistsMessage : '',
                custom_msg_class : ''
        }
    },
    mounted() {

       this.getDashboardData();
            //this.fa();
    },
    methods: {

        getDashboardData() { 

                var data={
                    frm_date: (this.frm_date!=='')?moment(this.frm_date).format('DD-MM-YYYY'):'',
                    to_date: (this.to_date!=='')?moment(this.to_date).format('DD-MM-YYYY'):'',
                    id : this.hiddenUserId,
                    user_id: this.user_id,
                }

                this.$store
                .dispatch(ADMIN_DASHBOARD, data)
                .then(response => {
                    this.dashboard = response.data;
                    console.log(this.dashboard);
                }).catch(error => {
                    this.message  = error.response.data.message;
                    this.flash(this.message, 'error', {
                      timeout: 500000,
                    });
                });
        },
    },
  
}

</script>