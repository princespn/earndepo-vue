import axios from 'axios'
import VueAxios from 'vue-axios'
// import tokenService from '@/common/accessToken.service'
import { serveApiUserHost } from '../../../admin_config'
import { createApp } from 'vue'
import AdminApp from '@/AdminApp.vue'
const app = createApp((AdminApp))

const AdminApiService = {
  init () {
    app.use(VueAxios, axios)
    app.axios.defaults.baseURL = serveApiUserHost
    console.log('123')
  },

  setHeader() {
    // Vue.axios.defaults.headers.common["token"] = `${JwtService.getToken()}`;
    // app.axios.defaults.headers.common["Authorization"] = `Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijg3YWY0NTBmNmNmODlkZTMzNmMwMWY0NGUyYmI3ZDg4MmM0NWRhNTUzNDk1N2Q3MTAyYjQ5NzI1MjkyMmVjNGQzZjk4ODFiZWUzMmU5MGMxIn0.eyJhdWQiOiI2IiwianRpIjoiODdhZjQ1MGY2Y2Y4OWRlMzM2YzAxZjQ0ZTJiYjdkODgyYzQ1ZGE1NTM0OTU3ZDcxMDJiNDk3MjUyOTIyZWM0ZDNmOTg4MWJlZTMyZTkwYzEiLCJpYXQiOjE2NDg3MjIxMjAsIm5iZiI6MTY0ODcyMjEyMCwiZXhwIjoxNjgwMjU4MTIwLCJzdWIiOiIxMDE3OCIsInNjb3BlcyI6WyIqIl19.I06lgnBsLQZSOuTsBHJo-i2YMtOXLreiFYhfXo5QuS0mTAZtcNOr4oOnrjI6iA4PxmvJqxXWJPqJtQafMf5q6CLJRBP_Z5myzfBazzHYaTrx6BXrVnRl-wPA1AxjS_WJ0wPaMAuEjld7aS114yxEx6-b3KVtKUp5NPz83m-Qr2POFGIEiT8BQPseboYzlZegzMiZG8z4Gd7j_GzgzJHkFoHMC9PjX5dHhAhU1Z2FiT3LsrOm-MeZSwfEZvjagy-YHPokfX0owVWKTZEYEsCkv3N8ToRvYm7X1pKltgNePNzRxq76tG_6Py-2932s7g_zdFCBHUXyy34cO2p8_kE8A1TjmaHNgyjGoP89hJDJ9YkBNR4doGLbshje2Ku7XqN0zZVk_Y2j_pYczcUtQi7Rtat2G48QMUvDkiWASxLmbYY_LV-hSinQQmHeR94RuRPsfBCCO5ROecgRzpryC150zz3urEUrTO1QNR0yKCbOlwgfRmUmuSEcA9UttMz_U-FJ7BPoT6nHhlUzW_uvZF5CBWUW42XH-eNO0EYTR-ebt74pT809cFpePTpK_skSP8TdyXahELbWcmsblo-3SfYFodcr3zAsjssIv7ATq4eQhRAt89pFfoZh0xOnQLV08qbMmy1c3fZ06D5YeSZuYhb9HYPHP_Ww_z2DyXhf9IiOiBY`;
    // app.axios.http.headers.common['Access-Control-Allow-Origin'] = '*';

  },
  query (resource, params) {
    return app.axios.get(resource, params).catch(error => {
      throw new Error(`ApiService ${error}`)
    })
  },

  get (resource, config= '') {
    return app.axios.get(`${resource}`, config)
  },

  post (resource, params , config= '') {
    return app.axios.post(`${resource}`, params, config)
  },

  update (resource, slug, params) {
    return app.axios.put(`${resource}/${slug}`, params)
  },

  put (resource, params) {
    return app.axios.put(`${resource}`, params)
  },

  delete (resource) {
    return app.axios.delete(resource).catch(error => {
      throw new Error(`ApiService ${error}`)
    })
  }
}

export default AdminApiService
