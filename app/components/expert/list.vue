<template>
  <div class="experts">
    <ul class="expertsFilter">
      <li v-for="(item,index) in majors" @click="toggle(index);expert(item.title)" :class="{expertsActive: index == current}" :key="item.title">{{item.title}}</li>
    </ul>
    <ul class="expertsList">
      <li class="expertsItem" v-for="item in experts" :key="item.name">
        <img :src="'./static/userlogo/'+item.src">
        <section>
          <h4>{{item.name}} | {{item.title}}</h4>
          <p>{{item.detail}}</p>
        </section>
      </li>
    </ul>
  </div>
</template>
<script type="text/ecmascript-6">
  import axios from 'axios';
  export default {
    data () {
      return {
        current: 0,
        majors: [
          {
            title: '制造专家'
          },
          {
            title: '材料专家'
          },
          {
            title: '设计专家'
          },
          {
            title: '检测专家'
          },
          {
            title: '标准专家'
          },
          {
            title: '认证专家'
          }
        ],
        experts: []
      }
    },
    methods: {
      toggle: function (index) {
        this.current = index;
      },
      expert: function (major) {
        let vthis = this;
        axios.get('./static/php/expert.php',{
          params:{major:major}
        })
        .then(function(res){
          console.log(res.data);
          vthis.experts = res.data;
          console.log(vthis.experts);
        })
        .catch(function(err){
          console.log(err);
        });
      }
    },
    created: function (){
      let vthis = this;
        axios.get('./static/php/expert.php',{
          params:{major:'制造专家'}
        })
        .then(function(res){
          vthis.experts = res.data;
        })
        .catch(function(err){
          console.log(err);
        });
    }
  };
</script>
<style lang="scss">
  @import '../../css/element.scss';

  .experts{
    background: #fff;
    .expertsFilter{
      @include list(row);
      > li{
        background: #eee;
        height: 70px;
        line-height: 70px;
        text-align: center;
        font-size: 28px;
        color: #666;
        flex: 1;
      }
      .expertsActive{
        background: #fff;
      }
    }
    .expertsList{
      .expertsItem{
        padding: 60px 100px;
        border-bottom: 2px dotted #999;
        overflow: hidden;
        img{
          width: 200px;
          height: 200px;
          float: left;
          border-radius: 50%;
        }
        section{
          float: left;
          overflow: hidden;
          width: 660px;
          margin-left: 100px;
          h4{
            font-size: 32px;
          }
          p{
            margin-top: 30px;
            font-size: 24px;
            line-height: 50px;
            text-indent: 2em;
            color: #666;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
          }
        }
      }
      :last-child{
        border-bottom: 0;
      }
    }
  }
</style>
