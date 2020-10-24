<template>
  <div>
    <div v-for="(v, k) of indextwo" :key="k">
      <div class="repeat">
        <h3>{{ v.title1 }}</h3>
        <span>{{ v.title2 }}</span>
      </div>
      <router-link to="">
        <van-swipe class="my-swipe" :autoplay="3000" indicator-color="#ec1c24">
          <van-swipe-item>
            <img v-lazy="v.carousel1" />
          </van-swipe-item>
          <van-swipe-item>
            <img v-lazy="v.carousel2" />
          </van-swipe-item>
          <van-swipe-item>
            <img v-lazy="v.carousel3" />
          </van-swipe-item>
        </van-swipe>
        <div class="repeat-1">
          <span>{{ v.title3 }}</span>
          <span>{{ v.title4 }}</span>
          <span>{{ v.title5 }}</span>
          <span>￥{{ v.price1 }}</span>
        </div>
        <div class="repeat">
          <div class="repeat-2">
            <div>
              <img v-lazy="v.src1" />
            </div>
            <span>{{ v.title6 }}</span>
            <span>{{ v.title7 }}</span>
            <span>￥{{ v.price2 }}</span>
          </div>
          <div class="repeat-2">
            <div>
              <img v-lazy="v.src2" />
            </div>
            <span>{{ v.title8 }}</span>
            <span>{{ v.title9 }}</span>
            <span>￥{{ v.price3 }}</span>
          </div>
        </div>
      </router-link>
      <router-link to="">
        <more></more>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      indextwo: [],
    };
  },
  mounted() {
    this.axios.get("/indexTwo").then((res) => {
      this.indextwo = res.data.result;
    });
  },
};
</script>

<style scoped>
.repeat-2 > span:nth-child(4) {
  font-weight: bold;
  font-size: 18px;
  color: rgba(255, 89, 78, 1);
}
.repeat-2 > span:nth-child(3) {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 12px;
  color: #999999;
  margin-top: 12px;
  margin-bottom: 20px;
}
.repeat-2 > span:nth-child(2) {
  display: block;
  width: 145px;
  margin-left: 15px;
  font-weight: bold;
  font-size: 15px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #333333;
}
.repeat-2 > div > img {
  width: 100%;
  height: 171.41px;
  border-radius: 9px;
}
.repeat-2 {
  box-sizing: border-box;
  width: 173.94px;
  height: 274.41px;
  background-color: #fff;
  border-radius: 9px;
  margin-left: 10px;
  margin-top: 10px;
  text-align: center;
}
.repeat-1 > span:nth-child(4) {
  color: rgba(255, 89, 78, 1);
  font-weight: bold;
}
.repeat-1 > span:nth-child(3) {
  display: block;
  color: #999999;
  font-size: 12px;
  margin-top: 10px;
  margin-bottom: 10px;
}
.repeat-1 > span:nth-child(2) {
  font-weight: bold;
  margin-left: 5px;
  color: #333333;
}
.repeat-1 > span:nth-child(1) {
  display: inline-block;
  width: 40px;
  height: 18px;
  line-height: 18px;
  border: 1px solid rgba(255, 89, 78, 1);
  border-radius: 9px;
  background-color: rgba(255, 89, 78, 1);
  color: #fff;
  font-size: 12px;
  text-align: center;
}
.repeat-1 {
  box-sizing: border-box;
  width: 355px;
  height: 130px;
  padding: 15px;
  margin-left: 10px;
  background-color: #fff;
  margin-top: -15px;
  padding-top: 35px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
}
.repeat > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 40px;
}
.repeat > h3 {
  margin-left: 25px;
  margin-top: 10px;
}
.repeat {
  display: flex;
}
.my-swipe .van-swipe-item img {
  width: 355px;
  height: 300px;
  margin-left: 10px;
}
</style>