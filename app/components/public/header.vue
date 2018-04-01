<template>
  <div class="header">
    <btn cname="loginBtn">登录|注册</btn>
  </div>
</template>
<script type="text/ecmascript-6">
  import btn from './btn.vue';
  export default {
    components: {
      btn
    }
  };
</script>
<style lang="scss">
  .header{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height:100px;
    background: #fff url('../image/logo3.png') center center no-repeat;
    background-size: 600px;
    z-index: 100;
    .loginBtn{
      float: right;
      font-size: 12px;
      height: 32px;
      line-height: 32px;
      padding: 10px;
      margin: 26px 40px 0 0;
      background-color: #0b419b;
    }
  }
</style>