const pgPromise = require('pg-promise');
const pgInstance = pgPromise();

const config = {
  host: 'localhost',
  port: 5432,
  database: 'tvshow',
  user: 'Abdulrab'
}

const connection = pgInstance(config);

module.exports = connection;