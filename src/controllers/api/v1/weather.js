
exports.geoinfo = async (ctx) => {
  let geoLocation
  let {request:{body:{ip}}} = ctx
  let api = `https://weatherapi-com.p.rapidapi.com/ip.json?`
  let headers = {
    'x-rapidapi-key': '024879661bmshc2dde30467e740bp1a770cjsn1eba8decc6c4',
    'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com'
  }
  try{
    geoLocation = await ctx.get(api, {q:ip}, headers)
    ctx.body = geoLocation
  }catch(e) {
    console.log(e)
  }
}

exports.fortnightWeather = async (ctx) => {
  let {lat, lon} = ctx.request.body
  let weatherInfo
  let api = "https://weatherbit-v1-mashape.p.rapidapi.com/forecast/daily"
  let headers = {
    "x-rapidapi-key": "024879661bmshc2dde30467e740bp1a770cjsn1eba8decc6c4",
  	"x-rapidapi-host": "weatherbit-v1-mashape.p.rapidapi.com",
  	"useQueryString": true
  }
  try{
    weatherInfo = await ctx.get(api, {lat:lat, lon:lon}, headers)
    ctx.body = weatherInfo
  }catch(e) {
    console.log(e)
  }
}
