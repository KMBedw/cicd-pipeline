const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.json({
    status: 200,
    message: "hello Edwin World test avec B3 !"
  });
});

app.listen(8080, () => {
  console.log('Server en fonctionnement sur le port 8080');
});