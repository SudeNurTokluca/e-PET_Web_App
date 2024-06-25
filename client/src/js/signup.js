'use strict';

// Veterinarian props
const iNamePetOwner = document.querySelector('input[name="name"]');
const iSurnamePetOwner = document.querySelector('input[name="surname"]');
const iTCKNPetOwner = document.querySelector('input[name="tckn"]');
const iPhonePetOwner = document.querySelector('input[name="cellphone"]');
const iAddressPetOwner = document.querySelector('input[name="address"]');
const iEmailPetOwner = document.querySelector('input[name="email"]');
const iPasswordPetOwner = document.querySelector('input[name="password"]');
const iPasswordRepeatedPetOwner = document.querySelector(
  'input[name="password-repeat"]'
);

const btnSubmit = document.querySelector('.login-container__form-button');

const form = document.querySelector('.login-container__form');

form.addEventListener('submit', e => {
  e.preventDefault();

  const name = iNamePetOwner.value;
  const surname = iSurnamePetOwner.value;
  const tckn = iTCKNPetOwner.value;
  const cellphone = iPhonePetOwner.value;
  const address = iAddressPetOwner.value;
  const email = iEmailPetOwner.value;
  const password = iPasswordPetOwner.value;
  const passwordRepeat = iPasswordRepeatedPetOwner.value;

  const data = [
    name,
    surname,
    tckn,
    cellphone,
    address,
    email,
    password,
    passwordRepeat,
  ];

  if (validation(data)) {
    // address mapper
    addressMapper(address);

    // send data to the server
    const body = iNamePetOwner
      ? {
          userType: 'pet-owner',
          name: name,
          surname: surname,
          TCKN: tckn,
          phone: cellphone,
          email: email,
          password: password,
          address: addressMapper(address),
        }
      : 'veterinarian';

    console.log(JSON.stringify(body));
    send(body);
  }
});

function addressMapper(address) {
  const [city, district, ...neighborhood] = address.split(',');

  return {
    city: city.trim(),
    district: district.trim(),
    neighborhood: neighborhood.join(',').trim(),
  };
}

async function send(body) {
  const res = await fetch('http://localhost:3000/auth/register', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(body),
  });

  if (res.status === 201) {
    alert('Kayıt başarılı');
  } else {
    alert('Bir hata oluştu');
  }
}

function validation(data) {
  const [
    name,
    surname,
    tckn,
    cellphone,
    address,
    email,
    password,
    passwordRepeat,
  ] = data;

  // check if any field is empty
  let emptyFields = [];

  data.forEach((item, index) => {
    if (item === '') emptyFields.push(index);
  });

  if (emptyFields.length > 0) {
    alert('Formda eksik alanlar var');
    return false;
  }

  // email validation
  if (email.indexOf('@') === -1) {
    alert('Lütfen geçerli bir email adresi girin');
    return false;
  }

  // tckn validation
  if (tckn.length !== 11) {
    alert('TC Kimlik numarası 11 haneli olmalıdır');
    return false;
  }
  if (+tckn === NaN) {
    alert('Lütfen geçerli bir TC Kimlik numarası girin');
    return false;
  }

  // cellphone would be written in the form of +90XXXXXXXXXX
  if (cellphone.length !== 13 || +cellphone.slice(1) === NaN) {
    alert('Lütfen geçerli bir cep telefonu numarası girin');
    return false;
  }

  // password validation
  if (password !== passwordRepeat) {
    alert('Şifreler uyuşmuyor');
    return false;
  }

  return true;
}
