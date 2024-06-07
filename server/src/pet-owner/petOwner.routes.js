const express = require('express');
const router = express.Router();

const {
  getPetOwners,
  getPetOwnerById,
  addPetOwner,
} = require('./petOwner.controller');

router.get('/', getPetOwners);
router.get('/:id', getPetOwnerById);
router.post('/', addPetOwner);

module.exports = router;
