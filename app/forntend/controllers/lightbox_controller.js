
import { Controller } from "stimulus"

export default class extends Controller {
  static values = { lightboxname: String }

  show() {
          let newname=this.lightboxnameValue
           document.querySelector('.'+newname).classList.add("is-active");
      }
  close(){
    let newname=this.lightboxnameValue
           document.querySelector('.'+newname).classList.remove("is-active");
  }
   
  }


