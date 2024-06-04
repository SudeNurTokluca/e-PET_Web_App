const petOwnerRouter = require('./hayvansahibi/petOwner.routes');

const express = require('express');
const app = express();

app.use(express.json());
app.use((req, res, next) => log(req, res, next));

app.use('/pet-owners', petOwnerRouter);

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
