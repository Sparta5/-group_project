<template>
  <div>
    <div class="cell">我的</div>
    <div class="full">
      <div class="member_sectiontop">
        <img src="/img/index/ad9.jpg" alt />
        <img src="/img/index/my.png" alt />
        <p>
          <img src="/img/index/v0.jpg" alt />17628026764
        </p>
        <router-link to class="member_setup">
            <img src="/img/index/grzx.jpg" alt="">
        </router-link>
      </div>
      <div class="member_sectiontop_standby"></div>
      <!-- 我的订单 -->
      <div class="member_section">
        <div class="my-order">
           <div class="member_commnav ">
               <router-link to="" class="font-weight700">
                   我的订单
               </router-link>
           </div>
           <div class="member_list">
               <ul class="overflow_hidden">
                   <router-link to="" class="a">
                       <li><span>待付款</span></li>
                   </router-link>
                   <router-link to="" class="a">
                       <li class="mo2"><span>待发货</span></li>
                   </router-link>
                   <router-link to="" class="a">
                       <li class="mo3"><span>待收货</span></li>
                   </router-link>
                   <router-link to="" class="a">
                       <li class="mo4"><span>评价</span></li>
                   </router-link>
                   <router-link to="" class="a">
                       <li class="mo5"><span>退款售后</span></li>
                   </router-link>
               </ul>
           </div>
        </div>
        <router-link to="">
            <img src="/img/index/ad10.jpg" alt="">
        </router-link>
        <div class="coupons">
            <ul class="address">
                <li><router-link to=""><span>地址管理</span></router-link></li>
                <li><router-link to=""><span>我的收藏</span></router-link></li>
                <li><router-link to=""><span>公司简介</span></router-link></li>
                <li><router-link to=""><span>充值提现</span></router-link></li>
            </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.cell {
  font-size: 18px;
  color: #202020;
  text-align: center;
  padding: 10px;
}
.full {
  margin: 0 auto;
  padding-bottom: 48px;
  overflow: hidden;
}
.member_sectiontop {
  position: relative;
  background-color: #f6f6f6;
}
.member_sectiontop > img:first-child {
  width: 100%;
}
.member_sectiontop > img:nth-child(2) {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  position: absolute;
  bottom: -27px;
  left: 50%;
  margin-left: -40px;
}
.member_sectiontop p {
  width: 80px;
  font-size: 14px;
  line-height: 14px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  position: absolute;
  bottom: -48px;
  left: 50%;
  margin-left: -40px;
  padding-left: 5px;
}
.member_sectiontop p img {
  width: 18px;
  zoom: 0.75;
}
.member_sectiontop .member_setup {
  position: absolute;
  top: 10px;
  right: 15px;
  display: block;
  width: 23px;
  height: 23px;
  border-radius: 50%;
  background-color: transparent;
  text-align: center;
}
.member_sectiontop .member_setup img {
  vertical-align: middle;
  width: 23px;
  height: 23px;
  display: inline-block;
}
.member_sectiontop_standby {
  width: 100%;
  height: 60px;
  background-color: #f6f6f6;
}
.my-order div:first-child {
  height: 30px;
  background-color: #fff;
  border-top: 1px solid #E5E5E5;
  border-bottom: 1px solid #E5E5E5;
}
.member_commnav {
  height: 30px;
  line-height: 30px;
  padding: 5px 15px;
  overflow: hidden;
  font-size: 14px;
}
.my-order div:first-child a {
  font-weight: 400;
  display: block;
  background-image: url(/img/index/i.jpg);
  background-repeat: no-repeat;
  background-position: center right;
  background-size: 10px 10px;
}
a {
  color: #333333;
  text-decoration: none;
}
.member_list {
    padding: 0 10px;
}
.overflow_hidden{
    overflow: hidden;
}
.a{
    color: #666666;
    font-size: 18px;
}
.member_list ul li {
    width: 20%;
    background-position: center 16px;
    font-size: 10px;
    color: #666666;
    background-image: url(/img/index/i1.jpg);
    background-repeat: no-repeat;
    padding-top: 80px;
    margin: 30px 0;
    display: block;
    text-align: center;
    zoom: 0.5;
    float: left;
}
.member_list ul li.mo2 {
    background-image: url(/img/index/i2.jpg);
}
.member_list ul li.mo3 {
    background-image: url(/img/index/i3.jpg);
}
.member_list ul li.mo4 {
    background-image: url(/img/index/i4.jpg);
}
.member_list ul li.mo5 {
    background-image: url(/img/index/i5.jpg);
}
.member_section>a {
    display: block;
}
.member_section>a img {
    width: 100%;
}
.address {
    text-align: center;
    overflow: hidden;
    border-bottom: 1px solid #E2E2E2;
}
.address li:not(:last-child) {
    border-right: 1px solid #E2E2E2;
}
.address li {
    display: inline-block;
    width: 25%;
    height: 90px;
    box-sizing: border-box;
}
.address li a {
    display: block;
    font-size: 12px;
}
.address li:first-child a span {
    background-image: url(/img/index/i6.jpg);
}
.address li:nth-child(2) a span {
    background-image: url(/img/index/i7.jpg);
}
 .address li:nth-child(3) a span {
    background-image: url(/img/index/i8.png);
}
.address li:nth-child(4) a span {
    background-image: url(/img/index/i9.jpg);
}
.address li a span {
    width: 75px;
    display: block;
    height: 12px;
    margin: 10px auto 0;
    padding-top: 40px;
    background-size: 32px 33px;
    background-repeat: no-repeat;
    background-position: center 6px;
}
</style>