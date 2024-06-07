const express = require('express');
const router = express.Router();

const {
  getPetOwners,
  getPetOwnerById,
  getPetOwnerCredentials,
} = require('./petOwner.controller');

router.get('/', getPetOwners);
router.get('/:id', getPetOwnerById);

module.exports = router;
