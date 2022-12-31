<template>
  <div>
    <NavBar></NavBar>
    <slot />
  </div>
</template>
<script>
import NavBar from "@/components/shared-components/Navbar";
export default {
    name:'Default-page',
  components: {
    NavBar,
  }
};
</script>
