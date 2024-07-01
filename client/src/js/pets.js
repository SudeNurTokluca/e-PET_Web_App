'use strict';

const btnReset = document.querySelector('.resetIcon');

const inputName = document.getElementById('petName');
const inputChip = document.getElementById('chipNumber');
const inputDate = document.getElementById('birthDate');
const inputType = document.getElementById('petType');
const inputHeight = document.getElementById('height');
const inputWeight = document.getElementById('weight');
const selectGender = document.getElementById('gender');

const selectEl = document.querySelector('.pets-select');

selectEl.addEventListener('change', e => {
  handleSelect(e);
  fetchDoneVaxinations(selectEl.options[selectEl.selectedIndex].innerText);
  fetchPrescriptions(selectEl.options[selectEl.selectedIndex].innerText);
  fetchTests(selectEl.options[selectEl.selectedIndex].innerText);
});

async function getPetNames() {
  try {
    const res = await fetch(
      `http://localhost:3000/pet-owners?email=${localStorage.getItem(
        'userMail'
      )}`
    );
    const data = await res.json();

    data.forEach(({ hayvanid: id, hayvanadi: petName }, i) => {
      const option = document.createElement('option');
      option.value = id;
      option.innerText = petName;

      if (i === 0) {
        option.selected = true;
        getPetInfo(id);
      }

      document
        .querySelector('.pets-select')
        .insertAdjacentElement('beforeend', option);
    });
  } catch (err) {
    console.log(err);
  }
}

async function handleSelect(e) {
  const id = e.target.value;

  id && (await getPetInfo(id));
}

async function getPetInfo(id) {
  try {
    const res = await fetch(`http://localhost:3000/pets/${id}`);
    const data = await res.json();
    const pet = data[0];

    inputName.value = pet.hayvanadi;
    inputChip.value = pet.hayvancipno;
    inputDate.value = new Date(pet.hayvandogumtarih.split('T')[0])
      .toISOString()
      .split('T')[0]
      .split('-')
      .reverse()
      .join('/');
    inputType.value = pet.hayvantur;
    selectGender.value = pet.hayvancinsiyet;
    console.log(selectGender.value, selectGender.selectedIndex);
    inputHeight.value = pet.hayvanboy;
    inputWeight.value = pet.hayvankilo;
  } catch (err) {
    console.log(err);
  }
}

getPetNames();

btnReset.addEventListener('click', () => {
  // Reset all inputs
  inputName.value = '';
  inputChip.value = '';
  inputDate.value = '';
  inputType.value = '';
  inputHeight.value = '';
  inputWeight.value = '';
  selectGender.selectedIndex = 0;
});

// Yapılan aşı bilgileri datatable kısmı
async function fetchDoneVaxinations(name) {
  try {
    const res = await fetch(`http://localhost:3000/pets/vax?name=${name}`);
    const data = await res.json();

    if (res.status === 404) {
      // destroy datatable if no data is found
      $('#example2').DataTable().clear().destroy();
      $('#example').DataTable().clear().destroy();
      // delete the data as well

      return;
    }

    data.map(
      info => (info.date = new Date(info.date).toISOString().split('T')[0])
    );

    // check if datatable is already initialized
    if ($.fn.DataTable.isDataTable('#example2')) {
      $('#example2').DataTable().destroy();
    }
    if ($.fn.DataTable.isDataTable('#example')) {
      $('#example').DataTable().clear().destroy();
    }

    const exampleData = data.filter(
      item => item.date > new Date().toISOString().split('T')[0]
    );
    const exampleData2 = data.filter(
      item => item.date <= new Date().toISOString().split('T')[0]
    );

    $('#example').DataTable({
      data: exampleData,
      columns: [{ data: 'vax' }, { data: 'date' }],
    });
    $('#example2').DataTable({
      data: exampleData2,
      columns: [{ data: 'vax' }, { data: 'vet' }, { data: 'date' }],
    });
  } catch (err) {
    console.log(err);
  }
}

const vaxTab = document.querySelector('.vax-info');
vaxTab.addEventListener('click', function () {
  fetchDoneVaxinations(inputName.value);
});

const navTabs = document.querySelector('.nav-tabs');
navTabs.addEventListener('click', function (e) {
  if (
    e.target.classList.contains('nav-link') &&
    !e.target.classList.contains('vax-info')
  ) {
    $('#example2').DataTable().destroy();
  }

  if (
    e.target.classList.contains('nav-link') &&
    !e.target.classList.contains('presc-info')
  ) {
    $('#example3').DataTable().destroy();
  }

  if (
    e.target.classList.contains('nav-link') &&
    !e.target.classList.contains('test-info')
  ) {
    $('#example4').DataTable().destroy();
  }
});

// Reçete bilgileri datatable kısmı
async function fetchPrescriptions(name) {
  try {
    const res = await fetch(`http://localhost:3000/pets/presc?name=${name}`);
    const data = await res.json();

    if (res.status === 404) {
      // destroy datatable if no data is found
      $('#example3').DataTable().clear().destroy();
      return;
    }

    data.map(
      info =>
        (info.endDate = new Date(info.endDate).toISOString().split('T')[0])
    );

    // check if datatable is already initialized
    if ($.fn.DataTable.isDataTable('#example3')) {
      $('#example3').DataTable().destroy();
    }

    $('#example3').DataTable({
      data: data,
      columns: [
        { data: 'prescriptionId' },
        { data: 'vet' },
        { data: 'medicine' },
        { data: 'endDate' },
      ],
    });
  } catch (err) {
    console.log(err);
  }
}

const prescTab = document.querySelector('.presc-info');
prescTab.addEventListener('click', function () {
  fetchPrescriptions(inputName.value);
});

// Tetkik bilgileri datatable kısmı
async function fetchTests(name) {
  try {
    const res = await fetch(
      `http://localhost:3000/pets/examining?name=${name}`
    );
    const data = await res.json();

    if (res.status === 404) {
      // destroy datatable if no data is found
      $('#example4').DataTable().clear().destroy();
      return;
    }

    data.map(
      info => (info.date = new Date(info.date).toISOString().split('T')[0])
    );

    // check if datatable is already initialized
    if ($.fn.DataTable.isDataTable('#example4')) {
      $('#example4').DataTable().destroy();
    }

    $('#example4').DataTable({
      data: data,
      columns: [
        { data: 'examination' },
        { data: 'vet' },
        { data: 'description' },
        {
          data: null, // This column does not correspond to any data field
          orderable: false, // Makes the column not orderable
          render: function (data, type, row) {
            // Return HTML content for the button, you can customize it as needed
            return '<a href="#" class="btn btn-sm btn-light-primary font-weight-bold mr-2">Detay Görüntüle</a>';
          },
        },
        { data: 'date' },
      ],
    });
  } catch (err) {
    console.log(err);
  }
}

const testTab = document.querySelector('.test-info');
testTab.addEventListener('click', function () {
  fetchTests(inputName.value);
});
