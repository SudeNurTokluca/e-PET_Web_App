const sql = require('../sql');

const exp = require('../exp');

// GET
function getPetOwners(req, res) {
  sql`
    SELECT * FROM hayvansahibi 
    AS hs 
    ORDER BY hs.hayvansahibiid;
    `
    .then(petOwners => res.status(200).json(petOwners))
    .catch(err => {
      console.log(err);

      exp.InternalServerError(err);
    });
}

module.exports = { getPetOwners };
