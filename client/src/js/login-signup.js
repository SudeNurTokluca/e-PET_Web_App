'use strict';

const openModal = document.getElementById('forgot-password');
const closeModal = document.getElementById('close-modal');
const btnLoginEl = document.querySelector('.login');

const inputVetEmail = document.querySelector('.vet-email');
const inputVetPassword = document.querySelector('.vet-password');
const inputPetOwnerEmail = document.querySelector('.pet-owner-email');
const inputPetOwnerPassword = document.querySelector('.pet-owner-password');

openModal?.addEventListener('click', e => {
  e.preventDefault();

  document.querySelector('.overlay').classList.remove('hidden');
  document.querySelector('.modal').classList.remove('hidden');
});

closeModal?.addEventListener('click', () => {
  document.querySelector('.overlay').classList.add('hidden');
  document.querySelector('.modal').classList.add('hidden');
});

btnLoginEl?.addEventListener('click', e => {
  e.preventDefault();

  const email = (inputPetOwnerEmail?.value || inputVetEmail?.value).trim();
  const password = (
    inputPetOwnerPassword?.value || inputVetPassword?.value
  ).trim();
  const userType = (inputVetEmail ? 'veterinarian' : 'pet-owner').trim();

  fetch('http://localhost:3000/auth/login', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      email: email,
      password: password,
      userType: userType,
    }),
  })
    .then(response => {
      if (response.ok) {
        response.json().then(data => {
          console.log(data);

          // Redirect to Veteriner-anasayfa.html
          window.location.href = 'Veteriner-anasayfa.html';
        });
      } else {
        alert('Kullanıcı adı veya şifre hatalı!');
      }
    })
    .catch(error => {
      console.log(error);
    });
});
