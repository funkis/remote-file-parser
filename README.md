# remote-file-parser
Read and parse remote files

# Staging Environment:
* URL: `url`
* Testing:
  * `curl -H "Content-Type: application/json" -X POST -d '{"file":"https://www.cmu.edu/blackboard/files/evaluate/tests-example.xls"}' reader.com/parse`

# Local Dev Setup:
* From root directory:
  * `npm install` (Installs node dependencies)
  * `docker-compose up --build` (Runs docker images)
* Testing:
  * `curl -H "Content-Type: application/json" -X POST -d '{"file":"https://i.ytimg.com/vi/Q9A6kdXkKF0/hqdefault.jpg"}' localhost:8081/parse`


# Extra added: 
Dockerfile now contains all language packs.
Given a specific language you want to use, just change the `lang` property in `ParserController.js`, eg
```javascript
  let config = {
    tesseract : { lang: "swe"}
  };
```

Express is configures to statically serve the ./public folder, so you can put any test image in that and then reference it in your API call, eg. 

```bash
  curl -H "Content-Type: application/json" -X POST -d '{"file":"localhost:3000/images/swe-test.png"}' localhost:8081/parse
```