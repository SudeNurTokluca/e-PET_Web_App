const sql = require('../sql');
const exceptions = require('../exceptions');
const { getPetOwnerCredentials } = require('../pet-owner/petOwner.controller');

const bcrypt = require('bcrypt');

function register(req, res) {
  throw new Error('Not implemented yet');
}

// POST
/* expected-body:
    {
        "email": "
        "password": "123456"
        "user-type": "pet-owner" "veterinarian" "admin"
    }
*/
function login(req, res) {
  const { email, password } = req.body;

  if (!email || !password) {
    exceptions.BadRequest(res);
    return;
  }

  getCredentialsByUserType(req, res).then(credentials => {
    if (credentials) {
      const [hashedPassword] = credentials;

      /* if (checkPassword(password, hashedPassword)) {
        req.session.user = email;
        res.status(200).json({ message: 'Login successful' });
      } else {
        exceptions.Unauthorized(res);
      } */

      req.session.user = email;
      res.status(200).json({ message: 'Login successful' });
    }
  });
}

module.exports = {
  register,
  login,
};

function getCredentialsByUserType(req, res) {
  const { userType } = req.body;

  if (
    userType !== 'pet-owner' &&
    userType !== 'veterinarian' &&
    userType !== 'admin'
  ) {
    exceptions.BadRequest(res);
    return;
  }

  switch (userType) {
    case 'pet-owner':
      return getPetOwnerCredentials(req, res);
      break;
    case 'veterinarian':
      // FIXME: Implement this
      break;
    case 'admin':
      // FIXME: Implement this
      break;
  }
}

function checkPassword(plainTextPassword, hashedPassword) {
  return bcrypt.compareSync(plainTextPassword, hashedPassword);
}
