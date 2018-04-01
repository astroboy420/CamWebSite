<template>
  <div class="home">
    <hheader></hheader>
    <hslider></hslider>
    <advantage></advantage>
    <hot></hot>
    <hfooter></hfooter>
    <navbar></navbar>
  </div>
</template>
<script type="text/ecmascript-6">
  import hheader from '../public/header.vue';
  import hslider from './hslider.vue';
  import advantage from './advantage.vue';
  import hot from './hot.vue';
  import hfooter from '../public/footer.vue';
  import navbar from '../public/navbar.vue';
  export default {
    components: {
      hheader,
      hslider,
      advantage,
      hot,
      hfooter,
      navbar
    }
  };
</script>
<style lang="scss">
  .home{
    padding-bottom: 150px;
  }
</style>
