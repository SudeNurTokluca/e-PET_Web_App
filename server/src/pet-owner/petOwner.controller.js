const sql = require('../sql');
const exceptions = require('../exceptions');

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

// Helper function for login, does not have a directing endpoint
/* expected-body:
  {
    "email": 
  }
*/
function getPetOwnerCredentials(req, res, userType) {
  const { email } = req.body;

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
  getPetOwnerCredentials,
};
