const express = require('express');
const router = express.Router();

const { register, login, getAuthUser } = require('./auth.controller');

router.post('/register', register);
router.post('/login', login);
router.get('/user', getAuthUser);

module.exports = router;
