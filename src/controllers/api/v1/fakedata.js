
exports.geoinfo = async (ctx) => {
  const location = require('../assets/location.json');
  console.log("from fake data");
  ctx.body = location
}

exports.fortnightWeather = async (ctx) => {
  const fortnight = require('../assets/fortnight.json');
  console.log("from fake data")
  ctx.body = fortnight
}
