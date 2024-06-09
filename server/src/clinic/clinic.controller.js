const sql = require('../sql');
const exceptions = require('../exceptions');

// GET
function getClinics(req, res) {
  sql`
    SELECT * FROM klinik
    AS k
    ORDER BY k.klinikid;
    `
    .then(clinics => res.status(200).json(clinics))
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getClinicById(req, res) {
  const clinicId = req.params.id;

  sql`
    SELECT * FROM klinik
    AS k
    WHERE k.klinikid = ${clinicId};
    `
    .then(clinic => {
      clinic.length > 0
        ? res.status(200).json(clinic)
        : exceptions.NotFound(res);
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// POST
/* expected-body:
 */
function addClinic(req, res) {
  throw new Error('Not implemented yet');
}

module.exports = {
  getClinics,
  getClinicById,
  addClinic,
};
