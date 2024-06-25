const sql = require('../sql');
const exceptions = require('../exceptions');

const bcrypt = require('bcrypt');

// GET
function getVets(req, res) {
  sql`
    SELECT * FROM veteriner
    AS v
    ORDER BY v.veterinerid;
    `
    .then(vets => res.status(200).json(vets))
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getVetById(req, res) {
  const vetId = req.params.id;
  console.log(req.session.user.who);

  sql`
    SELECT * FROM veteriner
    AS v
    WHERE v.veterinerid = ${vetId};
    `
    .then(vet => {
      vet.length > 0 ? res.status(200).json(vet) : exceptions.NotFound(res);
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// POST
/* expected-body: 
  {
    "name": "John",
    "surname": "Doe",
    "TCKN": "12345678901",
    "phone": "+905555555555",
    "email": "john.doe@example.com",
    "password": "password",
    "diplomaNumber": "123456",
    "clinicId": 1,
    "openingHours": "09:00",
    "closingHours": "18:00",

  }
*/
function _addVet(req, res) {
  const {
    name,
    surname,
    TCKN,
    phone,
    email,
    password,
    diplomaNumber,
    clinicId,
    openingHours,
    closingHours,
  } = req.body;

  if (
    !name ||
    !surname ||
    !TCKN ||
    !phone ||
    !email ||
    !password ||
    !diplomaNumber ||
    !clinicId ||
    !openingHours ||
    !closingHours
  ) {
    return exceptions.BadRequest(res);
  }

  const hashedPassword = bcrypt.hashSync(password, 10);

  return sql`
  INSERT INTO veteriner
  (
    veterineradi,
    veterinersoyadi,
    veterinertc,
    veterinertelefon,
    veterinermail,
    veterinersifre,
    veterinerdiplomano,
    klinikid,
    veterinercalismasaatbas,
    veterinercalismasaatson
  )
  VALUES
  (
    ${name},
    ${surname},
    ${TCKN},
    ${phone},
    ${email},
    ${hashedPassword},
    ${diplomaNumber},
    ${clinicId},
    ${openingHours},
    ${closingHours}
  );`
    .then(() => res.status(201).json({ message: 'Vet added successfully' }))
    .catch(err => {
      if (err.code === '23505') return exceptions.Conflict(res);

      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// Helper function for login, does not have a directing endpoint
/* expected-body:
  {
    "email": 
  }
*/
function _getVetCredentials(req, res, userType) {
  const { email } = req.body;

  return sql`
    SELECT v.veterinersifre 
    FROM veteriner AS v
    WHERE v.veterinermail = ${email};
    `
    .then(credentials => {
      if (credentials.length > 0) return [credentials, userType];
      else {
        exceptions.NotFound(res);
        return;
      }
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

module.exports = {
  getVets,
  getVetById,
  _getVetCredentials,
  _addVet,
};
