// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import Lightbox from "stimulus-lightbox"


const application = Application.start()

// Tu je bilo controller
const context = require.context(".", true, /\.js$/)
application.load(definitionsFromContext(context))


application.register('lightbox', Lightbox)
