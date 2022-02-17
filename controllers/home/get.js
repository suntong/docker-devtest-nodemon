const express = require('express');
const router = express.Router();


router.get('/', (req, res, next) => {
    res.render('index.html');
});

router.get('/test', (req, res, next) => {
    res.send('Testing 123 succeeded');
});

module.exports = router;
