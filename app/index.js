const http = require('http');

const server = http.createServer((req, res) => {
  res.end('App funcionando 🚀');
});

server.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});
