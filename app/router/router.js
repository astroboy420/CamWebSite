import Vue from 'vue';
import Router from 'vue-router';
import Home from '../components/home/home.vue';
import Expert from '../components/expert/expert.vue';

Vue.use(Router);

export default new Router({
  routes: [{
    path: '/',
    name: 'home',
    component: Home
  },
  {
  	path: '/expert',
  	name: 'expert',
  	component: Expert
  }]
});
