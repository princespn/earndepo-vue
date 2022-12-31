// import tokenService from '@/common/accessToken.service'
import AdminApiService from '@/common/admin/api.service'

import { SET_ERROR, SET_AUTH } from './mutations.type'

import { ADMIN_METAMASK_TOPUP,ADD_POWER,GET_WITHDRAW_VERIFIED, ADD_BUSNIESS, ADD_BUSNIESS_UPLINE, UPDATE_PASSWORD, GET_ASSIGRIGHTS, GET_SUBADMIN_NAV, GET_SUBADMIN, UPDATE_SUBADMIN, CREATE_SUBADMIN, ADMIN_PRODUCTBASE, PRODUCT, ADMIN_TOPUP, CHECKUSEREXISTED, ADMIN_TOPUP_REPORT, ADMIN_REMOVE_FUND_REPORT, REMOVE_FUND, ADMIN_ADD_FUND_REPORT, ADD_FUND, BLOCK_DIRECT_INCOME, BLOCK_BINARY_INCOME, BLOCK_FUND_TRANSFER, BLOCK_FUND_WITHDRAW, GET_ACCOUNT_WALLET, GET_WITHDRAW_REJECTED, GET_WITHDRAW_VERIFY_OTP, GET_WITHDRAW_VERIFY, GET_WITHDRAW_SUMMARY, GET_WITHDRAW_CONFIRM, VIEW_PROFILE, USER_BLOCK, ADMIN_OTP, ADMIN_UPDATE_PROFILE, ADMIN_GETUSER_PROFILE, ADMIN_QUALIFIED_USER, ADMIN_DAILYBOUNS, ADMIN_DASHBOARD, AdminLOGIN, PROJECTSETTINGS, ADMIN_DIRECT_INCOME, ADMIN_BINARY_INCOME, ADD_RANK, ADD_RANK_POWER, Get_All_Rank, ADD_Rank_POWERUPLINE, RANK_CRON, Get_ACTIVE_CRONS, UPDATE_PRODUCT_TOPUP, EDIT_GETUSER_PROFILE, GET_STATUS_COUNT, GET_CONFIRM_ADDTRANS, GET_FUND_TRANS_COUNT, GET_FUND_COIN_PAYMENT, GET_USER_DETAILS, GET_ICO_PHASE, PURCHASECOIN_ADMIN, TRANSFER_ICO_COIN, ADMIN_COIN_DETAILS, GET_ADMIN_NAV, GET_OTP_STATUS, CHANGE_OTP_STATUS, USER_ADMIN_UPDATE_PROFILE, PROJECT_ADMIN_GETUSER_PROFILE, GET_COUNTRY, ADMIN_SETTING_FUND_REPORT, ADMIN_SETTING_REMOVE_FUND_REPORT, ADMIN_SETTING_ADD_FUND, ADMIN_SETTING_REMOVE_FUND, UPDATE_BULK_USER, APPROVE_WITHDRAW, REJECT_WITHDRAW, SEND_WITHDRAW, APPROVE_WITHDRAW_REQUEST, GETWITHDRAWDATE, WITHDRAW_BY_DATE, UPDATE_WITHDRAW_SETTING, ASSIGN_TO_ADMIN, ADMIN_REMOVE_FUND_WORKING, REMOVE_FUND_WORKING, ENQUIRIES, ENQUIRYREPLY, SHOWDOWNLINEUSERS, USERTRANSFERREPORT, GETUSERLOGS, GETENTRIES, GETBULKSTRUCTURE, GETUSER, GET_ADMIN_OTP_STATUS, USER_REGISTER_FROM_ADMIN, ASSIGN_RANK,ASSIGN_RANK_REPORT,UPDATEPRODUCT } from './actions.type'

//import { GET_WITHDRAW_VERIFIED,ADD_BUSNIESS,ADD_BUSNIESS_UPLINE,UPDATE_PASSWORD,GET_ASSIGRIGHTS,GET_SUBADMIN_NAV, GET_SUBADMIN, UPDATE_SUBADMIN, CREATE_SUBADMIN, ADMIN_PRODUCTBASE, PRODUCT, ADMIN_TOPUP, CHECKUSEREXISTED, ADMIN_TOPUP_REPORT, ADMIN_REMOVE_FUND_REPORT, REMOVE_FUND, ADMIN_ADD_FUND_REPORT, ADD_FUND, BLOCK_DIRECT_INCOME, BLOCK_BINARY_INCOME, BLOCK_FUND_TRANSFER, BLOCK_FUND_WITHDRAW, GET_ACCOUNT_WALLET, GET_WITHDRAW_REJECTED, GET_WITHDRAW_VERIFY_OTP, GET_WITHDRAW_VERIFY, GET_WITHDRAW_SUMMARY, GET_WITHDRAW_CONFIRM, VIEW_PROFILE, USER_BLOCK, ADMIN_OTP, ADMIN_UPDATE_PROFILE, ADMIN_GETUSER_PROFILE, ADMIN_QUALIFIED_USER, ADMIN_DAILYBOUNS, ADMIN_DASHBOARD, AdminLOGIN, PROJECTSETTINGS, ADMIN_DIRECT_INCOME, ADMIN_BINARY_INCOME, ADD_RANK,ADD_RANK_POWER,Get_All_Rank,ADD_Rank_POWERUPLINE,RANK_CRON,Get_ACTIVE_CRONS,UPDATE_PRODUCT_TOPUP,EDIT_GETUSER_PROFILE,GET_STATUS_COUNT,GET_CONFIRM_ADDTRANS,GET_FUND_TRANS_COUNT,GET_FUND_COIN_PAYMENT,GET_USER_DETAILS,GET_ICO_PHASE,PURCHASECOIN_ADMIN,TRANSFER_ICO_COIN,ADMIN_COIN_DETAILS,GET_ADMIN_NAV,GET_OTP_STATUS,CHANGE_OTP_STATUS,USER_ADMIN_UPDATE_PROFILE,PROJECT_ADMIN_GETUSER_PROFILE,GET_COUNTRY } from './actions.type'



const actions = {
  // Admin

  [AdminLOGIN](context, credentials) {
    return new Promise(resolve => {
      console.log(credentials)
      let datas = credentials;
      AdminApiService.post('login', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data)
        })
    })
  },
  [PROJECTSETTINGS](context) {
    return new Promise(resolve => {
      AdminApiService.get('getprojectsettings')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_DIRECT_INCOME](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getdirectincome', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [CHECKUSEREXISTED](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('checkuserexist', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_BINARY_INCOME](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getbinaryincome', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_DASHBOARD](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('getDashboardSummary', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_DAILYBOUNS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getdailybouns', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_QUALIFIED_USER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getqualifieduser', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_GETUSER_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getuserprofile', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_UPDATE_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('updateuser', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_OTP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('send-otp-withdraw-mail', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [USER_BLOCK](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('blockuser', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [VIEW_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('viewprofile', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_CONFIRM](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getwithdrwalconfirmed', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_VERIFIED](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getwithdrwalverified', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_SUMMARY](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getWithdrawalSummary', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_VERIFY](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getwithdrwalverify', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_VERIFY_OTP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('verify/withdrwalrequest', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_WITHDRAW_REJECTED](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('rejected_withdrawals', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_ACCOUNT_WALLET](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getaccountwallet', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [BLOCK_FUND_WITHDRAW](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('block-fund-withdraw', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [BLOCK_FUND_TRANSFER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('block-roi-withdraw', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [BLOCK_BINARY_INCOME](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('stop-binary-income', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [BLOCK_DIRECT_INCOME](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('stop-direct-income', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_FUND](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('fund_request', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_ADD_FUND_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('fund_report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [REMOVE_FUND](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('remove_fund_request', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_REMOVE_FUND_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('remove_fund_report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_TOPUP_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('gettopup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_TOPUP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('store/topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_METAMASK_TOPUP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('store/metamask-topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [PRODUCT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('show/products', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_PASSWORD](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('updateuserpassword', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [CREATE_SUBADMIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('create/subadmin', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_SUBADMIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('update/subadmin', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_SUBADMIN](context) {
    return new Promise(resolve => {
      AdminApiService.get('getsubadmins')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_SUBADMIN_NAV](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getsubadminnavigation', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_ASSIGRIGHTS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('assignrights', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },

  [ADMIN_PRODUCTBASE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('getlevelviewtree/productbase', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_RANK](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/store/AddRank', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ASSIGN_RANK](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/store/AssignRank', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },

  [ADD_RANK_POWER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('add_rankpower', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [Get_All_Rank](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('get-all-rank', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_Rank_POWERUPLINE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('add_rankpower_upline', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [RANK_CRON](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/RunCronFromAdminSide', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [Get_ACTIVE_CRONS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/getactivecrons', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_PRODUCT_TOPUP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('update/product-topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [EDIT_GETUSER_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/edit/product-topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_STATUS_COUNT](context) {
    return new Promise(resolve => {
      AdminApiService.get('gettransactionstatuscount')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_CONFIRM_ADDTRANS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getconfirmaddrtrans', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_FUND_TRANS_COUNT](context) {
    return new Promise(resolve => {
      AdminApiService.get('getfundtransactionstatuscount')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_FUND_COIN_PAYMENT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getfundcoincaymentreport', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_USER_DETAILS](context) {
    return new Promise(resolve => {
      AdminApiService.get('user-details')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_ICO_PHASE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getIcoPhasesLive', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [PURCHASECOIN_ADMIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('purchaseCoinAdmin', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [TRANSFER_ICO_COIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('transferIcoCoin', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_COIN_DETAILS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('get-admin-coin-details', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_ADMIN_NAV](context) {
    return new Promise(resolve => {
      AdminApiService.get('getadminnavigation')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_OTP_STATUS](context) {
    return new Promise(resolve => {
      AdminApiService.get('getotpsts')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [CHANGE_OTP_STATUS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('changeotpstatus', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },



  [ADD_RANK_POWER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('add_rankpower', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [Get_All_Rank](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('get-all-rank', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_Rank_POWERUPLINE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('add_rankpower_upline', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [RANK_CRON](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/RunCronFromAdminSide', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [Get_ACTIVE_CRONS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/getactivecrons', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_PRODUCT_TOPUP](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('update/product-topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [EDIT_GETUSER_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('/edit/product-topup', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_BUSNIESS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('add-bussiness', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_BUSNIESS_UPLINE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('add-bussiness-upline', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [USER_ADMIN_UPDATE_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('updateproject', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [PROJECT_ADMIN_GETUSER_PROFILE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('projectsetting', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_COUNTRY](context) {
    return new Promise(resolve => {
      AdminApiService.get('getcountry')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_PRODUCTBASE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('getlevelviewtree/productbase', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_SETTING_FUND_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('setting_fund_report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_SETTING_REMOVE_FUND_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('setting_remove_fund_report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_SETTING_ADD_FUND](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('add_setting_fund', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_SETTING_REMOVE_FUND](context, data) {
    return new Promise(resolve => {
      let datas = data;
      AdminApiService.post('remove_fund_request', datas)
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_BULK_USER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('updatebulkusers', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [APPROVE_WITHDRAW](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('approveWithdraw', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [REJECT_WITHDRAW](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('reject/withdrwalrequest', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [SEND_WITHDRAW](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('send/withdrwalrequest', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [APPROVE_WITHDRAW_REQUEST](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('approve/withdrawalrequest', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GETWITHDRAWDATE](context) {
    return new Promise(resolve => {
      AdminApiService.get('getupdatewithdrawdate')
        .then(({ data }) => {
          // console.log(data,'datadata')
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [WITHDRAW_BY_DATE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('withdraw_by_date', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATE_WITHDRAW_SETTING](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('update_withdraw_setting', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ASSIGN_TO_ADMIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('assigntoadmin', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADMIN_REMOVE_FUND_WORKING](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('remove_dxwallet_fundReport', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [REMOVE_FUND_WORKING](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('remove_dxwallet_fund', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },

  [ENQUIRIES](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('enquiries', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ENQUIRYREPLY](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('enquiry-reply-report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [SHOWDOWNLINEUSERS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('showDownlineUsers', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ADD_POWER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('add-power', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [USERTRANSFERREPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('user-transfer-balance-report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GETUSERLOGS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getuserlogs', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GETENTRIES](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getBulkEntries', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GETBULKSTRUCTURE](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('updateBulkStructure', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GETUSER](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('getusers', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [GET_ADMIN_OTP_STATUS](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('GetAdminOtpStatus', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [USER_REGISTER_FROM_ADMIN](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('register', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [ASSIGN_RANK_REPORT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('assign_rank_report', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
  [UPDATEPRODUCT](context, data) {
    return new Promise(resolve => {
      let datas = data;
      console.log(data)
      AdminApiService.post('update-product', datas)
        .then(({ data }) => {
          context.commit(SET_AUTH, data.user)
          resolve(data)
        })
        .catch(({ response }) => {
          console.log(SET_ERROR, 'response')
          context.commit(SET_ERROR, response.data.errors)
        })
    })
  },
}

export default {
  actions
}