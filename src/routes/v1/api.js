const userController = require('../../controllers/api/v1/user');
// const weatherController = require('../../controllers/api/v1/weather');
const weatherController = require('../../controllers/api/v1/fakedata');
const koaRouter = require("koa-router");

const router = new koaRouter();

router.get("/users", userController.index);
router.post("/users", userController.store);
router.delete("/users/:id", userController.delete);
router.get("/users/:id", userController.show);
router.put("/users/:id", userController.update);

router.post("/weather/iplookup", weatherController.iplookup);
router.post("/weather/current", weatherController.currentWeather);
router.post("/weather/fortnight", weatherController.fortnightWeather);
router.post("/weather/hourly", weatherController.hourlyWeather)
module.exports = router;
