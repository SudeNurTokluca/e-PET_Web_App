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

// GET
function getDoneVaxByName(req, res) {
  let petName = req.query.name;
  petName = petName[0].toUpperCase() + petName.slice(1);

  console.log(petName);

  sql`
    SELECT vet.veterineradi, atk.asiadi, ypa.asizamani FROM public.yapilanasi AS ypa
    INNER JOIN asitakvimi AS atk ON ypa.asiid = atk.asiid
    INNER JOIN veteriner AS vet ON ypa.veterinerid = vet.veterinerid
    INNER JOIN evcilhayvan As evh ON ypa.hayvanid = evh.hayvanid
    WHERE evh.hayvanadi = ${petName};
    `
    .then(vaxInfo => {
      if (vaxInfo.length > 0) {
        vaxInfo = vaxInfo.map(item => ({
          vax: item.asiadi,
          vet: item.veterineradi,
          date: item.asizamani,
        }));

        res.status(200).json(vaxInfo);
      } else {
        exceptions.NotFound(res);
      }
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

module.exports = {
  getPetById,
  getDoneVaxByName,
};
