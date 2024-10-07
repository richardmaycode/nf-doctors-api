import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scope"
export default class extends Controller {
  static targets = ["optionOne", "optionTwo"]
  static values = {
    first: String,
    second: String
  }

  connect() {
    console.log("Hi from scopes")
  }

  change(e) {
    var value = e.target.value
    console.log(value + " compared " + this.firstValue)
    console.log(value + " compared " + this.secondValue)
    if (value == this.firstValue) {
      this.optionOneTarget.classList.remove("hidden")
      this.optionTwoTarget.classList.add("hidden")
    } else if (value == this.secondValue) {
        this.optionOneTarget.classList.add("hidden")
        this.optionTwoTarget.classList.remove("hidden")
    } else {
        // console.log("Failed Option")
    }
  }
}
