const express = require('express');
const router = express.Router();

// route: /pet-owners

const { getPetOwners, getPetOwnerById } = require('./petOwner.controller');

router.get('/', getPetOwners);
router.get('/:id', getPetOwnerById);
module.exports = router;
