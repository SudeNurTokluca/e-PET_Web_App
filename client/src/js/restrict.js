'use strict';

const restrict = () => {
  console.log(localStorage.getItem('userType'));
  console.log(window.location.pathname);
  if (
    localStorage.getItem('isLoggedIn') &&
    localStorage.getItem('userType') === 'veterinarian'
  ) {
    console.log('skjgh');
    if (window.location.pathname.includes('HayvanSahibi')) {
      window.location.href = 'landing.html';
    }
  } else if (
    localStorage.getItem('isLoggedIn') &&
    localStorage.getItem('userType') === 'pet-owner'
  ) {
    if (window.location.pathname.includes('Veteriner')) {
      window.location.href = 'landing.html';
    }
  } else if (localStorage.getItem('isLoggedIn')) {
    window.location.href = 'landing.html';
  }
};

restrict();
