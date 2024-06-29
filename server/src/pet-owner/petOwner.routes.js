const express = require('express');
const router = express.Router();

// route: /pet-owners

const {
  getPetOwners,
  getPetOwnerById,
  getOwnedPets,
} = require('./petOwner.controller');

router.get('/', (req, res) => {
  if (req.query.email) {
    return getOwnedPets(req, res);
  }
  return getPetOwners(req, res);
});

router.get('/:id', getPetOwnerById);
module.exports = router;
