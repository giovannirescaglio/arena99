let start_date_form = document.getElementById("booking_start_date");
// let start_date_value = start_date_form.value;

let end_date_form = document.getElementById("booking_end_date");
// let end_date_value = end_date_form.value;

const insert = document.getElementById("total-price");
const price = parseInt(document.getElementById("price").innerHTML.slice(24,26));

start_date_form.addEventListener("change", (event) => {
  event.preventDefault();
  booking = start_date_form.value;
  start = booking.slice(0,10);
  end = booking.slice(14,25);
  date_start = new Date(start);
  date_end = new Date(end);
  var oneDay = 24*60*60*1000;
  var diffDays = Math.round(Math.abs((date_end.getTime() - date_start.getTime())/(oneDay))) + 1;
  console.log(diffDays);
  const item = `<p><strong>Total Price: ${diffDays * price}€</strong></p>`;
  insert.innerHTML = item;
});
