<template>
  <div>
    <slider :cname="$style.slider" :items="items"></slider>
    <section :class="$style.list">
      <div v-for="item in business" :key="item.href" :class="$style.item">
        <router-link :to="item.href">
          <img :src="item.src">
          <h4>{{item.title}}</h4>
        </router-link>
      </div>
    </section>
  </div>
</template>
<script type="text/ecmascript-6">
  import slider from '../public/slider.vue';
  import img1 from '../image/slider1.png';
  import img2 from '../image/slider2.png';
  import img3 from '../image/slider3.png';
  import img4 from '../image/slider4.png';
  import icon1 from '../image/icon1.png';
  import icon2 from '../image/icon2.png';
  import icon3 from '../image/icon4.png';
  import icon4 from '../image/icon5.png';
  import icon5 from '../image/icon9.png';
  export default {
    data () {
      return {
        items: [{
          href: 'slider1',
          src: img1
        },
        {
          href: 'slider2',
          src: img2
        },
        {
          href: 'slider3',
          src: img3
        },
        {
          href: 'slider4',
          src: img4
        }],
        business: [{
          href: 'business1',
          src: icon1,
          title: '装备制造'
        },
        {
          href: 'business2',
          src: icon2,
          title: '材料加工'
        },
        {
          href: 'business3',
          src: icon3,
          title: '软件开发'
        },
        {
          href: 'business4',
          src: icon4,
          title: '标检认证'
        },
        {
          href: 'business5',
          src: icon5,
          title: '云制造'
        }]
      }
    },
    components: {
      slider
    }
  };
</script>
<style lang="scss" module>
  @import '../../css/element.scss';
  .slider{
    margin-top: 100px;
    img{
      width: 100%;
    }
  }
  .list{
    @include list(row);
    background: #fff;
    padding: 40px 0 20px 0;
    justify-content: space-around;
    a{
      text-decoration: none;
    }
    .item{
      text-align: center;
      img{
        width: 90px;
        height: 90px;
      }
      h4{
        font-size: 26px;
        margin-top: 12px;
        color: #666;
      }
    }
  }
</style>