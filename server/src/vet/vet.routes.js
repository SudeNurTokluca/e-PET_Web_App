const express = require('express');
const router = express.Router();

// route: /vets

const { getVets, getVetById } = require('./vet.controller');

router.get('/', getVets);
router.get('/:id', getVetById);

module.exports = router;
