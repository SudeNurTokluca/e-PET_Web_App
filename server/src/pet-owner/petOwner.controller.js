const sql = require('../sql');
const exceptions = require('../exceptions');

const bcrypt = require('bcrypt');

// GET
function getPetOwners(_, res) {
  sql`
    SELECT * FROM hayvansahibi 
    AS hs 
    ORDER BY hs.hayvansahibiid;
    `
    .then(petOwners => res.status(200).json(petOwners))
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getPetOwnerById(req, res) {
  const petOwnerId = req.params.id;

  sql`
    SELECT * FROM hayvansahibi
    AS hs
    WHERE hs.hayvansahibiid = ${petOwnerId};
    `
    .then(petOwner => {
      petOwner.length > 0
        ? res.status(200).json(petOwner)
        : exceptions.NotFound(res);
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getOwnedPets(req, res) {
  const petOwnerMail = req.query.email;

  if (!petOwnerMail) exceptions.BadRequest(res);

  sql`
    SELECT e.hayvanid, e.hayvanadi
    FROM evcilhayvan AS e
    INNER JOIN hayvansahibi AS h
    ON h.hayvansahibiid = e.hayvansahibiid
    WHERE h.hayvansahibimail = ${petOwnerMail}`
    .then(pets => {
      pets.length > 0 ? res.status(200).json(pets) : exceptions.NotFound(res);
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
    "address": {
      "city": "New York",
      "district": "Manhattan",
      "neighborhood": "Central Park",
    }
  }
*/
function _addPetOwner(req, res) {
  const { name, surname, TCKN, phone, email, password, address } = req.body;

  if (!address) exceptions.BadRequest(res);
  const { city, district, neighborhood } = address;

  if (
    !name ||
    !surname ||
    !TCKN ||
    !phone ||
    !email ||
    !password ||
    !city ||
    !district ||
    !neighborhood
  ) {
    exceptions.BadRequest(res);
  }

  const hashedPassword = bcrypt.hashSync(password, 10);

  return sql`
  INSERT INTO hayvansahibi
  (
    hayvansahibiadi,
    hayvansahibisoyadi,
    hayvansahibitc,
    hayvansahibitelefon,
    hayvansahibimail,
    hayvansahibisifre,
    hayvansahibiadresil,
    hayvansahibiadresilce,
    hayvansahibiadresmahalle
  )
  VALUES 
  (
    ${name},
    ${surname},
    ${TCKN},
    ${phone},
    ${email},
    ${hashedPassword},
    ${city},
    ${district},
    ${neighborhood}  
  );`
    .then(() =>
      res.status(201).json({ message: 'Pet owner created succesfully' })
    )
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
function _getPetOwnerCredentials(req, res, userType) {
  const { email } = req.body;

  if (!email) exceptions.BadRequest(res);

  return sql`
  SELECT hs.hayvansahibisifre 
  FROM hayvansahibi AS hs
  WHERE hs.hayvansahibimail = ${email};
  `
    .then(credentials => {
      if (credentials.length > 0) return [credentials, userType];
      else exceptions.NotFound(res);

      throw new Error('Credentials not found');
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

module.exports = {
  getPetOwners,
  getPetOwnerById,
  getOwnedPets,
  _getPetOwnerCredentials,
  _addPetOwner,
};
