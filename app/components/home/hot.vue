<template>
  <panel title="明星产品" :cname="$style.hpanel">
    <section :class="$style.list">
      <div v-for="item in goods" :class="$style.goods" :key="item.title">
        <img :src="item.src">
        <dl>
          <dt>{{item.title}}</dt>
          <dd>{{item.detail}}</dd>
        </dl>
      </div>
    </section>
  </panel>
</template>
<script type="text/ecmascript-6">
  import panel from '../public/panel.vue';
  import hot1 from '../image/hot1.png';
  import hot2 from '../image/hot2.png';
  import hot3 from '../image/hot3.png';
  export default {
    data () {
      return {
        goods: [{
          title: '数字化无铸造精密成形机',
          detail: '其改变传统铸造模具翻砂造型，实现砂型无模成形，大幅度缩短流程，提高复杂件制造精度，推动铸造技术革命，实现了大型、复杂、高精度、壁厚悬殊铸件的短周期、高精度、高质量、低成本制造，为企业新产品开发、小批量试制提供了快速的解决方案。',
          src: hot1
        },
        {
          title: '智能锻造生产线',
          detail: '全自动化锻造生产线采用自主开发的多道次小变形曲轴锻造工艺技术、长寿命模具技术与模具快换技术，基于工业机器人和同步运动控制技术的快速物流系统，以及基于总线系统的过程监控和安全监控控制系统。',
          src: hot2
        },
        {
          title: '金属板材加工自动化生产线',
          detail: '金属板材加工成套技术及装备，包括彩涂生产线、热镀锌生产线、电镀锡生产线、电镀铬生产线、热轧/ 冷轧不锈钢退火酸洗生产线、马口铁基板连续退火生产线、电解脱脂生产线、推拉式酸洗生产线、拉矫切边生产线、铝板清洗重卷生产线、铝板DOS 油涂层生产线、金属板覆膜生产线等。',
          src: hot3
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

  .list{
    @include list(row);
    justify-content: space-around;
    padding-bottom: 30px;
    .goods{
      width: 320px;
      border-right:2px dotted #333;
      padding: 30px;
      text-align: center;
      img{
        width: 234px;
        height: 197px;
        margin-bottom: 20px;
      }
      dl{
        text-align: center;
        dt{
          font-size: 30px;
          font-weight: bold;
          text-align: enter;
          margin-bottom: 20px;
          overflow: hidden;
          white-space: nowrap;
          text-overflow: ellipsis;
          height: 36px;
          line-height: 36px;
        }
        dd{
          font-size: 24px;
          text-align: left;
          text-indent: 2em;
          display: -webkit-box;
          -webkit-box-orient: vertical;
          -webkit-line-clamp: 5;
          overflow: hidden;
          line-height: 32px;
        }
      } 
    }
    :last-child{
      border-right: 0;
    }
  }  
</style>
