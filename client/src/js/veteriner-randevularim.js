'use strict';

import { changeMonth, renderCalendar } from './veteriner-anasayfa.js';

document.addEventListener('DOMContentLoaded', function () {
  const currentYear = new Date().getFullYear();
  const currentMonth = new Date().getMonth();
  const prevButton = document.getElementById('prev');
  const nextButton = document.getElementById('next');
  const daysElement = document.getElementById('days');

  prevButton.addEventListener('click', function () {
    changeMonth('prev');
  });

  nextButton.addEventListener('click', function () {
    changeMonth('next');
  });

  renderCalendar(currentMonth, currentYear);
});

const appointmentEls = document.querySelectorAll('tbody > tr');

appointmentEls.forEach(appointmentEl => {
  const dateTimeEl = appointmentEl.querySelector('td:nth-child(1)');

  console.log(dateTimeEl.textContent);
});
