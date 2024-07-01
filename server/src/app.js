// Routes
const authRouter = require('./auth/auth.routes');
const petOwnerRouter = require('./pet-owner/petOwner.routes');
const vetRouter = require('./vet/vet.routes');
const clinicRouter = require('./clinic/clinic.routes');
const petRouter = require('./pet/pet.routes');

// Authentication
const {
  isAuthenticatedPetOwner,
  isAuthenticatedVet,
  isAuthenticated,
} = require('./auth/auth.controller');

// Dependencies
const express = require('express');
const session = require('express-session');
const crypto = require('crypto');
const cors = require('cors');

const corsPolicy = {
  origin: `http://localhost:${process.env.F_PORT}`,
  allowedHeaders: ['Content-Type', 'Authorization'],
  credentials: true,
};

const app = express();
const sessionSecret = crypto.randomBytes(32).toString('hex');

// Middlewares
app.use(
  session({
    secret: sessionSecret,
    user: null,
    resave: false,
    saveUninitialized: false,
    cookie: {
      secure: false,
      httpOnly: true,
      maxAge: 30 * 24 * 60 * 60 * 1000,
      sameSite: 'lax',
    },
  })
);
app.use(express.json());
app.use((req, res, next) => log(req, res, next));

app.use(cors(corsPolicy));

app.use('/auth', authRouter);

app.use('/pet-owners', /* isAuthenticatedPetOwner, */ petOwnerRouter);

app.use('/vets', /* isAuthenticatedVet, */ vetRouter);

app.use('/pets', /* isAuthenticated, */ petRouter);

app.use('/clinics', isAuthenticated, clinicRouter);

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
  const body = {
    status: 'The server is running...',
  };

  if (req.session.user) body.user = req.session.user;

  res.status(200).json(body);
}
