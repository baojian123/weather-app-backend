const User = require('../../../model/user')

exports.index = async (ctx) => {
    console.log("Find all users")
    ctx.body = await User.find({});
}

exports.store = async (ctx) => {
    const user = new User(ctx.request.body);
    console.log(ctx.request.body)
    try {
        await user.save();
        const token = "abc";
        ctx.status(201).send({user, token});
    } catch (e) {
        ctx.body = e;
    }
}

exports.show = async (ctx) => {
    const userEmail = ctx.request.params["id"];
    console.log(`Find a user: ${userEmail}`);
    ctx.body = await User.find({email:userEmail});
}

exports.delete = async (ctx) => {
    const userEmail = ctx.request.params["id"];
    console.log(`Delete a user: ${userEmail}`);
    try{
      await User.deleteOne({email:userEmail});
      ctx.body = `User ${userEmail} has been deleted sucessfully`;
    } catch (e) {
      ctx.body = e;
    }
}

exports.update = async (ctx) => {
    const userEmail = ctx.request.params["id"];
    const updatedContent = ctx.request.body;
    console.log(`Update a user: ${userEmail}`);
    try{
      await User.updateOne({email:userEmail},updatedContent)
      ctx.body = 'update one user';
    }catch (e) {
      ctx.body = e;
    }
}
