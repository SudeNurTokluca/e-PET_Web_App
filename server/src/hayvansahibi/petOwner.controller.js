const sql = require('../sql');

const exp = require('../exp');

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

      exp.InternalServerError(res);
    });
}

function getPetOwnerById(req, res) {
  const petOwnerId = req.params.id;

  sql`
    SELECT * FROM hayvansahibi
    AS hs
    WHERE hs.hayvansahibiid = ${petOwnerId};
    `
    .then(petOwner => {
      petOwner.length > 0 ? res.status(200).json(petOwner) : exp.NotFound(res);
    })
    .catch(err => {
      console.log(err);

      exp.InternalServerError(res);
    });
}

module.exports = { getPetOwners, getPetOwnerById };
