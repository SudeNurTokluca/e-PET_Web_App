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

function getPetByChipNo(req, res) {
  const chipNo = req.query.chipNo;

  sql`
    SELECT * FROM evcilhayvan WHERE hayvancipno = ${chipNo};
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
function getVaxByPetName(req, res) {
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

// GET
function getVaxByChipNo(req, res) {
  const chipNo = req.query.chipNo;

  sql`
    SELECT vet.veterineradi, atk.asiadi, ypa.asizamani FROM public.yapilanasi AS ypa
    INNER JOIN asitakvimi AS atk ON ypa.asiid = atk.asiid
    INNER JOIN veteriner AS vet ON ypa.veterinerid = vet.veterinerid
    INNER JOIN evcilhayvan As evh ON ypa.hayvanid = evh.hayvanid
    WHERE evh.hayvancipno = ${chipNo};
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

// GET
function getPrescByPetName(req, res) {
  let petName = req.query.name;
  petName = petName[0].toUpperCase() + petName.slice(1);

  sql`
    SELECT rc.receteid, rc.ilacadi, v.veterineradi, rc.ilacbitimtarihi
    FROM public.recete AS rc
    INNER JOIN public.randevu AS rn ON rn.randevuid = rc.randevuid
    INNER JOIN public.veteriner AS v ON rn.veterinerid = v.veterinerid
    INNER JOIN public.evcilhayvan AS e ON rn.hayvanid = e.hayvanid
    WHERE e.hayvanadi = ${petName};
    `
    .then(data => {
      if (data.length > 0) {
        data = data.map(item => ({
          prescriptionId: item.receteid,
          medicine: item.ilacadi,
          vet: item.veterineradi,
          endDate: item.ilacbitimtarihi,
        }));

        res.status(200).json(data);
      } else {
        exceptions.NotFound(res);
      }
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getPrescByChipNo(req, res) {
  const chipNo = req.query.chipNo;

  sql`
    SELECT rc.receteid, rc.ilacadi, v.veterineradi, rc.ilacbitimtarihi
    FROM public.recete AS rc
    INNER JOIN public.randevu AS rn ON rn.randevuid = rc.randevuid
    INNER JOIN public.veteriner AS v ON rn.veterinerid = v.veterinerid
    INNER JOIN public.evcilhayvan AS e ON rn.hayvanid = e.hayvanid
    WHERE e.hayvancipno = ${chipNo};
    `
    .then(data => {
      if (data.length > 0) {
        data = data.map(item => ({
          prescriptionId: item.receteid,
          medicine: item.ilacadi,
          vet: item.veterineradi,
          endDate: item.ilacbitimtarihi,
        }));

        res.status(200).json(data);
      } else {
        exceptions.NotFound(res);
      }
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

function getPetExaminingByName(req, res) {
  let petName = req.query.name;
  petName = petName[0].toUpperCase() + petName.slice(1);

  sql`
  SELECT th.tahlilaciklamasi, v.veterineradi, rn.randevuzamani, rn.randevuaciklamasi
  FROM public.randevu AS rn
  INNER JOIN public.tahlil AS th ON th.tahlilid = rn.tahlilid
  INNER JOIN public.veteriner AS v ON v.veterinerid = rn.veterinerid
  INNER JOIN public.evcilhayvan AS e ON e.hayvanid = rn.hayvanid
  WHERE e.hayvanadi = ${petName};
  `
    .then(data => {
      if (data.length > 0) {
        data = data.map(item => ({
          examination: item.tahlilaciklamasi,
          vet: item.veterineradi,
          description: item.randevuaciklamasi,
          date: item.randevuzamani,
        }));

        res.status(200).json(data);
      } else {
        exceptions.NotFound(res);
      }
    })
    .catch(err => {
      console.log(err);

      exceptions.InternalServerError(res);
    });
}

// GET
function getPetExaminingByChipNo(req, res) {
  const chipNo = req.query.chipNo;

  sql`
  SELECT th.tahlilaciklamasi, v.veterineradi, rn.randevuzamani, rn.randevuaciklamasi
  FROM public.randevu AS rn
  INNER JOIN public.tahlil AS th ON th.tahlilid = rn.tahlilid
  INNER JOIN public.veteriner AS v ON v.veterinerid = rn.veterinerid
  INNER JOIN public.evcilhayvan AS e ON e.hayvanid = rn.hayvanid
  WHERE e.hayvancipno = ${chipNo};
  `
    .then(data => {
      if (data.length > 0) {
        data = data.map(item => ({
          examination: item.tahlilaciklamasi,
          vet: item.veterineradi,
          description: item.randevuaciklamasi,
          date: item.randevuzamani,
        }));

        res.status(200).json(data);
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
  getPetByChipNo,
  getVaxByPetName,
  getVaxByChipNo,
  getPrescByPetName,
  getPrescByChipNo,
  getPetExaminingByName,
  getPetExaminingByChipNo,
};
