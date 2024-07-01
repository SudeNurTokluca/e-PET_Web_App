'use strict';

async function getVetClinics() {
  try {
    const res = await fetch('http://localhost:3000/vets');
    const data = await res.json();

    // check if datatable is already initialized
    if ($.fn.DataTable.isDataTable('#example')) {
      $('#example').DataTable().destroy();
    }

    $('#example').DataTable({
      lengthChange: false,
      pageLength: 5,
      data: data,
      columns: [
        { data: 'clinic' },
        { data: 'vet' },
        {
          data: null,
          orderable: false,
          render: function (data, type, row) {
            return `
            <button type="button" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#kt_modal_stacked_1">
            <i class="bi bi-info-circle-fill"></i>Bilgi
            </button>
            `;
          },
        },
        {
          data: null,
          orderable: false,
          render: function (data, type, row) {
            return `<button type="button" class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#kt_modal_stacked_2"><i class="bi bi-calendar-check-fill"></i>Randevu Al</button>`;
          },
        },
      ],
    });
  } catch (err) {
    console.log(err);
  }
}

document.addEventListener('DOMContentLoaded', getVetClinics);
