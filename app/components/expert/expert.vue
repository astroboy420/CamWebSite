<template>
  <div class="expert">
    <vheader></vheader>
    <ebanner></ebanner>
    <elist></elist>
    <efooter></efooter>
    <navbar></navbar>
  </div>
</template>
<script type="text/ecmascript-6">
  import vheader from '../public/header.vue';
  import navbar from '../public/navbar.vue';
  import ebanner from './banner.vue';
  import elist from './list.vue';
  import efooter from '../public/footer.vue';
  export default {
    components: {
      vheader,
      ebanner,
      navbar,
      elist,
      efooter
    }
  };
</script>
<style lang="scss">
  .expert{
    padding-bottom: 150px;
  }
</style>
