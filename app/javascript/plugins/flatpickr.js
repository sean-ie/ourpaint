import flatpickr from "flatpickr";

const initFlatpickr = () => {

  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "d-m-Y H:i",
    minDate: "today"
  });
}


export { initFlatpickr };
