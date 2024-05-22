'use strict';

// veterinarian appointment comments
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

const commentsEl = document.querySelector('.reviews');
const monthYearElement = document.getElementById('month-year');
const daysElement = document.getElementById('days');
const prevButton = document.querySelector('.prev');
const nextButton = document.querySelector('.next');

let now = new Date();
let currentMonth = now.getMonth();
let currentYear = now.getFullYear();

const monthFormatter = new Intl.DateTimeFormat('tr-TR', { month: 'long' });
const dayFormatter = new Intl.DateTimeFormat('tr-TR', { weekday: 'short' });

const monthNames = Array.from({ length: 12 }, (_, i) =>
  monthFormatter.format(new Date(2020, i))
);
const weekDays = Array.from({ length: 7 }, (_, i) =>
  dayFormatter.format(new Date(2020, 0, i + 4))
);

function renderCalendar(month, year) {
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

function changeMonth(direction) {
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

prevButton.addEventListener('click', function () {
  changeMonth('prev');
});

nextButton.addEventListener('click', function () {
  changeMonth('next');
});

renderCalendar(currentMonth, currentYear);

// veterinarian appointment comments

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
