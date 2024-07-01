const sql = require('../sql');
const exceptions = require('../exceptions');

// GET
function getPetById(req, res) {
  const petId = req.params.id;

  sql`
    SELECT * FROM evcilhayvan WHERE hayvanid = ${petId};
    `
    .then(pet => {
      pet.length > 0 ? res.status(200).json(pet) : exceptions.NotFound(res);
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

module.exports = {
  getPetById,
};
