<template>
  <div>
    <panel title="领先优势" :cname="$style.hpanel">
      <section :class="$style.list">
        <div v-for="item in items" :class="$style.item" :key="item.title">
          <router-link :to="{name: item.href}">
            <img :src="item.src">
            <h4>{{item.title}}</h4>
            <p v-html="item.detail"></p>
          </router-link>
        </div>
        <div :class="$style.col"></div>
        <div :class="$style.row"></div>
      </section>
    </panel>
  </div>
</template>
<script type="text/ecmascript-6">
  import panel from '../public/panel.vue';
  import adv1 from '../image/advantage1.png';
  import adv2 from '../image/advantage2.png';
  import adv3 from '../image/advantage3.png';
  import adv4 from '../image/advantage4.png';
  export default {
    data () {
      return {
        items: [{
          title: '专家咨询',
          detail: '行业专家 <span>429</span> 位',
          src: adv1,
          href: 'expert'
        },
        {
          title: '装备制造',
          detail: '服务企业 <span>14356</span> 家',
          src: adv2,
          href: ''
        },
        {
          title: '标检认证',
          detail: '服务机构 <span>384</span> 位',
          src: adv3,
          href: ''
        },
        {
          title: '高端平台',
          detail: '需求发布 <span>12234</span> 条',
          src: adv4,
          href: ''
        }]
      }
    },
    components: {
      panel
    }
  };
</script>
<style lang="scss" module>
  @import '../../css/element.scss';
  .hpanel{
    .list{
      @include list(row);
      background: #fff;
      position: relative;
      .item{
        width: 530px;
        padding: 30px;
        a{
          text-decoration: none;
        }
        img{
          float: right;
          width: 180px;
          height: 180px;
          margin-right: 30px;
        }
        h4{
          font-size: 42px;
          margin: 30px;
          color: #000;
        }
        p{
          font-size: 28px;
          margin: 30px;
          color: #666;
          span{
            color: red;
            font-weight: bold;
          }
        }
      }
      .col{
        border-right: 2px dotted #333;
        height: 460px;
        position: absolute;
        top: 10px;
        left: 600px;
        width: 1px;
      }
      .row{
        position: absolute;
        border-bottom: 2px dotted #333;
        height: 1px;
        width: 90%;
        top: 240px;
        left: 50px;
      }
    }
  }
</style>
