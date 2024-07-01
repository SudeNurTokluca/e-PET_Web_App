'use strict';

const inputName = document.querySelector('.inputName');
const inputChipNo = document.querySelector('.inputChipNo');
const inputType = document.querySelector('.inputType');
const inputGender = document.querySelector('.inputGender');
const inputDate = document.querySelector('.inputDate');
const inputHeight = document.querySelector('.inputHeight');
const inputWeight = document.querySelector('.inputWeight');

const formInput = document.querySelector('.search-input');
const formEl = document.querySelector('.form-search');
formEl.addEventListener('submit', function (e) {
  e.preventDefault();

  getPetByChip(formInput.value);
  getVaxByChip(formInput.value);
  getPrescByChip(formInput.value);
  petExaminingByChip(formInput.value);
});

async function getPetByChip(chipNo) {
  try {
    const res = await fetch(
      `http://localhost:3000/pets/chip/pet?chipNo=${chipNo}`
    );
    const data = await res.json();

    if (data.length === 0) {
      alert('Hayvan bulunamadı');
      return;
    }

    inputName.value = data[0].hayvanadi;
    inputChipNo.value = data[0].hayvancipno;
    inputType.value = data[0].hayvantur;
    inputGender.value = data[0].hayvancinsiyet;
    inputDate.value = data[0].hayvandogumtarih;
    inputHeight.value = data[0].hayvanboy;
    inputWeight.value = data[0].hayvankilo;
  } catch (err) {}
}

async function getVaxByChip(chipNo) {
  try {
    const res = await fetch(
      `http://localhost:3000/pets/chip/vax?chipNo=${chipNo}`
    );
    const data = await res.json();

    if (
      res.status === 404 ||
      data.length === 0 ||
      $.fn.DataTable.isDataTable('.example')
    ) {
      $('#example').DataTable().clear().destroy();
      return;
    }

    data.map(info => {
      info.date = new Date(info.date).toISOString().split('T')[0];
    });

    $('#example').DataTable({
      data: data,
      columns: [{ data: 'vax' }, { data: 'vet' }, { data: 'date' }],
    });
  } catch (err) {
    console.log(err);
  }
}

async function getPrescByChip(chipNo) {
  try {
    const res = await fetch(
      `http://localhost:3000/pets/chip/presc?chipNo=${chipNo}`
    );
    const data = await res.json();

    if (
      res.status === 404 ||
      data.length === 0 ||
      $.fn.DataTable.isDataTable('.example2')
    ) {
      $('#example2').DataTable().clear().destroy();
      return;
    }

    data.map(info => {
      info.endDate = new Date(info.endDate).toISOString().split('T')[0];
    });

    $('#example2').DataTable({
      data: data,
      columns: [
        { data: 'prescriptionId' },
        { data: 'medicine' },
        { data: 'vet' },
        { data: 'endDate' },
      ],
    });
  } catch (err) {
    console.log(err);
  }
}

async function petExaminingByChip(chipNo) {
  try {
    const res = await fetch(
      `http://localhost:3000/pets/chip/examining?chipNo=${chipNo}`
    );
    const data = await res.json();

    if (
      res.status === 404 ||
      data.length === 0 ||
      $.fn.DataTable.isDataTable('.example3')
    ) {
      $('#example3').DataTable().clear().destroy();
      return;
    }

    data.map(info => {
      info.date = new Date(info.date).toISOString().split('T')[0];
    });

    $('#example3').DataTable({
      data: data,
      columns: [
        { data: 'examination' },
        { data: 'vet' },
        { data: 'description' },
        { data: 'date' },
      ],
    });
  } catch (err) {
    console.log(err);
  }
}
