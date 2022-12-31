import { createRouter, createWebHistory } from "vue-router";
// import Guard from "@/core/middleware";
import ThankYou from "@/components/user/ThankYou";
import Login from "@/components/user/Auth/Login";
import Register from "@/components/user/Auth/Register";
import Reset from "@/components/user/Auth/Reset";
import Dashboard from "@/components/user/Dashboard";
import Profile from "@/components/user/Profile";
import Activation from "@/components/user/Activation";
import WithdrawReport from "@/components/user/WithdrawReport";
import TreeView from "@/components/user/TreeView";
import Feedback from "@/components/user/Feedback";
import Query from "@/components/user/Query";
import Help from "@/components/user/Help";
import Trading from "@/components/user/Trading";
const routes = [
   
    {
        path:'/thankyou',
        name:'thankyou',
        component:ThankYou,
    },
    {
        path:'/login',
        name:'login',
        component:Login
    },
    // {
    //     path: '/:pathMatch(.*)*',
    //     component: () =>
    //     import( /* webpackChunkName: "about" */ "@/components/user/Dashboard"),
    //     beforeEnter: Guard.auth,
    // },
    {
        path:'/register',
        name:'register',
        component:Register
    },
    {
        path:'/reset',
        name:'reset',
        component:Reset
    },
    {
        path:'/',
        name:'dashboard',
        component:Dashboard,
        //component: () =>
        //import( /* webpackChunkName: "about" */ "@/components/user/Dashboard"),
        // beforeEnter: Guard.auth,
       
    },
    {
        path:'/profile',
        name:'profile',
        component:Profile,
    },
    {
        path:'/activation',
        name:'activation',
        component:Activation,
    },
    {
        path:'/withdrawreport',
        name:'withdrawreport',
        component:WithdrawReport,
    },
    {
        path:'/treeview',
        name:'treeview',
        component:TreeView,
    },
    {
        path:'/feedback',
        name:'feedback',
        component:Feedback,
    },
    {
        path:'/query',
        name:'query',
        component:Query,
    },
    {
        path:'/help',
        name:'help',
        component:Help,
    },
    {
        path:'/trading',
        name:'trading',
        component:Trading,
    },   
]
const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
  })
export default router;
