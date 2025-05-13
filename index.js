const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello, Node.js!');
});

const PORT = 3000;
server.listen(PORT, () => {
  console.log('Server is running on http://0.0.0.0:3000');;
});

