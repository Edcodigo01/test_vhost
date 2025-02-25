const express = require('express');
const app = express();
const port = 80;

// Middleware para capturar el subdominio
// app.use((req, res, next) => {
//     const host = req.headers.host;
//     const subdomain = host.split('.')[0]; // Extraer el subdominio
//     req.subdomain = subdomain;
//     next();
// });

// Ruta GET
app.get('/', (req, res) => {
    res.json({ message: `prueba` });

    // res.json({ message: `El subdominio es: "${req.subdomain}"` });
});

// Iniciar servidor
app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
});