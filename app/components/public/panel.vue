<template>
  <section :class="[panelClass,cname]">
    <h4>-{{title}}-</h4>
    <slot></slot>
  </section>
</template>
<script type="text/ecmascript-6">
  export default {
    props: {
      title: {
        type: String,
        default: ''
      },
      cname: {
        type: String,
        default: ''
      }
    },
    data () {
      return {
        panelClass: 'panel'
      }
    }
  };
</script>
<style lang="scss">
  @import '../../css/element.scss';

  .panel{
    @include panel;
  }
</style>