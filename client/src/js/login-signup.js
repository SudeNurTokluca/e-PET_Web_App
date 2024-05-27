'use strict';

const openModal = document.getElementById('forgot-password');
const closeModal = document.getElementById('close-modal');

openModal?.addEventListener('click', e => {
  e.preventDefault();

  document.querySelector('.overlay').classList.remove('hidden');
  document.querySelector('.modal').classList.remove('hidden');
});

closeModal?.addEventListener('click', () => {
  document.querySelector('.overlay').classList.add('hidden');
  document.querySelector('.modal').classList.add('hidden');
});
