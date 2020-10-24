<template>
  <div>
    <div class="repeat">
      <h3>配件热卖</h3>
      <span>ACCESSORIES</span>
    </div>
    <router-link to="">
      <ul>
        <li v-for="(p, index) of indexfive" :key="index">
          <div class="repeat-2">
            <div>
              <img v-lazy="p.src" />
            </div>
            <span>{{ p.title }}</span>
            <span>¥{{ p.price }}</span>
          </div>
        </li>
      </ul>
    </router-link>
    <router-link to="">
      <more></more>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {
    return {
      indexfive: [],
      url1: "",
    };
  },
  mounted() {
    this.axios.get("/indexFive").then((res) => {
      this.indexfive = res.data.result;
    });
  },
};
</script>

<style scoped>
.repeat h3{
  margin-top: 22px;
}
ul li {
  float: left;
}
.repeat-2 > span:nth-child(3) {
  font-weight: bold;
  font-size: 18px;
  color: rgba(255, 89, 78, 1);
}
.repeat-2 > span:nth-child(2) {
  display: block;
  width: 145px;
  margin-left: 15px;
  margin-bottom: 15px;
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
  height: 255.5px;
  background-color: #fff;
  border-radius: 9px;
  margin-left: 10px;
  margin-top: 10px;
  text-align: center;
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