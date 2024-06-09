const express = require('express');
const router = express.Router();

// route: /clinics

const { getClinics, getClinicById } = require('./clinic.controller');

router.get('/', getClinics);
router.get('/:id', getClinicById);

module.exports = router;
