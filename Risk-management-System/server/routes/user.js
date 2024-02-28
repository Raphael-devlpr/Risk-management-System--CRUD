const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

/////////////////////////////////////////////////////////////// MY ROUTES \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

router.get('/', userController.view); // last error 08/10 00:34 - will figure in the morning
router.post('/', userController.find);



router.get('/adduser', userController.form);
router.post('/adduser', userController.create);
router.get('/edituser/:id', userController.edit);
router.post('/edituser/:id', userController.update);
router.get('/viewuser/:id', userController.viewall);
router.get('/:id', userController.delete);

// router.get('',(req, res) => {
//     res.render('home');
//     });

    module.exports = router;  //08/10/23  00:26am error!!!!! - took me longer that it should have.
    