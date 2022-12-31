import { createRouter, createWebHistory } from "vue-router";
import AccountWalletComponent from './../components/admin/PurchaseWallet/AccountWalletComponent.vue';
// import TreeView from "@/components/admin/TreeView";
// import AddFund from "@/components/admin/AddFund/AddFund";
// import AddFundReport from "@/components/admin/AddFund/AddFundReport";
// import RemoveFund from "@/components/admin/AddFund/RemoveFund";
// import RemoveFundReport from "@/components/admin/AddFund/RemoveFundReport";
// import FundWalletAddRemoveFund from '@/components/admin/AddFund/FundWalletAddRemoveFund.vue';
// import AddTopUp from '@/components/admin/Topup/AddTopUp.vue';
// import TopUpReport from '@/components/admin/Topup/TopUpReport.vue';
// import ChangePassword from "@/components/admin/ManageUser/ChangePassword";
// import UserBulkEditReport from "@/components/admin/ManageUser/UserBulkEditReport";
// import SubadminReport from "@/components/admin/SubAdmin/SubadminReport";
// import AssignRights from "@/components/admin/SubAdmin/AssignRights";
// import AssignRightsReport from "@/components/admin/SubAdmin/AssignRightsReport";
// import ConfirmAddressTransaction from "@/components/admin/coin_payment/ConfirmAddressTransaction.vue";
// import FundCoinPaymentReport from '@/components/admin/coin_payment/FundCoinPaymentReport.vue';
// import UserBulkUpdate from "@/components/admin/ManageUser/UserBulkUpdate";
// import AdminNavigation from '@/components/admin/AdminNavigation.vue';
// import VerifyOtpStatus from '@/components/admin/VerifyOtpStatus.vue';
//**********************************ICO Coin Start**************************************
// import SendCoinToUser from "@/components/admin/ico_coin/SendCoinToUser.vue";
// import IcoAdminSendRep from "@/components/admin/ico_coin/IcoAdminSendRep.vue";
// import IcoUserBuyRep from "@/components/admin/ico_coin/IcoUserBuyRep.vue";
// import IcoPhasesList from "@/components/admin/ico_coin/IcoPhasesList.vue";
// import BuyActivePhaseCoin from "@/components/admin/ico_coin/BuyActivePhaseCoin.vue";
// import AdminBuyCoinRep from "@/components/admin/ico_coin/AdminBuyCoinRep.vue";
// import UserToUserSendCoinReports from "@/components/admin/ico_coin/UserToUserSendCoinReports.vue";
//*****************************************ICO Coin END*************************************
// import CountryWithPercentage from "@/components/admin/CountryWithPercentage";
// import AddNotification from "@/components/admin/AddNotification";
// import AddUpdateEcommerceProductComponent from "@/components/admin/AddUpdateEcommerceProductComponent";
// import AdminSettingAddFundComponent from "@/components/admin/AdminSettingAddFundComponent";
// import SettingFundReportComponent from "@/components/admin/SettingFundReportComponent";
// import SettingRemoveFundReportComponent from "@/components/admin/SettingRemoveFundReportComponent";
// import SettingRemoveFundComponent from "@/components/admin/SettingRemoveFundComponent";
// import AddRankReport from '@/components/admin/Rank/AddRankReport.vue';
// import RankQualifyReportComponent from '@/components/admin/Rank/RankQualifyReportComponent.vue';
// import AddRankPowerReportComponent from '@/components/admin/Rank/AddRankPowerReportComponent.vue';
// import RankBySponsorIDComponent from '@/components/admin/Rank/RankBySponsorIDComponent.vue';
// import AddRankPowerUplineReportComponent from '@/components/admin/Rank/AddRankPowerUplineReportComponent.vue';
// import AddRankComponent from '@/components/admin/Rank/AddRankComponent.vue';
// import AddRankPowerComponent from '@/components/admin/Rank/AddRankPowerComponent.vue';
// import AddRankPowerUplineComponent from '@/components/admin/Rank/AddRankPowerUplineComponent.vue';
// import RunCron from '@/components/admin/cron/RunCron.vue';
// import TopupManageDateComponent from '@/components/admin/cron/TopupManageDateComponent.vue';
// import EditDateComponent from '@/components/admin/cron/EditDateComponent.vue';
// import WithdrawSettings from '@/components/admin/setting/WithdrawSettings.vue';
// import WithdrawByDate from '@/components/admin/setting/WithdrawByDate.vue';
// import EditProjectSettingComponent from '@/components/admin/setting/EditProjectSettingComponent.vue';

import Guard from "./middleware";

const routes = [
    {
        path:'/thankyou',
        name:'thankyou',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ThankYou"),
    },
    {
        path: '/:pathMatch(.*)*',
        name: 'dashboard',
        redirect: "dashboard",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Dashboard"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/',
        name:'login',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/Login"),
        beforeEnter: Guard.guest
    },
    

    {
        path:'/register',
        name:'register',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/Register"),


    },
    {
        path: '/dashboard',
        name: 'dashboard',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Dashboard"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/e-wallet/direct-income',
        name: 'direct-income',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/DirectIncome"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/e-wallet/level-income',
        name: 'level-income',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/LevelIncome"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/e-wallet/binary-income',
        name: 'binary-income',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/BinaryIncome"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/e-wallet/super-matching-income',
        name:'super-matching-income',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/SuperMatchingIncome"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/e-wallet/freedom-club-report',
        name:'freedom-club-report',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/FreedomClubReport"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/e-wallet/roi-income',
        name:'roi-income',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/IncomeReport/ROIIncomeReport"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/withdrawal/withdrawal-request',
        name:'pendingwithdrawreport',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageWithdrawal/PendingWithdrawalRequest"),
        beforeEnter: Guard.auth,
    },
    {
        path: "/withdrawal/verified-withdrawal",
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageWithdrawal/VerifyWithdrawalReport"),
        name: "verifiedwithdrawalreport",
        beforeEnter: Guard.hasAccess
    },
    {
        path:'/withdrawal/confirm-withdrawal-report',
        name:'confirmwithdrawreport',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageWithdrawal/ConfirmWithdrawalReport"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/withdrawal/rejected-withdrawal-report',
        name:'rejectedmwithdrawreport',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageWithdrawal/RejectedWithdrawReport"),
        beforeEnter: Guard.auth,
    },
    {
        path: "/account-wallet",
        component: AccountWalletComponent,
        name: "account-wallet",
        beforeEnter: Guard.auth
    },

    {
        path:'/user/manage-user-account',
        name:'manageuseraccount',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/ManageUserAccount"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/user/metamask-registration',
        name:'metamask-registration',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/UserRegistrationMetaMask"),
        beforeEnter: Guard.auth,
    },
    {
        path: "/user/user-profile/:id",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/ManageUser/UserProfileComponent.vue"),
        name: "userprofile",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/edit-user-profile/:id",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/ManageUser/EditUserProfileComponent.vue"),
        name: "edituserprofile",
        beforeEnter: Guard.auth
    },
    {
        path:'/user/total-team-view',
        name:'teamview',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/TeamView"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/user/qualified-user-list',
        name:'qualified-user-list',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/BinaryQualifiedUserReport"),
        beforeEnter: Guard.auth,
    },
    {
        path:'/user/block-users-report',
        name:'block-user-list',
        component: () =>
        import ( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/BlockUsersReport"),
        beforeEnter: Guard.auth,
    },
    {
        path: "/stop-direct-income",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/StopDirectIncomeComponent.vue"),
        name: "stop-direct-income",
        beforeEnter: Guard.auth
    },
    {
        path: "/stop-direct-report-income",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/StopDirectIncomeReportComponent.vue"),
        name: "stop-direct-report-income",
        beforeEnter: Guard.auth
    },
    {
        path: "/stop-binary-income",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/StopBinaryIncomeComponent.vue"),
        name: "stop-binary-income",
        beforeEnter: Guard.auth
    },
    {
        path: "/stop-binary-report",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/StopBinaryIncomeReportComponent.vue"),
        name: "stop-binary-report",
        beforeEnter: Guard.auth
    },
    {
        path: "/block-roi-withdraw",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/BlockFundTransferComponent.vue"),
        name: "block-roi-withdraw",
        beforeEnter: Guard.auth
    },
    //******************************Manage Business***********
        {
            path: "/add-bussiness",
            component: () =>
            import ( /* webpackChunkName: "about" */ "./../components/admin/manage_business/AddBussines.vue"),
            name: "addbussiness",
            beforeEnter: Guard.auth
        },
        {
            path: "/add-bussiness-report",
            component: () =>
            import ( /* webpackChunkName: "about" */ "./../components/admin/manage_business/AddBussinessReport.vue"),
            name: "addbussiness-report",
            beforeEnter: Guard.auth
        },
        {
            path: "/add-bussiness-upline",
            component: () =>
            import ( /* webpackChunkName: "about" */ "./../components/admin/manage_business/AddBussinesUpline.vue"),
            name: "addbussinessupline",
            beforeEnter: Guard.auth
        },
        {
            path: '/add-bussiness-upline-report',
            component: () =>
            import ( /* webpackChunkName: "about" */ "./../components/admin/manage_business/AddBussinessUplineReport.vue"),
            name: 'addbussiness-upline-report',
            beforeEnter: Guard.auth
        },
//*******************************Manage Business End*************
    {
        path: "/block-roi-withdraw-report",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/BlockFundTransferReportComponent.vue"),
        name: "block-roi-withdraw-report",
        beforeEnter: Guard.auth
    },
    {
        path: "/block-withdraw",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/BlockFundWithdrawComponent.vue"),
        name: "block-withdraw",
        beforeEnter: Guard.auth
    },
    {
        path: "/block-withdraw-report",
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/stop_income/BlockFundWithdrawReportComponent.vue"),
        name: "block-fund-withdraw-report",
        beforeEnter: Guard.auth
    },
    {
        path: "/otp-verify",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/VerifyOtpStatus.vue"),
        name: "otp-verify",
        beforeEnter: Guard.auth
    },

    {
        path: '/user/tree-view',
        name: 'tree-view',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/TreeView"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/admin-add-fund',
        name: 'adminaddfund',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddFund/AddFund"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/manage-power/add-power',
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/AddPower/AddPower.vue"),
        name: 'add-power',
        beforeEnter: Guard.auth
    },
    {
        path: '/manage-power/power-report',
        component: () =>
        import ( /* webpackChunkName: "about" */ "./../components/admin/AddPower/PowerReport.vue"),
        name: 'power-report',
        beforeEnter: Guard.auth
    },
    {
        path: '/admin-add-fundreport',
        name: 'addfundreport',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddFund/AddFundReport"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/admin-remove-fund',
        name: 'adminremovefund',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddFund/RemoveFund"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/admin-remove-fundreport',
        name: 'removefundreport',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddFund/RemoveFundReport"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/fund-wallet-add-remove',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddFund/FundWalletAddRemoveFund.vue"),
        name: 'fund-wallet-add-remove',
        beforeEnter: Guard.auth
    },
    {
        path: "/top-up/add-top-up",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Topup/AddTopUp.vue"),
        name: "addtopup",
        beforeEnter: Guard.auth
    },
    {
        path: "/top-up/metamask-top-up",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Topup/MetaMaskTopUpComponent.vue"),
        name: "metamasktopup",
        beforeEnter: Guard.auth
    },
    {
        path: "/top-up/top-up-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Topup/TopUpReport.vue"),
        name: "topupreport",
        beforeEnter: Guard.auth
    },
    {
        path: '/user/change-password',
        name: 'change-password',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/ChangePassword"),
        beforeEnter: Guard.auth,
    },
    
    {
        path: '/user/user-bulk-update',
        name: 'user-bulk-update',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/UserBulkUpdate"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/user/bulk-user-update-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/UserBulkEditReport"),
        name: 'bulk-user-update-report',
        beforeEnter: Guard.auth
    },
    //********************Create Sub Admin Start***********
    {
        path: "/sub-admin/create-sub-admin",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SubAdmin/SubadminReport"),
        name: "createsubadmin",
        beforeEnter: Guard.auth
    },
    {
        path: "/sub-admin/assign-right",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SubAdmin/AssignRights"),
        name: "assignright",
        beforeEnter: Guard.auth
    },
    {
        path: "/sub-admin/assign-rights-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SubAdmin/AssignRightsReport"),
        name: "assignrightsreport",
        beforeEnter: Guard.auth
    },
    //***************************Sub Admin End****************

    {
        path: "/coinpayment/confirm-address-transaction",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/coin_payment/ConfirmAddressTransaction.vue"),
        name: "confirmaddresstransaction",
        beforeEnter: Guard.auth
    },
    {
        path: "/coinpayment/fund-coinpayment-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/coin_payment/FundCoinPaymentReport.vue"),
        name: "fund-coinpayment-report",
        beforeEnter: Guard.auth
    },

    {
        path: "/admin-navigation",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AdminNavigation.vue"),
        name: "adminnavigation",
        beforeEnter: Guard.auth
    },
    ///***********************Coin ICO Start*********************
    {
        path: '/send-coin-to-user',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/SendCoinToUser.vue"),
        name: 'send-coin-to-user',
        beforeEnter: Guard.auth

    },
    {
        path: '/ico-admin-send-rep',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/IcoAdminSendRep.vue"),
        name: 'ico-admin-send-rep',
        beforeEnter: Guard.auth
    },
    {
        path: '/ico-user-buy-rep',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/IcoUserBuyRep.vue"),
        name: 'ico-user-buy-rep',
        beforeEnter: Guard.auth
    },
    // {
    //     path: '/ico-on-off',
    //     component: IcoOnOff,
    //     name: 'ico-on-off',
    //     beforeEnter: Guard.auth
    // },
    {
        path: '/ico-phases-list',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/IcoPhasesList.vue"),
        name: 'ico-phases-list',
        beforeEnter: Guard.auth
    },
    {
        path: '/buy-active-phase-coin',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/BuyActivePhaseCoin.vue"),
        name: 'buy-active-phase-coin',
        beforeEnter: Guard.auth
    },
    {
        path: '/admin-buy-coin-rep',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/AdminBuyCoinRep.vue"),
        name: 'admin-buy-coin-rep',
        beforeEnter: Guard.auth
    },
    {
        path: '/user-to-user-send-rep',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ico_coin/UserToUserSendCoinReports.vue"),
        name: 'user-to-user-send-rep',
        beforeEnter: Guard.auth
    },
    //*******************ICO Coin END**********************
    {
        path: '/country-with-percentage',
        name: 'country-with-percentage',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/CountryWithPercentage"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/add-notification',
        name: 'add-notification',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddNotification"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/product/add-ecommerce-product/:id?',
        name: 'addecommerceproduct',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AddUpdateEcommerceProductComponent"),
        beforeEnter: Guard.auth
    },
    {
        path: '/setting-add-fund',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/AdminSettingAddFundComponent"),
        name: 'adminsettingaddfund',
        beforeEnter: Guard.auth
    },
    {
        path: "/setting-add-fundreport",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SettingFundReportComponent"),
        name: "settingfundreport",
        beforeEnter: Guard.auth
    },
    {
        path: '/setting-remove-fund-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SettingRemoveFundReportComponent"),
        name: 'settingremovefundreport',
        beforeEnter: Guard.auth
    },
    {
        path: '/setting-remove-fund',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/SettingRemoveFundComponent"),
        name: 'settingremovefund',
        beforeEnter: Guard.auth
    },
    {
        path: '/rank/add-rank-report',
        name: 'add-rank-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankReport.vue"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/rank/qualify-rank-report',
        name: 'qualify-rank-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/RankQualifyReportComponent.vue"),
        beforeEnter: Guard.auth,
    },
    {
        path: '/rank/add-rank-power-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankPowerReportComponent.vue"),
        name: 'add-rank-power-report',
        beforeEnter: Guard.auth
    },
    {
        path: '/rank/rank_by_user',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/RankBySponsorIDComponent.vue"),
        name: 'rank_by_user',
        beforeEnter: Guard.auth
    },
    {
        path: '/rank/add-rank-power-upline-report',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankPowerUplineReportComponent.vue"),
        name: 'add-rank-power-upline-report',
        beforeEnter: Guard.auth
    },
    {
        path: "/rank/add-rank",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankComponent.vue"),
        name: "add-rank",
        beforeEnter: Guard.auth
    },
    {
        path: '/rank/add_rank_power',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankPowerComponent.vue"),
        name: 'add_rank_power',
        beforeEnter: Guard.auth
    },
    {
        path: '/rank/add_rank_power_upline',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Rank/AddRankPowerUplineComponent.vue"),
        name: 'add_rank_power_upline',
        beforeEnter: Guard.auth
    },
    {
        path: "/cron/run-cron",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/cron/RunCron.vue"),
        name: "run-cron",
        beforeEnter: Guard.auth
    },
    {
        path: '/settings/update-withdraw-setting',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/setting/WithdrawSettings.vue"),
        name: 'update-withdraw-setting',
        beforeEnter: Guard.auth

    },
    {
        path: '/settings/withdraw-by-date',
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/setting/WithdrawByDate.vue"),
        name: 'withdraw-by-date',
        beforeEnter: Guard.auth
    },
    {
        path: "/cron/manage-topup-dates",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/cron/TopupManageDateComponent.vue"),
        name: "manage-topup-dates",
        beforeEnter: Guard.auth
    },
    {
        path: "/sub-menu/edit-date/:id?",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/cron/EditDateComponent.vue"),
        name: "editdate",
        beforeEnter: Guard.auth
    },
    {
        path: "/project_setting",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/setting/EditProjectSettingComponent.vue"),
        name: "projectsetting",
        beforeEnter: Guard.auth
    },
    {

        path: "/daily-report",
        component:() =>
        import( /* webpackChunkName: "about" */ "@/components/admin/DailyReportForAddWithdrawComponent.vue"),
        name: "daily-report",
        beforeEnter: Guard.auth

    },

    //*******************Working Wallet**********************
    {

        path: "/admin-remove-wallet-fund-report",
        component:() =>
        import( /* webpackChunkName: "about" */ "@/components/admin/working_wallet/AdminRemoveFundReport.vue"),
        name: "admin-remove-wallet-fund-report",
        beforeEnter: Guard.auth

    },
    {
        
        path: "/admin-remove-wallet-fund",
        component:() =>
        import( /* webpackChunkName: "about" */ "@/components/admin/working_wallet/AdminRemoveFund.vue"),
        name: "admin-remove-wallet-fund",
        beforeEnter: Guard.auth

    },

    {
        path: "/enquiry-reports",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/EnquiryReportComponent.vue"),
        name: "enquiry-reports",
        beforeEnter: Guard.auth
    },
    {
        path: "/send-reply-reports",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/EnquiryReplyReportComponent.vue"),
        name: "send-reply-reports",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/downline-users-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/DownlineUserReportComponent.vue"),
        name: "downlineuserreport",
        beforeEnter: Guard.auth
    },
    {
        path: "/manage-all-id-receive-balance-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/ManageAllIdRecieveReport.vue"),
        name: "manage-all-id-receive-balance-report",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/edit-profile-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/EditUserProfileReportComponent.vue"),
        name: "editprofilereport",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/manage-bulk-structure",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/ManageBulkStructureComponent.vue"),
        name: "manage-bulk-structure",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/edit-bulk-strucutre/:id",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/ManageUser/EditbulkStructure.vue"),
        name: "editBulkStrucutre",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/new-assign-rank",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/NewRankAssignComponent.vue"),
        name: "new-assign-rank",
        beforeEnter: Guard.auth
    },
    {
        path: "/user/new-assign-report",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/NewAssignRankReport.vue"),
        name: "new-assign-report",
        beforeEnter: Guard.auth
    },{
        path: "/product/product-update",
        component: () =>
            import( /* webpackChunkName: "about" */ "@/components/admin/Product/UpdateProduct.vue"),
        name: "new-assign-report",
        beforeEnter: Guard.auth
    },

]

const adminRoutes = createRouter({

    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default adminRoutes;