import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "heading" ]

  connect() {
    console.log('Pozdrav od Stimulusa!!')
  }
  greet() {
    this.headingTarget.innetHTML = "Hello World"
    console.log('click')
  }
}
