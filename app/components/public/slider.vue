<template>
  <section :class="cname">
    <swiper :options="options" :not-next-tick="options.notNextTick">
      <swiper-slide v-for="item in items" :key="item.href">
        <router-link :to="item.href">
          <img :src="item.src">
        </router-link>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination" v-if="options.pagination"></div>
    </swiper>
  </section>
</template>
<script type="text/ecmascript-6">
  import { swiper, swiperSlide } from 'vue-awesome-swiper';

  export default {
    props: {
      cname: {
        type: String,
        default: ''
      },
      options: {
        type: Object,
        default: function () {
          return {
            autoplay: true,
            loop: true,
            pagination: {
              el: ".swiper-pagination"
            },
            notNextTick: false
          }
        }
      },
      items: {
        type: Array,
        default: function () {
          return []
        }
      }
    },
    components: {
      swiper,
      swiperSlide
    }
  };

</script>
<style type="text/css">
  @import '~swiper/dist/css/swiper.css';
</style>