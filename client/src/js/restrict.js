'use strict';

const restrict = () => {
  if (
    localStorage.getItem('isLoggedIn') &&
    localStorage.getItem('userType') === 'veterinarian'
  ) {
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
