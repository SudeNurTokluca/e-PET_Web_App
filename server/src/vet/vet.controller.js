const sql = require('../sql');
const exceptions = require('../exceptions');

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

// Helper function for login, does not have a directing endpoint
/* expected-body:
  {
    "email": 
  }
*/
function getVetCredentials(req, res, userType) {
  const { email } = req.body;

  return sql`
    SELECT v.veterinersifre 
    FROM veteriner AS v
    WHERE v.veterinermail = ${email};
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
  getVets,
  getVetById,
  getVetCredentials,
};
