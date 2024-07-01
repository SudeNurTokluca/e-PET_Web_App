const express = require('express');
const router = express.Router();

// route: /pets

const { getPetById } = require('./pet.controller');

router.get('/:id', getPetById);

module.exports = router;
