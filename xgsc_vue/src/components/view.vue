<template>
  <div>
      <!-- 首页部分 -->
      <div class="nav">
        <!-- 上部 -->
        <ul class="navs">
          <li>
            <router-link to="">
              <img src="/img/index/xgdq1.png" alt="">
              <span class="desc">新品推荐</span>
            </router-link>
          </li>
          <li>
            <router-link to="">
              <img src="/img/index/xgdq2.png" alt="">
              <span class="desc">会员福利</span>
            </router-link>
          </li>
          <li>
            <router-link to="">
              <img src="/img/index/xgdq3.png" alt="">
              <span class="desc">中央维修</span>
            </router-link>
          </li>
          <li>
            <router-link to="">
              <img src="/img/index/xgdq4.png" alt="">
              <span class="desc">以旧换新</span>
            </router-link>
          </li>
        </ul>
        <!-- 中部 -->
        <div class="news_flash">
          <div class="pic"><img src="/img/index/kx.jpg" alt=""></div>
          <div class="text">
            <van-notice-bar :scrollable="false">
              <van-swipe vertical class="notice-swipe" :autoplay="3000" :show-indicators="false">
                <van-swipe-item >· 科技赋能扫地机，小狗吸尘器新品R60展现21年专业硬实力</van-swipe-item>
                <van-swipe-item >· 售后服务成投诉重灾区，小家电品牌如何破局？</van-swipe-item>
                <van-swipe-item >· 历代吸力最强！小狗智能无线吸尘器T12旗舰新品来了</van-swipe-item>
                <van-swipe-item >· 小狗无线吸尘器T11亮相天猫，兼顾轻与强</van-swipe-item>
              </van-swipe>
            </van-notice-bar>
          </div>
          <span class="more"></span>  
        </div>
      </div>
      <div class="activity">
      <h3>精选活动</h3>
      <span>SELECTION OF ACTIVITIES</span>
      </div>
      <div class="five">
      <img src="/img/index/p1.png" alt="">
      <img src="/img/index/p2.png" alt="">
      <img src="/img/index/p3.jpg" alt="">
      <img src="/img/index/p4.png" alt="">
      <img src="/img/index/p5.png" alt="">
      </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.nav{
  border-bottom: 12px solid #f4f4f4;
  background: #fff;
}
.navs{
  height: 106px;
  display: flex;
  background-color: #ffffff;
}
.navs li{
  height: 106px;
  width: 25%;
  padding-top: 0;
  display: table;
  overflow: hidden;
}
.navs a {
  vertical-align: middle;
  line-height: 1;
  color: #666;
  display: table-cell !important;
}
.navs li a{
  text-align: center;
  display: block;
}
.navs li img {
  width: 42px;
  height: 42px;
  margin-bottom: 7px;
  margin: 0 auto;
  display: block;
  text-align: center;
}
.navs a .desc {
  font-family: PingFangSC-Regular;
  font-size: 12px;
  color: #333333;
  line-height: 17px;
}
.news_flash {
  display: flex;
  align-items: center;
  height: 40px;
  border-top: 2px solid #f4f4f4;
  position: relative;
}
.news_flash .pic {
  line-height: 1;
  margin-left: 21px;
}
.news_flash .pic img {
  width: 29px;
  height: auto;
  vertical-align: middle;
}
.news_flash .text {
  position: relative;
  line-height: 30px;
  margin-left: 19px;
  width: 210px;
  height: 40px;
}
.news_flash .text:after {
  content: '';
  width: 1px;
  height: 15px;
  background: #dddddd;
  position: absolute;
  left: -9px;
  top: 12px;
}
.news_flash .more {
  background: url(/img/icon/zx.jpg) no-repeat;
  background-size: 100%;
  position: absolute;
  right: 15px;
  width: 14px;
  height: 14px;
}
a{
  text-decoration: none;
}
.notice-swipe .van-swipe-item {
  overflow: hidden;
  text-overflow: ellipsis;
}
.notice-swipe {
  height: 40px;
  line-height: 40px;
  background-color: #fff;
  color: #000;
}
.van-notice-bar{
  background-color: #fff!important;
  padding: 0 0!important;
}
.five > img:nth-child(1) {
  width: 165px;
  height: 110.33px;
  margin-right: 5px;
}
.five > img:nth-child(2) {
  width: 165px;
  height: 110.33px;
}
.five > img:nth-child(3) {
  width: 108.33px;
  height: 147.72px;
  margin-right: 5px;
  margin-top: 10px;
}
.five > img:nth-child(4) {
  width: 108.33px;
  height: 147.72px;
  margin-right: 5px;
}
.five > img:nth-child(5) {
  width: 108.33px;
  height: 147.72px;
}
.five {
  box-sizing: border-box;
  width: 355px;
  height: 285px;
  background-color: #fff;
  margin: 0 11px 30px;
  padding: 10px;
  border-radius: 4px;
}
.activity > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 40px;
}
.activity {
  clear: both;
  display: flex;
  align-items: center;
  padding-left: 25px;
  font-weight: bold;
}
</style>