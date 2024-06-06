const sql = require('../sql');
const exceptions = require('../exceptions');
const { getPetOwnerCredentials } = require('../pet-owner/petOwner.controller');

const bcrypt = require('bcrypt');

const isAuthenticated = (req, res, next) => {
  if (req.session.user) next();
  else exceptions.Unauthorized(res);
};

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

  getCredentialsByUserType(req, res)
    .then(credentials => {
      const [credential] = credentials;
      const hashedPassword = Object.values(credential)[0];

      if (credentials) {
        if (password === hashedPassword) {
          req.session.user = String(email);
          res.status(200).json({ message: 'Successfully logged in' });
        } else {
          exceptions.Unauthorized(res);
        }
      } else exceptions.Unauthorized(res);
    })
    .catch(err => {
      console.log(err);
      exceptions.InternalServerError(res);
    });
}

module.exports = {
  register,
  login,
  isAuthenticated,
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
