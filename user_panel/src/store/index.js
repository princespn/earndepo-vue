import Vuex from 'vuex'
import auth from './auth.module'
import { createApp } from 'vue'
import App from '@/App.vue'

 const app = createApp((App))
 app.use(Vuex)

export default new Vuex.Store({

  modules: {
    // home,
    auth
    // article,
    // profile
  },
  state: {
    user_id:'',
    password:'',
    time:'',
    id:''
  },
  getters: {
    getUserid(state) {
     return state.user_id;
    },
    getpassword(state) {
      return state.password;
     },
     gettime(state) {
      return state.time;
     },
     getid(state) {
      return state.id;
     },
  },
  mutations: {
    setUserid(state, payload) {
      state.user_id = payload;
    },
    setpassword(state, payload) {
      state.password = payload;
    },
    settime(state, payload) {
      state.time = payload;
    },
    setid(state, payload) {
      state.id = payload;
    },
  },
  actions: {
    setUserid({commit}, payload) {
      commit('setUserid',payload)
    },
    setpassword({commit}, payload) {
      commit('setpassword',payload)
    },
    settime({commit}, payload) {
      commit('settime',payload)
    },
    setid({commit}, payload) {
      commit('setid',payload)
    },
  }
})
