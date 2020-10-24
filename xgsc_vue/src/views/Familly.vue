<template>
  <div>
    <!-- 搜索框 -->
    <Search></Search>

    <!-- 分类 -->
    <van-tree-select
      height="650"
      :items="items"
      :active-id.sync="activeId"
      :main-active-index.sync="activeIndex"
      @click-nav="getActiveIndex"
    >
      <template #content>
        <div v-if="items[activeIndex].text === datas[0].familly">
          <div v-for="(data, i) of datas" :key="i" style="width:50%;float:left;text-align:center;">
            <router-link :to="{path:'/details',query:{id:data.pid}}"><van-image :src="datas[i].src" /></router-link>
            <p>{{data.pname}}</p>
            <span class="price">￥{{data.price.toFixed(2)}}</span>
          </div>
        </div>
      </template>
    </van-tree-select>
  </div>
</template>

<script>
import Search from "../components/top/mySearch"

export default {
  components:{Search},
  data() {
    return {
      familly: "桌面吸尘器",
      value: "",
      datas: [{ src: "" }],
      items: [
        { text: "桌面吸尘器" },
        { text: "手持/推杆" },
        { text: "除螨仪" },
        { text: "卧式吸尘器" },
        { text: "扫地机" },
        { text: "桶式" },
        { text: "配件" }
      ],
      activeId: 1,
      activeIndex: 0
    };
  },
  mounted() {
    this.axios
      .get("/proList", {
        params: { familly: this.items[this.activeIndex].text }
      })
      .then(res => {
        this.datas = res.data;
        console.log(this.datas);
      });
  },
  methods: {
    getActiveIndex(index) {
      this.activeIndex = index;
      this.axios
        .get("/proList", {
          params: { familly: this.items[this.activeIndex].text }
        })
        .then(res => {
          this.datas = res.data;
          console.log(this.datas);
        });
    }
  }
};
</script>

<style scoped>
.price{
    font-size: 14px;
    color: #EC232B;
    font-weight: 700;
    letter-spacing: .32px;
    line-height: 20px;
    height: 20px;
    padding-bottom: 10px;
}
.search {
  height: 55px;
}
.content {
  margin-top: 20px;
  margin-bottom: 10px;
}
.content_left {
  float: left;
  width: 85px;
  height: 650px;
  background-color: green;
}
.content_right {
  float: left;
  width: 290px;
  height: 650px;
  background-color: pink;
}
</style>