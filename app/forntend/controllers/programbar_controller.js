import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["value"]
  static values = { bar: String }
  async connect(event) {
    let preValue = this.valueTarget.getAttribute("data-value")
    //alert(preValue)
    this.valueTarget.setAttribute("value", '0')

    for (var i = 0; i < preValue; i++) {
        this.valueTarget.setAttribute("value", `${i}`)
        await sleep(5);
    }
    function sleep(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    }
    

  }

}
