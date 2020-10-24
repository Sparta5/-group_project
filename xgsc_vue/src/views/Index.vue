<template>
  <div>
    <my-search></my-search>
    <my-carouse></my-carouse>
    <my-view></my-view>
    <index-details-a></index-details-a>
    <index-details-b></index-details-b>
    <index-details-c></index-details-c>
    <index-details-d></index-details-d>
    <index-details-e></index-details-e>
    <div class="index_footer">
      <p>------我是有底线的------</p>
    </div>
  </div>
</template>
<script>
import myCarouse from '../components/top/myCarouse';
import mySearch from '../components/top/mySearch';
export default {
  components:{
    mySearch,myCarouse
  }
}
</script>
<style scoped>
p{
  font-size: 12px;
  display: block;
  margin-top: 20px;
  height: 80px;
}
.index_footer {
  background: #eee;
  text-align: center;
}

div {
  background-color: #eee;
}
</style>