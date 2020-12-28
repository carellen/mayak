import { Controller } from "stimulus"
import confetti from "https://cdn.skypack.dev/canvas-confetti"

export default class extends Controller {
  fun() {
    event.preventDefault()
    confetti()
  }
}