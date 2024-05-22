'use strict';

const dhaPetOwners = document.getElementById('go-to-signup--pet-owners');
const dhaVeterinarians = document.getElementById('go-to-signup--veterinarians');

const togglePages = () => {
  document.querySelector('.login-container').classList.add('hidden');
  document.querySelector('.signup-container').classList.remove('hidden');
};

dhaPetOwners?.addEventListener('click', e => {
  e.preventDefault();
  togglePages();
});

dhaVeterinarians?.addEventListener('click', e => {
  e.preventDefault();
  togglePages();
});
