const express = require('express');
const router = express.Router();

// route: /pets

const { getPetById, getDoneVaxByName } = require('./pet.controller');

router.get('/:id', getPetById);
router.get('/', getDoneVaxByName);

module.exports = router;
