import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import myFooter from './components/my-footer' 
import myView from './components/view' 
import myMine from './components/mine' 

Vue.component("myFooter",myFooter)
Vue.component("myView",myView)
Vue.component("myMine",myMine)

import VueLazyload from 'vue-lazyload'
Vue.use(VueLazyload)

import MintUI from 'mint-ui'
import 'mint-ui/lib/style.min.css'
Vue.use(MintUI)

import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

import IndexDetailsA from './components/IndexDetailsA.vue';
Vue.component("index-details-a",IndexDetailsA)
import IndexDetailsB from './components/IndexDetailsB.vue';
Vue.component("index-details-b",IndexDetailsB)
import IndexDetailsC from './components/IndexDetailsC.vue';
Vue.component("index-details-c",IndexDetailsC)
import IndexDetailsD from './components/IndexDetailsD.vue';
Vue.component("index-details-d",IndexDetailsD)
import IndexDetailsE from './components/IndexDetailsE.vue';
Vue.component("index-details-e",IndexDetailsE)
import More from './components/More.vue';
Vue.component("more",More)

import axios from 'axios';
axios.defaults.baseURL = 'http://127.0.0.1:5050';
Vue.prototype.axios = axios;

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
