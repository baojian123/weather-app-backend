const mongoose = require('mongoose');

const userSchema = new mongoose.Schema(
    {
        name: {
            type: String,
            // firstName: {type: String, default: "", trim: true},
            // lastName: {type: String, default: "", trim: true},
        },
        email: {
            type: String,
            unique: true,
            required: true,
            trim: true,
            index: true,
        },
    }
)

const User = mongoose.model('User', userSchema);
module.exports = User;

