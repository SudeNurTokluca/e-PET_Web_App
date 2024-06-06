const sql = require('./sql');
const exceptions = require('./exceptions');
const authRouter = require('./auth/auth.routes');
const petOwnerRouter = require('./pet-owner/petOwner.routes');
const { isAuthenticated } = require('./auth/auth.controller');

const express = require('express');
const session = require('express-session');
const crypto = require('crypto');

const app = express();
const sessionSecret = crypto.randomBytes(32).toString('hex');

// Middlewares
app.use(
  session({
    secret: sessionSecret,
    user: null,
    resave: false,
    saveUninitialized: false,
    cookie: { maxAge: 30 * 24 * 60 * 60 * 1000 },
  })
);
app.use(express.json());
app.use((req, res, next) => log(req, res, next));

app.use('/auth', authRouter);
app.use('/pet-owners', isAuthenticated, petOwnerRouter);
app.use('/pets', isAuthenticated, () => new Error('Not implemented yet'));
app.use(
  '/veterinarians',
  isAuthenticated,
  () => new Error('Not implemented yet')
);

app.get('/', (req, res) => getDefault(req, res));

module.exports = app;

function log(req, res, next) {
  const start = Date.now();

  next();
  const delta = Date.now() - start;

  res.on('finish', () =>
    console.log(`${req.method} ${req.originalUrl} ${res.statusCode} ${delta}ms`)
  );
}

function getDefault(req, res) {
  res.status(200).json({
    info: 'The server is running...',
  });
}