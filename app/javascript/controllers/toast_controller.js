import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toast"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      const toast = this.element
      const closeIcon = toast.querySelector('.toast__close-icon')

      toast.classList.add("toast--active");

      setTimeout(() => {
        toast.classList.remove("toast--active");
      }, 5000)

      closeIcon.addEventListener("click", () => {
        toast.classList.remove("toast--active");
      })
    }, 10)
  }
}
