const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.json({
    status: 200,
    message: "hello world 3338"
  });
});

app.listen(8080, () => {
  console.log('Server en fonctionnement sur le port 8080');
});
