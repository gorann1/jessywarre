import ApplicationController from './application_controller.js'

export default class extends ApplicationController {
    static targets = ["target"];

    connect() {
        console.log('works!')
    }
}
