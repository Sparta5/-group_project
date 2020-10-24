var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const md5 = require('md5');

const mysql = require('mysql');
const pool = mysql.createPool({
    //数据库服务器地址
    host: 'w.rdc.sae.sina.com.cn',
    //数据库用户名
    user: 'jnxky3z53k',
    //数据库用户密码
    password: '2ykwyzi4i3zxx43hjzj2ww21zkx0m1j031iy3322',
    //数据库服务器端口号
    port: 3306,
    //数据库名称
    database: 'app_xiaogou2',
    //编码方式
    charset: 'utf8',
    //连接限制
    connectionLimit: 15
});

//创建服务器
var app = express();

//托管静态资源到public
app.use("/public",express.static("./public"));
//引入body-parser中间件 解决post请求
const bodyparser = require("body-parser")
//将body作为服务器的中间件使用
app.use(bodyparser.urlencoded({
    extended: false
}))
//引入cors模块 解决跨域
const cors = require('cors');
app.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080','http://127.0.0.1:8081',
          'http://myitem.applinzi.com','http://localhost:8081','http://1.myitem.applinzi.com',
          'https://myitem.applinzi.com']
}));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// 首页推杆热卖
app.get('/indexOne',(req,res)=>{
  let sql='select * from index_tg';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})

// 首页扫地机热卖
app.get('/indexTwo',(req,res)=>{
  let sql='select * from index_sdj';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})

// 首页除螨仪
app.get('/indexThree',(req,res)=>{
  let sql='select * from index_cmy';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})

// 首页随手吸
app.get('/indexFour',(req,res)=>{
  let sql='select * from index_ssx';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})

// 首页配件热卖
app.get('/indexFive',(req,res)=>{
  let sql='select * from index_pj';
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send({result:result})
  })
})

//注册
app.post('/register', (req, res) => {
  //接收用户以POST方式提交的数据
  let phone = req.body.phone;
  let upwd = req.body.upwd;
  let obj = req.body;
  let sql = 'select * from reg  where phone = ?'
  pool.query(sql, [phone], (err, result) => {
      if (err) throw err;
      if (result.length !== 0) {
          res.send({ message: '注册失败', code: 0 })
      } else {
          let sql = 'INSERT INTO reg set ?'
          pool.query(sql, [obj], (err, result) => {
              if (err) throw err;
              res.send({ message: '注册成功', code: 1 })
          })
      }
  })
})

//手机验证码登录
app.post('/phone_login',(req,res)=>{
  let phone=req.body.phone;
  // console.log(phone)
  let upwd=req.body.upwd;
  // console.log(upwd)
  let sql='select * from reg where phone=?';
  pool.query(sql,[phone],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
          res.send({message:'失败',code:0})
      }else{
          res.send({message:'成功',code:1})
      }
  })
})

//账号密码登录
app.post('/login',(req,res)=>{
  let phone=req.body.phone;
  // console.log(phone)
  let upwd=req.body.upwd;
  // console.log(upwd)
  let sql='select * from reg where phone=? and upwd=?';
  pool.query(sql,[phone,upwd],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
          res.send({message:'失败',code:0})
      }else{
          res.send({message:'成功',code:1})
      }
  })
})

//产品分类接口
app.get('/proList',(req,res)=>{
  let familly=req.query.familly;
  let sql='select pid,pname,price,src,familly from proList where familly=?'
  pool.query(sql,[familly],(err,result)=>{
      if(err) throw err;
      res.send(result)
  })
})

//详情接口
app.get('/details',(req,res)=>{
  let pid=req.query.pid;
  console.log(req.query.pid)
  let sql='select pid,pname,price,src,familly,guige_src from proList where pid=?'
  pool.query(sql,[pid],(err,result)=>{
      if(err) throw err;
      res.send(result)
  })
})

/*******关键字搜索********/
app.get('/search',(req,res)=>{
  let title = req.query.title;
  let sql="SELECT * FROM proList WHERE pname LIKE '%"+title+"%'";
  //let sql2=`SELECT p.title,pic,p.href,d.price FROM tysc_index_product AS p INNER JOIN tysc_product_details AS d ON p.href = d.did WHERE p.title LIKE '%${title}%'`;
  console.log(111)
  pool.query(sql,[title],(err,result)=>{
    console.log(222)
    if(err) throw err;
    console.log(result);
    if(result.length>0){
      res.send({message:'查询到结果',code:1,searchs:result});
    }else{
      res.send({message:'查询失败',code:0});
    }
  })
})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});










module.exports = app;
