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
  const mainPageUrl =
    userType === 'veterinarian' ? 'Veteriner' : 'HayvanSahibi';

  console.log(mainPageUrl);

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
        console.log(response);
        response.json().then(data => {
          console.log(data);

          localStorage.setItem('isLoggedIn', 'true');
          localStorage.setItem('userType', userType);
          localStorage.setItem('mainPageUrl', mainPageUrl);

          window.location.href = `${mainPageUrl}-anasayfa.html`;
        });
      } else {
        alert('Kullanıcı adı veya şifre hatalı!');

        localStorage.removeItem('isLoggedIn');
        localStorage.removeItem('userType');
        localStorage.removeItem('mainPageUrl');
      }
    })
    .catch(error => {
      console.log(error);
    });
});
