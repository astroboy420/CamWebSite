<template>
  <panel cname="expertsBanner">
    <img src="../image/banner.png">
  </panel>
</template>
<script type="text/ecmascript-6">
  import panel from '../public/panel.vue';
  export default {
    components: {
      panel
    }
  };
</script>
<style lang="scss">
  .expertsBanner{
    margin: 100px 0px 0px 0px;
    h4{
      display: none;
    }
    img{
      width: 100%;
      display: block;
    }
  }
</style>
