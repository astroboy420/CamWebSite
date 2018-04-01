import Vue from 'vue';
import router from './router/router.js';
import App from './App.vue';
import './css/reset.scss';

Vue.config.productionTip = false;

new Vue({
  el: '#app',
  router,
  components: {
    App
  },
  template: '<App></App>'
});
