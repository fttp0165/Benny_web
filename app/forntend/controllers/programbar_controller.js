import { Controller } from "stimulus"

export default class extends Controller {
      static targets = ["value"]
      static values = { bar: String }
      connect() {
            let preValue=this.valueTarget.getAttribute("data-value")
            //alert(preValue)
            this.valueTarget.setAttribute("value",'0')
           
            for(var i=0;i<=preValue;i++){
            //   setTimeout(function () {    }, 100 * i);
              this.valueTarget.setAttribute("value",`${i}`)
            }
            
            
          }
  
}
