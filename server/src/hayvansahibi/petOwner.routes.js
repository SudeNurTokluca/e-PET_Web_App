const express = require('express');
const router = express.Router();

const { getPetOwners } = require('./petOwner.controller');

router.get('/', getPetOwners);

module.exports = router;
