const koa = require('koa');
const loader = require('./src/loaders');
const bodyParser = require('koa-bodyparser');
const koaRequest = require('koa-http-request');
const cors = require('koa-cors');

const app = new koa();

app.use(cors({credentials: true, origin:["http://localhost:3000","http://weather-app-frontend.s3-website-us-east-1.amazonaws.com/"]}));
app.use(bodyParser());
app.use(koaRequest({
  json: true,
}))

loader.init(app);

module.exports = app;
