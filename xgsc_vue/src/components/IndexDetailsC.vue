<template>
  <div>
    <div v-for="(v, k) of indexthree" :key="k">
      <div class="repeat">
        <h3>{{ v.title1 }}</h3>
        <span>{{ v.title2 }}</span>
      </div>
      <router-link to="">
        <img v-lazy="v.src" />
        <div class="repeat-1">
          <span>{{ v.title3 }}</span>
          <span>{{ v.title4 }}</span>
          <span>{{ v.title5 }}</span>
          <span>￥{{ v.price }}</span>
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
      indexthree: [],
    };
  },
  mounted() {
    this.axios.get("/indexThree").then((res) => {
      this.indexthree = res.data.result;
    });
  },
};
</script>

<style scoped>
.repeat h3{
  margin-top: 22px;
}
.repeat-1 > span:nth-child(4) {
  color: rgba(255, 89, 78, 1);
  font-weight: bold;
}
.repeat-1 > span:nth-child(3) {
  display: block;
  color: #999999;
  margin-top: 10px;
  font-size: 12px;
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
img {
  border-radius: 10px;
  width: 355px;
  height: 300px;
  margin-left: 10px;
}
.repeat > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 62.44px;
}
.repeat {
  display: flex;
  padding-left: 25px;
}
</style>