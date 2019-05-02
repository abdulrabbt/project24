const express = require('express');
const router = express.Router();

const show = require('../models/show');

const sendShows = (req, res) => res.json(res.locals.shows);
const sendShow = (req, res) => res.json(res.locals.show);
const sendSuccess = (req, res) => res.json({ message: 'success' });

router.get('/', show.getAll, sendShows);
router.post('/', show.create, sendShow);
router.put('/:id', show.update, sendShow);
router.delete('/:id', show.delete, sendSuccess);

module.exports = router;