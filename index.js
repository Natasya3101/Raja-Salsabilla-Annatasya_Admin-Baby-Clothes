import express from "express";

import conn from "./database.js";
import jwt from "jsonwebtoken";
import multer from "multer";

import cookieParser from "cookie-parser";
import {login} from "./route/regist.js";
import { pakaian , getData, editPakaianById, deletePakaianById} from "./route/pakaian.js";
const app = express();
app.use(cookieParser());
app.use(express.json());
const upload = multer({ dest: "public/photos" });

app.use((req, res, next) => {
    //    if (req.path.startsWith("/api/login") || req.path.startsWith("/assets")) {//isi folder ini dengan kebutuhan css dan foto 

    if (req.path.startsWith("/api/login" ) || req.path.startsWith("/style")) {
        next();
    } else {
        let authorized = false;
        if (req.cookies.token) {
            try {
                req.me = jwt.verify(req.cookies.token, "kim");
                authorized = true;
            } catch (error) {
                res.clearCookie("token");
            }
        
        }
        if (authorized) {
            if (req.path.startsWith("/login")) {
                res.redirect("/home");
            } else {
                next();
            }
        } else {
            if (req.path.startsWith("/login")) {
                next();
            } else {
                if (req.path.startsWith("/api")) {
                    res.status(401);

                } else {
                    res.redirect("/login");
                }
            }
            
        }
    }
});
app.use(express.static("public"));
app.post("/api/login", login);
app.get("/api/data", getData);


app.post("/api/pakaian", upload.single("foto"), pakaian);
app.put("/api/edit/:kode_pakaian",upload.single("foto"), editPakaianById);
app.delete("/api/delete/:kode_pakaian", deletePakaianById);


app.get("/api/logout", (req, res) => {
    res.clearCookie('token');
    res.status(200).send('Logout berhasil. Redirecting to login...');
    // Optional: Redirect the user to the login page after a successful logout
    res.redirect('/login');
});


app.listen(3000, () => {
    console.log("The Server starts on port 3000");
});