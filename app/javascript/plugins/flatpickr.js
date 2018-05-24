import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr(".datepicker", {})
flatpickr("#booking_start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})],
  disable: JSON.parse(document.getElementById("booking_start_date").dataset.bookingDates)
});
