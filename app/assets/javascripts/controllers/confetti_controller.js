import { Controller } from "stimulus"
import confetti from "confetti"

export default class extends Controller {
  fun() {
    event.preventDefault()
    confetti()
  }
}