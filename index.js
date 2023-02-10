const path = require('path');
const express = require('express');
const hbs = require('hbs');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const app = express();

const conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'pitjarus'
});

conn.connect((err) => {
  if (err) throw err;
  console.log('Mysql Connected...');
});

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use('/assets', express.static(__dirname + '/public'));

app.get('/',(req, res) => {
  let sql = "SELECT * FROM store_area";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.render('chart_view',{
      area: results
    });
  });
});

app.get('/getarea', (req, res) => {
  let sql = "SELECT * FROM store_area";
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

app.get('/getsales', (req, res) => {
  let sql = "select store_area.area_name, format(sum(compliance) / count(report_product.store_id) * 100,1) percentage\
  from report_product\
  left join store on store.store_id = report_product.store_id\
  left join store_area on store.area_id = store_area.area_id\
  left join product on product.product_id = report_product.product_id\
  left join product_brand on product.brand_id = product_brand.brand_id\
  group by store_area.area_id";
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

app.get('/gettable', (req, res) => {
  let sql = "select store_area.area_name, product_brand.brand_name, format(sum(compliance) / count(product_brand.brand_id) * 100,1) percentage\
  from report_product\
  left join store on store.store_id = report_product.store_id\
  left join store_area on store.area_id = store_area.area_id\
  left join product on product.product_id = report_product.product_id\
  left join product_brand on product.brand_id = product_brand.brand_id\
  group by store_area.area_id, product_brand.brand_id;";
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

app.post('/updatedata', (req, res) => {
  var wr = "1=1";
  if(req.body.area !== "" && req.body.area !== undefined){
    wr += " and store_area.area_id =" + req.body.area;
  }

  if(req.body.start_date !== "" && req.body.start_date !== undefined){
    wr += " and report_product.tanggal >= '" + req.body.start_date + "'";
  }

  if(req.body.end_date !== "" && req.body.end_date !== undefined){
    wr += " and report_product.tanggal <= '" + req.body.end_date + "'";;
  }

  let sql = "select store_area.area_name, format(sum(compliance) / count(report_product.store_id) * 100,1) percentage\
  from report_product\
  left join store on store.store_id = report_product.store_id\
  left join store_area on store.area_id = store_area.area_id\
  left join product on product.product_id = report_product.product_id\
  left join product_brand on product.brand_id = product_brand.brand_id\
  where "+wr+"\
  group by store_area.area_id";
  // res.json(sql)
  let query = conn.query(sql, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

app.listen(8000, () => {
  console.log('Server is running at port 8000');
});