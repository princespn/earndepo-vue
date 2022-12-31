<template>
  <div class="admin-nav-header">
    <a href="#" class="admin-brand-logo">
      <img :src="adminAssets + '/images/adminlogo.png'" class="img-fluid">
    </a>
    <div class="admin-nav-control">
      <div class="hamburger">
        <span class="line"></span><span class="line"></span><span class="line"></span>
      </div>
    </div>
  </div>

  <div class="admin-header-top">
    <div class="header-content">
      <nav class="admin-navbar navbar-expand">
        <div class="collapse navbar-collapse justify-content-between">
          <div class="header-left">
            <div class="dashboard_bar"></div>
          </div>
          <div class="header-right">
            <li>
              <span class="btn btn-primary mt-4" @click="logout">Logout</span>
            </li>
          </div>
        </div>
      </nav>
    </div>
  </div>
  <div class="deznav">
    <div class="deznav-scroll">
      <div id="sidebar-menu" style="overflow: hidden !important">
        <ul>
          <li v-for="(nav, index) in navigations" class="has_sub" :class="{ 'nav-active': showMenu === index }"
            :key="nav.parent.id">
            <router-link class="waves-effect" :to="
              nav.parent.child.length > 0
                ? ''
                : '/' + nav.parent.path
            " @click="addExpandClass(index)">
              <i class="fa fa-money"></i>
              <span> {{ nav.parent.menu }} </span>
              <span class="pull-right" v-if="nav.parent.child.length > 0">
                <i class="mdi mdi-chevron-right"></i>
              </span>
            </router-link>
            <ul class="list-unstyled" v-if="nav.parent.child.length > 0">
              <li v-for="sub_nav in nav.parent.child" :key="sub_nav.id">
                <router-link :to="'/' + sub_nav.path">{{ sub_nav.menu }}</router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { adminAssets } from "../../../admin_config.js";
export default {
  name: "User-Navbar",
  components: {},
  data() {
    return {
      navigations: "",
      showMenu: "",
      adminAssets: adminAssets,
    };
  },
  mounted() {
    this.getNavigations();
  },
  methods: {
    getNavigations() {
      axios
        .post("/get-admin-navigation-detail", {})
        .then((resp) => {
          this.navigations = resp.data.data;
        })
        .catch();
    },
    addExpandClass(element) {
      if (element === this.showMenu) {
        this.showMenu = "0";
      } else {
        this.showMenu = element;
      }
    },
    // logout() {
    //   axios
    //     .post("/logout", {})
    //     .then((resp) => {
    //       if (resp.data.code === 200) {
    //         localStorage.clear();
    //         this.$router.push({ name: 'login' });
    //         setTimeout(function () {
    //           location.reload();
    //         }, 100);
    //       }
    //       localStorage.clear();
    //       this.$router.push({ name: 'login' });
    //       setTimeout(function () {
    //         location.reload();
    //       }, 100);
    //     })
    //     .catch((err) => {
    //       this.$toast.error(err);
    //     });
    // },

    logout() {

      localStorage.removeItem('admin_token');
      location.reload();
      this.$router.push({ name: 'login' });
    }

  },
};
</script>
