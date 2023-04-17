import express from "express";
import mysql from "mysql";
import cors from "cors";

const app = express();

app.use(express.json());
app.use(cors());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Aaron123",
  database: "blog",
});

app.get("/", (req, res) => {
  res.json("Hello this is the backend");
});

app.get("/blogs", (req, res) => {
  const q = "SELECT * FROM blog_table";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
});

app.post("/blogs", (req, res) => {
  const q = "INSERT INTO blog_table (`username`,`desc`) VALUES (?)";
  const values = [req.body.username, req.body.desc];

  db.query(q, [values], (err, data) => {
    if (err) return res.json(err);
    return res.json("Blog has been created successfully");
  });
});

app.delete("/blogs/:id", (req, res) => {
  const blogId = req.params.id;
  const q = "DELETE FROM blog_table WHERE id=?";
  db.query(q, [blogId], (err, data) => {
    if (err) return res.json(err);
    return res.json("Blog has been deleted successfully!");
  });
});

app.post("/auth", (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  db.query(
    "SELECT * FROM Users WHERE password = ? AND username = ?",
    [password, username],
    (err, results) => {
      if (err) throw err;

      if (results.length > 0) {
        res.send("Login Successful");
      } else {
        res.send("Username and Password not found !");
      }
    }
  );
});

app.listen(8080, () => {
  console.log("Connected to backend!");
});
