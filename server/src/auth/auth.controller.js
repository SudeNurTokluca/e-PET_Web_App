const sql = require('../sql');
const exceptions = require('../exceptions');

const {
  _getPetOwnerCredentials,
  _addPetOwner,
} = require('../pet-owner/petOwner.controller');
const { _getVetCredentials, _addVet } = require('../vet/vet.controller');

const bcrypt = require('bcrypt');

// POST
/* expected-body:
  {
    "userType": "pet-owner" "veterinarian" "admin"
  }
*/
function register(req, res) {
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
      return _addPetOwner(req, res);

    case 'veterinarian':
      return _addVet(req, res);

    case 'admin':
      /* FIXME */ throw new Error('Not implemented yet');
  }
}

// POST
/* expected-body:
    {
        "email": "
        "password": "123456"
        "userType": "pet-owner" "veterinarian" "admin"
    }
*/
function login(req, res) {
  const { email, password } = req.body;

  if (!email || !password) {
    exceptions.BadRequest(res);
    return;
  }

  getCredentialsByUserType(req, res)
    .then(container => {
      if (!container || !container[0]) {
        throw new Error('No credentials found for given mail.');
      }

      const [credential] = container[0];
      const hashedPassword = Object.values(credential)[0];

      if (bcrypt.compareSync(password, hashedPassword)) {
        req.session.user = {
          who: email,
          userType: container[1],
        };

        console.log(req.session.user.who, 'logged in.');

        res.status(200).json({ message: 'Successfully logged in' });
      } else {
        exceptions.NotFound(res);
      }
    })
    .catch(err => {
      console.log(err);

      if (!res.headersSent) {
        if (err.message === 'No credentials found for given mail.') {
          exceptions.NotFound(res);
        } else {
          exceptions.InternalServerError(res);
        }
      }
    });
}

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
      return _getPetOwnerCredentials(req, res, userType);
      break;
    case 'veterinarian':
      return _getVetCredentials(req, res, userType);
      break;
    case 'admin':
      /* FIXME */ throw new Error('Not implemented yet');
      break;
  }
}

function getAuthUser(req, res) {
  const currentUser = req.session.user;

  if (currentUser) {
    console.log(currentUser.who, 'is authenticated.');
    res.status(200).json(currentUser);
  } else {
    console.log('No user is authenticated.');
    exceptions.NotFound(res);
  }
}

function isAuthenticatedPetOwner(req, res, next) {
  const currentUser = req.session.user;

  if (currentUser && currentUser.userType === 'pet-owner') next();
  else exceptions.Unauthorized(res);
}

function isAuthenticatedVet(req, res, next) {
  const currentUser = req.session.user;

  if (currentUser && currentUser.userType === 'veterinarian') next();
  else exceptions.Unauthorized(res);
}

function isAuthenticated(req, res, next) {
  const currentUser = req.session.user;

  if (currentUser) next();
  else exceptions.Unauthorized(res);
}

module.exports = {
  register,
  login,
  isAuthenticatedPetOwner,
  isAuthenticatedVet,
  isAuthenticated,
  getAuthUser,
};
