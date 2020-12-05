const path = require("path");
const webpack = require('webpack');

module.exports = {
    entry: {
        widget: ['whatwg-fetch', "./src/widget.js"]
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                exclude: /(node_modules|bower_components)/,
                loader: "babel-loader",
                options: {presets: ["@babel/env"]}
            },
            {
                test: /\.css$/,
                use: ["style-loader", "css-loader"]
            },
            {
                test: /\.s[ac]ss$/,
                use: ["style-loader", "css-loader", "sass-loader"]
            },
        ]
    },
    resolve: {extensions: ["*", ".js", ".jsx"]},
    output: {
        path: path.resolve(__dirname, "../../static/unlocking/order_widget/js/"),
        publicPath: "/static/unlocking/order_widget/js/",
        filename: "[name].js"
    },
    plugins: [
        new webpack.ProvidePlugin({
            process: "process/browser"
        })
    ]
};