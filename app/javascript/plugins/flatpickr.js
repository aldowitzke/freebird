import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import { Portuguese } from "flatpickr/dist/l10n/pt.js"

flatpickr(".datepicker", {
  "locale": Portuguese,
  "dateFormat": "d-m-Y"
})
