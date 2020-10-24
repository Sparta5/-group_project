<template>
  <div>
    <!-- 底部选项卡开始 -->
    <div class="main">
        <mt-tabbar v-model="tabbar" fixed>
          <mt-tab-item id="index">
            首页
            <img src="/img/icon/home.jpg" alt="" slot="icon" v-if="tabbar=='index'">
            <img src="/img/icon/home1.jpg" alt="" slot="icon" v-else>
          </mt-tab-item>
          <mt-tab-item id="family">
            分类
            <img src="/img/icon/family.jpg" alt="" slot="icon" v-if="tabbar=='family'">
            <img src="/img/icon/family1.jpg" alt="" slot="icon" v-else>
          </mt-tab-item>
          <mt-tab-item id="server">
            注册/登录
            <img src="/img/icon/server.jpg" alt="" slot="icon" v-if="tabbar=='server'">
            <img src="/img/icon/server1.jpg" alt="" slot="icon" v-else>
          </mt-tab-item>
          <mt-tab-item id="shopcart">
            购物车
            <img src="/img/icon/shopcart.jpg" alt="" slot="icon" v-if="tabbar=='shopcart'">
            <img src="/img/icon/shopcart1.jpg" alt="" slot="icon" v-else>
          </mt-tab-item>
          <mt-tab-item id="me">
            我的
            <img src="/img/icon/me.jpg" alt="" slot="icon" v-if="tabbar=='me'">
            <img src="/img/icon/me1.jpg" alt="" slot="icon" v-else>
          </mt-tab-item>
        </mt-tabbar>
      </div>
    <!-- 底部选项卡结束 -->
  </div>
</template>
<script>
export default {
  data(){
      return{
          tabbar:'index'
      }
  },
  
  watch:{
    //监听底部选项卡
    tabbar(value){
      if(value=='index'){
        this.$router.push('/').catch(e=>{})
      }else if(value=='family'){
        this.$router.push('/family').catch(e=>{})
      }else if(value=='server'){
        this.$router.push('/register').catch(e=>{})
      }else if(value=='shopcart'){
        this.$router.push('/shopcart').catch(e=>{})
      }else{
        this.$router.push('/me').catch(e=>{})
      }
    }
  }  
}
</script>
<style>
.mint-tabbar>.mint-tab-item.is-selected {
    background-color: #fff !important;
    color: #EC232B !important;
}
.mint-tab-item-icon {
    width: 12px !important;
    height: 12px !important;
}
</style>