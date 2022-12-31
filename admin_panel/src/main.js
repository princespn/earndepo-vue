import { createApp } from 'vue'
import AdminApp from "./AdminApp.vue";
import adminRoutes from "./adminRouter";
import adminstore from './adminstore'
import VueApexCharts from "vue3-apexcharts";
import axios from "axios";
import Vuelidate from 'vuelidate';
import VeeValidate from "vee-validate";
import VueAxios from "vue-axios"
import AdminApiService from './common/admin/api.service'
import Toaster from '@meforma/vue-toaster';
import { library } from "@fortawesome/fontawesome-svg-core";
import {
    faEllipsisVertical, faPhone, faAlignJustify, faBell, faCircleQuestion, faHouse, faGear, faCaretDown,
    faArchway, faBuildingColumns, faCircle, faEye, faUser, faStar, faLocationDot, faLock, faMagnifyingGlass, faCaretLeft, faCaretRight
} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
library.add(fab);
import { far, faCircleDot } from '@fortawesome/free-regular-svg-icons';
library.add(far, faCircleDot);
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import 'vue-loading-overlay/dist/vue-loading.css';
import "bootstrap/dist/css/bootstrap.min.css";
import "datatables.net-bs4";
import "datatables.net-bs4/css/dataTables.bootstrap4.min.css";
import "datatables.net-buttons-bs4";
import "datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css";
import adminInterceptor from "./interceptors";
import 'jquery/dist/jquery.min.js';
import VueToast from 'vue-toast-notification';
import 'vue-toast-notification/dist/theme-default.css';
import "toastr";
// import VueTelInput from 'vue-tel-input';

library.add(faEllipsisVertical, faPhone, faAlignJustify, faBell, faCircleQuestion, faHouse, faGear, faCaretDown, faArchway, faBuildingColumns, faCircle,
    faEye, faUser, faStar, faLocationDot, faLock, faMagnifyingGlass, faCaretLeft, faCaretRight);



createApp(AdminApp).use(VueApexCharts).use(adminInterceptor).use(Toaster).use(VueToast).use(Vuelidate, VeeValidate).use(adminRoutes).use(VueAxios, axios).use(adminstore).component("apexchart", VueApexCharts).component("font-awesome-icon", FontAwesomeIcon).mount('#AdminApp')
AdminApiService.init()



