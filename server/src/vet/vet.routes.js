const express = require('express');
const router = express.Router();

const { getVets, getVetById, addVet } = require('./vet.controller');

router.get('/', getVets);
router.get('/:id', getVetById);
router.post('/', addVet);

module.exports = router;
