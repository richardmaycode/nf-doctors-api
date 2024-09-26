import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="defaults"
export default class extends Controller {
  static values = {
    delimiter: { type: String, default: ' ' }
  }
  static targets = ["output"]

  connect() {
    console.log("Hi from defaults")
    console.log(this.outputTarget)
  }

  fill(event) {

    this.outputTarget.value += event.target.innerText + this.delimiterValue
  }
}
