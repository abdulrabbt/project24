const db = require('../db/config');
const show = {};

show.getAll = (req, res, next) => {
  db.manyOrNone('SELECT * FROM shows;')
    .then((data) => {
      res.locals.shows = data;
      next();
    })
    .catch((error) => {
      console.log(error)
      next();
    })
}

show.create = (req, res, next) => {
  db.one('INSERT INTO shows (name, description, image, rating) VALUES($1, $2, $3, $4) RETURNING *;',
    [req.body.name, req.body.description, req.body.image, req.body.rating])
    .then((data) => {
      res.locals.show = data;
      next();
    })
    .catch((error) => {
      console.log(error)
      next();
    })
}

show.update = (req, res, next) => {
  db.one('UPDATE shows SET name=$1, description=$2, image=$3, rating=$4 WHERE id=$5 RETURNING *;',
  [req.body.name, req.body.description, req.body.image, req.body.rating, req.params.id])
    .then((data) => {
      res.locals.show = data;
      next();
    })
    .catch((error) => {
      console.log(error)
      next();
    })
}

show.delete = (req, res, next) => {
  db.none('DELETE FROM shows WHERE id=$1', [req.params.id])
    .then((data) => {
      next();
    })
    .catch((error) => {
      console.log(error)
      next();
    })
}

module.exports = show;