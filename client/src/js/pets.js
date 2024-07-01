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

selectEl.addEventListener('change', e => handleSelect(e));

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
