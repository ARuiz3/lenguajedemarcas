const express = require("express");

const app = express();

const bodyParser = require('body-parser');

const db = require("./database");

const md5 = (require("md5"));

const session = require("express-session");

const cookieParser = require("cookie-parser")

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

const oneDay = 1000 * 60 *60 * 24;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(session({ secret: "Your secret key", cookie: {maxAge: oneDay}}));

checkSession = (req, res, next) => {
    //valiaremos la sesion
    console.log(req.session.user);
    if(req.session.user){
        next();
    }else{
        const err = new Error("El usuario no está logeado");
        console.log(err.message);
        next(err);
      return;
    }
    //si es valida   
   
    
};
app.get("/", (req, res) => {
    res.send("Hola mundo");
});

app.get("/libros", (req, res, next) => {
    //llamada a BBDD

    res.setHeader("Content-type", "application/json");
    res.send(JSON.stringify(libros));
});
app.get("/libreria", (req, res, next) => {
    res.render("home", { libros: libros });
});

app.get("/users", (req, res, next) => {
    const sql = "select * from user";
    const params = [];
    db.all(sql, params, (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.setHeader("Content-type", "application/json");
        res.send(JSON.stringify(rows));
    });


});

app.get("/login", (req, res, next) => {
    res.render("login")
});

app.post("/login", (req, res, next) => {
    console.log(req.body);
    const sql = "select * from user where email = ?";
    const params = [req.body.usuario];
    db.get(sql, params, (err, row) => {
        console.log("row", row)
        if (err) {
            res.status(400).json({ error: err.message });
            return;
        }
        if (row == undefined) {
            res.status(400).json({ error: "user not found" });
            return;
        }
        if (row.password == md5(req.body.contrasenia)) {
            req.session.user = row;
            res.redirect("/pagina_secreta");
            return;
        }
        res.sendStatus(400);
    });
});

app.get("/pagina_secreta", checkSession, (req, res, next) => {
    const usuario = req.session.user;
    res.render("pagina_secreta", {nombre: usuario.name});
});



app.listen(4000, () => {
    console.log("Escuchando en http://localhost:4000")
});