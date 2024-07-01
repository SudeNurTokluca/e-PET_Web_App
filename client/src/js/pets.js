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

  console.log('switched');

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
    selectGender.selectedIndex = pet.hayvancinsiyet === 'Dişi' ? 1 : 0;
    inputHeight.value = pet.hayvanboy;
    inputWeight.value = pet.hayvankilo;
  } catch (err) {
    console.log(err);
  }
}

getPetNames();

console.log(btnReset);
btnReset.addEventListener('click', () => {
  console.log('clicked');
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
    const res = await fetch(`http://localhost:3000/pets?name=${name}`);
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
      columns: [{ data: 'vax' }, { data: 'vet' }, { data: 'date' }],
    });
    $('#example2').DataTable({
      data: exampleData2,
      columns: [{ data: 'vax' }, { data: 'vet' }, { data: 'date' }],
    });
  } catch (err) {
    console.log(err);
  }
}

const vaxTab = document.querySelector('.vax-done-info');
vaxTab.addEventListener('click', function () {
  fetchDoneVaxinations(inputName.value);
});

const navTabs = document.querySelector('.nav-tabs');
navTabs.addEventListener('click', function (e) {
  if (
    e.target.classList.contains('nav-link') &&
    !e.target.classList.contains('vax-done-info')
  ) {
    $('#example2').DataTable().destroy();
  }
});
