'use strict';

// sample comments (assuming they are coming from e-PET API)
const exampleComments = {
  'comment-1': {
    fullName: 'Ali Veli',
    comment: 'Çok memnun kaldım. Herkese tavsiye ederim.',
    rating: 5,
  },
  'comment-2': {
    fullName: 'Ayşe Fatma',
    comment: 'Çok ilgili ve alakalı bir veteriner. Çok memnun kaldım.',
    rating: 4,
  },
  'comment-3': {
    fullName: 'Mehmet Ahmet',
    comment: 'Çok kötü bir veteriner. Kesinlikle tavsiye etmem.',
    rating: 1,
  },
};

// Calender

const commentsEl = document.querySelector('.reviews');
const monthYearElement = document.getElementById('month-year');
const daysElement = document.getElementById('days');
const prevButton = document.querySelector('.prev');
const nextButton = document.querySelector('.next');
const monthFormatter = new Intl.DateTimeFormat('tr-TR', { month: 'long' });
const dayFormatter = new Intl.DateTimeFormat('tr-TR', { weekday: 'short' });
const monthNames = Array.from({ length: 12 }, (_, i) =>
  monthFormatter.format(new Date(2020, i))
);
const weekDays = Array.from({ length: 7 }, (_, i) =>
  dayFormatter.format(new Date(2020, 0, i + 4))
);

let now = new Date();
let currentMonth = now.getMonth();
let currentYear = now.getFullYear();

export function renderCalendar(month, year) {
  const firstDay = new Date(year, month, 1).getDay();
  const lastDay = new Date(year, month + 1, 0).getDate();

  monthYearElement.innerHTML = `${monthNames[month]}<br><span style="font-size: 18px">${year}</span>`;

  daysElement.innerHTML = '';
  for (let i = 1; i < firstDay; i++) {
    daysElement.innerHTML += '<li></li>';
  }

  for (let i = 1; i <= lastDay; i++) {
    daysElement.innerHTML += `<li>${i}</li>`;
  }
}

export function changeMonth(direction) {
  if (direction === 'next') {
    if (currentMonth === 11) {
      currentMonth = 0;
      currentYear++;
    } else {
      currentMonth++;
    }
  } else if (direction === 'prev') {
    if (currentMonth === 0) {
      currentMonth = 11;
      currentYear--;
    } else {
      currentMonth--;
    }
  }
  renderCalendar(currentMonth, currentYear);
}

document.addEventListener('DOMContentLoaded', function () {
  prevButton.addEventListener('click', function () {
    changeMonth('prev');
  });

  nextButton.addEventListener('click', function () {
    changeMonth('next');
  });

  renderCalendar(currentMonth, currentYear);
});

// Veterinarian appointment comments

document.addEventListener('DOMContentLoaded', function () {
  function renderComments() {
    commentsEl.innerHTML = '';
    for (const key in exampleComments) {
      const comment = exampleComments[key];
      commentsEl.innerHTML += `
          <div class="review">
              <div class="review-header">
              <div class="reviewer">${comment.fullName}</div>
              <div class="rating">${'⭐'.repeat(comment.rating)}</div>
              </div>
              <div class="review-body">${comment.comment}</div>
          </div>
          `;
    }
  }

  renderComments();
});

// Veterinarian patient statistics

document.addEventListener('DOMContentLoaded', function () {
  const ctx = document.getElementById('visitChart').getContext('2d');

  const data = {
    labels: [
      'Ocak',
      'Şubat',
      'Mart',
      'Nisan',
      'Mayıs',
      'Haziran',
      'Temmuz',
      'Ağustos',
      'Eylül',
      'Ekim',
      'Kasım',
      'Aralık',
    ],
    datasets: [
      {
        label: 'Ziyaret Sayısı',
        data: [30, 25, 40, 45, 35, 50, 60, 55, 65, 70, 60, 75],
        borderColor: 'rgb(5, 110, 233)',
        backgroundColor: 'rgba(5, 110, 233, 0.2)',
        fill: true,
        tension: 0.1,
      },
    ],
  };

  const config = {
    type: 'line',
    data: data,
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: true,
          text: 'Aylık Veteriner Klinik Ziyaretleri',
        },
      },
      scales: {
        x: {
          title: {
            display: true,
            text: 'Aylar',
          },
        },
        y: {
          title: {
            display: true,
            text: 'Ziyaret Sayısı',
          },
        },
      },
    },
  };

  new Chart(ctx, config);
});

// Summary

document.addEventListener('DOMContentLoaded', function () {
  // Formatting numbers with dots
  const formatter = new Intl.NumberFormat('tr-TR');

  const monthlyVisitationsEl = (document.getElementById(
    'monthly-visitations'
  ).textContent = formatter.format(2432));

  const appointmentEvaluationsEl = (document.getElementById(
    'appointment-evaluations'
  ).textContent = formatter.format(2085));
});
