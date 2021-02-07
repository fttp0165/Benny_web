
import { Controller } from "stimulus"
import Rails from "@rails/ujs"
export default class extends Controller {
   static targets = ["value","showValue"]

  connect(event){
    let skill_value=this.valueTarget.dataset.value;
    console.log(skill_value);
    this.valueTarget.value=skill_value;
    this.showValueTarget.innerHTML=skill_value;
  }

  change(event){
    event.preventDefault();
    let currentValue=this.valueTarget.value;
    this.showValueTarget.innerHTML=currentValue;
  }
}
