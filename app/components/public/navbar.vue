<template>
  <div class="navbar">
    <div v-for="item in nav" class="item" :key="item.title">
      <img :src="item.src">
      <p>{{item.title}}</p>
    </div>
  </div>
</template>
<script type="text/ecmascript-6">
  import nav1 from '../image/nav1.png';
  import nav2 from '../image/nav2.png';
  import nav3 from '../image/nav3.png';
  import nav4 from '../image/nav4.png';
  export default {
    // props: {
    //   cname: {
    //     type: String,
    //     default: ''
    //   }
    // },
    data () {
      return {
        nav: [{
          src: nav1,
          title: '集团概况'
        },
        {
          src: nav2,
          title: '集团动态'
        },
        {
          src: nav3,
          title: '联系我们'
        },
        {
          src: nav4,
          title: '个人中心'
        }]
      }
    }
  };
</script>
<style lang="scss">
  @import '../../css/element.scss';

  .navbar{
    @include list(row);
    justify-content: space-around;
    position: fixed;
    left: 0;
    right: 0;
    bottom: 0;
    background: #fff;
    text-align: center;
    padding: 10px;
    .item{
      img{
        width: 66px;
        height: 63px;
      }
      p{
        font-size: 28px;
        height: 36px;
        line-height: 36px;
        margin-top: 15px;
      }
    }
  }
</style>
