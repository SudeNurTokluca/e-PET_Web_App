'use strict';

const dhaPetOwners = document.getElementById('go-to-signup--pet-owners');
const dhaVeterinarians = document.getElementById('go-to-signup--veterinarians');
const openModal = document.getElementById('forgot-password');
const closeModal = document.getElementById('close-modal');

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

openModal?.addEventListener('click', e => {
  e.preventDefault();

  document.querySelector('.overlay').classList.remove('hidden');
  document.querySelector('.modal').classList.remove('hidden');
});

closeModal?.addEventListener('click', () => {
  document.querySelector('.overlay').classList.add('hidden');
  document.querySelector('.modal').classList.add('hidden');
});
