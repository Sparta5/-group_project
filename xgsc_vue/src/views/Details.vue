<template>
  <div>
    <div class="image">
      <img :src="src" alt="" />
      <img id="back" src="../assets/images/back.png" alt="" @click="toIndex" />
      <img id="shoucang" src="../assets/images/shoucang.png" alt="" />
    </div>
    <p class="pname">【{{ pname }}】</p>

    <div id="details">
      <p class="price">￥{{ price }}</p>

      <div class="Count" style="padding-left: 0">
        <span class="minus"
          ><img src="../assets/images/shuliang_jian.png" alt=""
        /></span>
        <div class="num">
          <input type="text" value="1" />
        </div>
        <span class="plus"
          ><img src="../assets/images/shuliang_jia.png" alt=""
        /></span>
      </div>

      <p class="saleCount">总销量:55件</p>
    </div>

    <!-- 花呗分期 -->
    <div class="installment">
      <p class="title">花呗分期<i>（免手续费）</i></p>
      <div class="box">
        <div class="item active">
          <div class="hprice">￥166.33×3期</div>
          <div class="count">手续费￥0/期</div>
        </div>
        <div class="item">
          <div class="hprice">￥83.17×6期</div>
          <div class="count">手续费￥0/期</div>
        </div>
        <div class="item">
          <div class="hprice">￥41.58×12期</div>
          <div class="count">手续费￥0/期</div>
        </div>
      </div>
    </div>

    <!-- 商品导航 -->
    <van-goods-action id="bottom-nar">
      <van-goods-action-icon icon="home-o" text="首页" color="#ff5000" @click="toIndex"/>
      <van-goods-action-icon icon="chat-o" text="客服" color="#07c160" @click="toServer"/>
      <van-goods-action-icon icon="cart-o" text="购物车" @click="toCart"/>
      <van-goods-action-button type="warning" text="加入购物车" />
      <van-goods-action-button type="danger" text="立即购买" />
    </van-goods-action>



    <!-- 规格图片 -->
    <img class="guige" :src="guige_src" alt="" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      ID: "",
      src: "",
      pname: "",
      price: "",
      guige_src: ""
    };
  },
  mounted() {
    this.ID = this.$route.query.id;
    console.log(this.ID);
    this.axios
      .get("/details", {
        params: { pid: this.ID }
      })
      .then(res => {
        this.src = res.data[0].src;
        this.pname = res.data[0].pname;
        this.price = res.data[0].price.toFixed(2);
        this.guige_src = res.data[0].guige_src;
        console.log(res.data);
      });
  },
  methods: {
    toIndex(){
      this.$router.push("/")
    },
    toServer(){
      this.$router.push("/server")
    },
    toCart(){
      this.$router.push("/cart")
    }
  }
};
</script>

<style scoped>
.guige {
  width: 100%;
}
#bottom-nar{
  z-index: 9999;
}
.installment {
  padding: 14.5px 0 10px 14.5px;
  margin-top: 15px;
  background-color: #fff;
}
.installment .title {
  height: 16px;
  line-height: 16px;
  font-size: 14px;
  color: rgba(51, 51, 51, 1);
}
.installment .title i {
  font-size: 13px;
  color: #999;
}
.installment .box {
  margin-top: 14.5px;
  display: flex;
  justify-content: start;
  align-items: center;
}

.installment .box .item.active {
  border: 1px solid rgba(215, 56, 50, 1);
}

.installment .box .item {
  height: 43px;
  width: 102px;
  border: 1px solid #ddd;
  border-radius: 2px;
  margin-right: 13px;
}

.installment .box .item .hprice {
  font-size: 13px;
  color: rgba(51, 51, 51, 1);
  text-align: center;
  padding-top: 7px;
  padding-bottom: 6px;
}

.installment .box .item .count {
  font-size: 11px;
  color: #999;
  text-align: center;
}

.Count {
  width: 20%;
  display: flex;
  position: relative;
  border: 1px solid #ccc;
  border-radius: 13px;
}
.minus,
.plus {
  float: left;
  display: block;
}

.minus {
  padding: 0 10px;
  width: 10px;
  height: 26px;
  line-height: 26px;
  font-size: 0;
}

.minus img {
  width: 10px;
  height: 1px;
  cursor: pointer;
}

.plus {
  padding: 0 9px;
  width: 10px;
  height: 26px;
  line-height: 26px;
  font-size: 0;
}

.plus img {
  width: 10px;
  height: 10px;
  margin-left: -6px;
  cursor: pointer;
}

.num {
  padding-top: 2px;
}

.num input {
  width: 20px;
  border: 0;
}

.saleCount {
  line-height: 26px;
  font-size: 11px;
  color: #666;
}
#details {
  margin-top: 50px;
  display: flex;
  justify-content: space-around;
}
.price {
  font-size: 20px;
  color: #ec1c23;
  letter-spacing: 0.41px;
  line-height: 26px;
  font-weight: normal;
}
.pname {
  line-height: 23px;
  color: #333;
  font-size: 16px;
  background: #fff;
  padding: 15px 15px 24px;
}

.image img {
  width: 375px;
  height: 375px;
}
#back {
  position: absolute;
  left: 30px;
  top: 15px;
}
#shoucang {
  position: absolute;
  left: 305px;
  top: 15px;
}
#back,
#shoucang {
  width: 32px;
  height: 32px;
}
</style>