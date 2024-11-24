const express = require('express');
const { createObject, getObjects } = require('../controllers/objectController');
const router = express.Router();

router.post('/', createObject);
router.get('/', getObjects);

module.exports = router;
