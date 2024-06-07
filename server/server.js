require('dotenv').config();

const http = require('http');
const app = require('./src/app');

const PORT = process.env.B_PORT || 5000;

const server = http.createServer(app);

server.listen(PORT, () => {
  console.log(`Listening on port ${PORT}...`);
});
