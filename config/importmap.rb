# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "custom_summary", to: "custom_summary.js"
pin "flatpickr" # @4.6.13
pin "fabric-form", to: "controllers/fabric_form_controller.js"
pin "particles", to: "controllers/particles_controller.js"
pin "theme", to: "controllers/theme_controller.js"
pin "dropdown", to: "controllers/dropdown_controller.js"
