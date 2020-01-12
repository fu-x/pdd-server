// 导入mysql模块
let mysql = require('mysql');

// 创建连接
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'pdd'
});
connection.connect();

// 将轮播图数据插入到数据库
// const data = require('../data/homecasual.json');
// console.log(data);
// data.message.forEach(el => {
//   connection.query(`insert into pdd_homecasual value(${el.id},'${el.imgurl}','${el.detail}')`, (error, results, fields)=>{
//     if(error) throw error;
//     console.log('添加数据成功');
//   });
// });
// 将首页商品信息数据插入到数据库
// const data = require('../data/shopList.json');
// data.goods_list.forEach(el => {
//   let userArr = {'bubble_user1':'','bubble_user2':''};
//   el.bubble.forEach((el2, index)=>{  
//     if(index === 0)  
//       userArr.bubble_user1 = el2;
//     else
//       userArr.bubble_user2 = el2;
//   })
//   connection.query(`insert into pdd_goodslist value(${el.goods_id},'${el.goods_name}','${el.short_name}','${el.image_url}','${el.thumb_url}','${el.hd_thumb_url}',${el.group.price},${el.normal_price},${el.market_price},'${el.sales_tip}','${userArr.bubble_user1.avatar}','${userArr.bubble_user2.avatar}')`, (error, results, fields)=>{
//     if(error) throw error;
//     console.log('添加数据成功');
//   }); 
// });
// 将推荐页面商品信息数据插入到数据库
// const data = require('../data/goods_list.json');
// data.goods_list.forEach(el => {
//   connection.query(`insert into pdd_recommend value(${el.goods_id},'${el.goods_name}','${el.short_name}','${el.image_url}','${el.thumb_url}','${el.hd_thumb_url}',${el.group.price},${el.normal_price},${el.market_price},'${el.sales_tip}')`, (error, results, fields)=>{
//     if(error) throw error;
//     console.log('添加数据成功');
//   });
// })
module.exports = connection;