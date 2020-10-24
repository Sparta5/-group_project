import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Familly from '../views/Familly.vue'
import Me from '../views/me.vue'
import Server from '../views/server.vue'
import Shopcart from '../views/shopcart.vue'
import Details from '../views/Details'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Index',
    component: Index
  },
  {
    path: '/family',
    component: Familly
  },
  {
    path: '/details',
    component: Details
  },
  {
    path: '/server',
    component: Server
  },
  {
    path: '/shopcart',
    component: Shopcart
  },
  {
    path: '/me',
    component: Me
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
]

const router = new VueRouter({
  routes
})

export default router
