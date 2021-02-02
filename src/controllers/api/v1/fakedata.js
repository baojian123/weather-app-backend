
exports.iplookup = async (ctx) => {
  const location = require('../assets/location.json');
  console.log("from fake data");
  ctx.body = location
}

exports.currentWeather = async (ctx) => {
  const current = require('../assets/current.json');
  console.log("from fake data")
  ctx.body = current
}

exports.fortnightWeather = async (ctx) => {
  const fortnight = require('../assets/fortnight.json');
  console.log("from fake data")
  ctx.body = fortnight
}

exports.hourlyWeather = async (ctx) => {
  const hourly = require('../assets/hourly.json');
  console.log("from fake data")
  ctx.body = hourly
}
