const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

const coffee =  require('./loaders/coffee')

const path = require('path')

environment.config.merge({
    resolve: {
        alias: {
            '@': path.resolve('app/javascript'),
            'jquery-ui/ui/widget': 'blueimp-file-upload/js/vendor/jquery.ui.widget.js',
            'jquery.fileupload': 'blueimp-file-upload/js/jquery.fileupload'
        }
    }
})

environment.loaders.prepend('coffee', coffee)
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)
module.exports = environment
