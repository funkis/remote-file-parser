const express = require('express');
const router = express.Router();
const bodyParser = require('body-parser');
const textract = require('textract');

router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());

// Parses A File
router.post('/', function (req, res) {
  let confirmation = {
    file : req.body.file
  }
  // see language codes at https://github.com/tesseract-ocr/tesseract/wiki/Data-Files 
  textract.fromUrl(req.body.file, { tesseract : { lang: "swe"} }, ( error, text ) => {
    console.log(error);
    console.log(text);
    confirmation.text = text;
    res.status(200).send(confirmation);
  });
  
});



router.get('/', function (req, res) {
  res.status(200).send(['ok']);
});

module.exports = router;