import select2 from "select2";

const initSelect2 = () => {
  $('.select2-dropdown').select2({
    theme: "bootstrap",
    // dropdownAutoWidth: 'true',
    placeholder: "Select ingredient",
    allowClear: true,
    width: '200px',
  });
}

export { initSelect2 };



