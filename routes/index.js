const express = require('express');
const conn = require('../db/db');
const router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


/*
  获取首页轮播图
*/
router.get('/api/homecasual', (req, res)=>{
  conn.query('select * from pdd_homecasual',(error, results, fields)=>{
    if(error) res.json({err_code: 500, message:'获取数据失败。'});
    else res.json({success_code: 200, message: results});
  })
});
/*
 获取首页导航
*/
router.get('/api/homenav', (req, res)=>{
   const navJson = require('./../data/homenav');
   res.json({success_code: 200, message: navJson.data});
});
/*
 获取首页商品列表
*/
router.get('/api/homeshoplist', (req, res)=>{
   const data = require('./../data/shopList');
   res.json({success_code: 200, message: data});
});
/*
 获取搜索分类列表
*/
router.get('/api/searchgoods', (req, res)=>{
   const data = require('./../data/search');
   res.json({success_code: 200, message: data});
});
/* 
 获取推荐商品列表
*/
router.get('/api/recommendshoplist', (req, res)=>{
  let pageNo = parseInt(req.query.page) || 1;
  let pageSize = parseInt(req.query.count) || 20;
  conn.query(`select * from pdd_recommend limit ${(pageNo-1)*pageSize},${pageSize}`, (error, results, fields)=>{
    if(error) res.json({err_code: 500, message:'获取数据失败。'});
    else setTimeout(()=>{
      res.json({success_code: 200, message: results});
    },1000)
  })
  // const data = require('./../data/search');
  // res.json({success_code: 200, message: data});
});
module.exports = router;
