import select2 from "select2";

import 'select2/dist/css/select2.css';

const initSelect2 = () => {
  $(document).ready(function() {
    $('.select2-dropdown').select2();
  });
}

export { initSelect2 };
