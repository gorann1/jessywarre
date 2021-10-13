import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
    change(event) {
     let country = event.target.selectedOptions[0].value
        get(`/locations/regions?target=country=${country}`, {
            responseKind: "turbo-stream"
        })
 }
}
