const express = require('express');
const router = express.Router();

// route: /pets

const {
  getPetById,
  getVaxByPetName,
  getPrescByPetName,
  getPetExamining,
} = require('./pet.controller');

router.get('/vax', getVaxByPetName);
router.get('/presc', getPrescByPetName);
router.get('/examining', getPetExamining);
router.get('/:id', getPetById);

module.exports = router;
