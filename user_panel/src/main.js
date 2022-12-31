import { createApp } from 'vue'
import App from './App.vue'
import store from './store'
import router from './router'
import VueApexCharts from "vue3-apexcharts";
import axios from "axios";
import Vuelidate from 'vuelidate';
import VeeValidate from "vee-validate";
import VueAxios from "vue-axios"
import ApiService from './common/api.service'
import userInterceptor from "./core/interceptor";
import Toaster from '@meforma/vue-toaster';
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import 'vue-loading-overlay/dist/vue-loading.css';
import Pagination from 'v-pagination-3';
import VueClipboard from 'vue3-clipboard';
import VueLoading from 'vue-loading-overlay';
import "datatables.net-bs4/css/dataTables.bootstrap4.min.css";
import "datatables.net-buttons-bs4";
import "datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css";
import 'jquery/dist/jquery.min.js';
import 'vue-toast-notification/dist/theme-default.css';
import "toastr";

createApp(App).use(VueClipboard, { autoSetContainer: true, appendToBody: true, })
    .component('pagination', Pagination).use(VueLoading).use(VueApexCharts).use(Toaster).use(userInterceptor).use(Vuelidate, VeeValidate).use(router).use(VueAxios, axios).use(store).component("apexchart", VueApexCharts).component("font-awesome-icon", FontAwesomeIcon).mount('#app')
ApiService.init()


