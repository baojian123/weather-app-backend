process.env.NODE_ENV = process.env.NODE_ENV || 'development';

module.exports = {
    port: process.env.PORT || 8000,
    api: {
        prefix: process.env.API_PREFIX || '/api/v1',
    },
    // mongoose: 'mongodb+srv://admin:lkhlkh28@cluster0.mnk22.mongodb.net/easy-grade?retryWrites=true&w=majority',
    mongoose: 'mongodb://127.0.0.1:27017/koa',
};
