import Vuex from 'vuex'
import auth from './auth.module'
import { createApp } from 'vue'
import AdminApp from '@/AdminApp.vue'

 const app = createApp((AdminApp))
 app.use(Vuex)

export default new Vuex.Store({
  modules: {
    // home,
    auth
    // article,
    // profile
  }
})
