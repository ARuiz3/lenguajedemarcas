const express = require("express");

const app = express();

app.set("view engine", "ejs")

const libros = [
    {
        nombre: "Libro1",
        isbn: "123445634635",
    },
    {
        nombre: "Libro2",
        isbn: "634635213213",
    },];

app.get("/", (req, res) => {
    res.send("Hola mundo");
});

app.get("/libros", (req, res) => {
    //llamada a BBDD

    res.setHeader("Content-type", "application/json");
    res.send(JSON.stringify(libros));
});
app.get("/libreria", (req, res) => {
    res.render("home", { libros: libros });
});

app.listen(4000, () => {
    console.log("Escuchando en http://localhost:4000")
});