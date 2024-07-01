const express = require('express');
const router = express.Router();

// route: /pets

const {
  getPetById,
  getPetByChipNo,
  getVaxByPetName,
  getVaxByChipNo,
  getPrescByPetName,
  getPrescByChipNo,
  getPetExaminingByName,
  getPetExaminingByChipNo,
} = require('./pet.controller');

router.get('/vax', getVaxByPetName);
router.get('/presc', getPrescByPetName);
router.get('/examining', getPetExaminingByName);
router.get('/chip/pet', getPetByChipNo);
router.get('/chip/vax', getVaxByChipNo);
router.get('/chip/presc', getPrescByChipNo);
router.get('/chip/examining', getPetExaminingByChipNo);
router.get('/:id', getPetById);

module.exports = router;
