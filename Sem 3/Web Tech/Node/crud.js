const mongoose = require("mongoose");
const express = require("express");
const student = require("./student");
const bodyParser = require('body-parser')

mongoose
  .connect(
    "mongodb+srv://madhav:2wptHS2HgAHrk2NJ@cluster0.2tbzx7x.mongodb.net/?retryWrites=true&w=majority"
  )
  .then(() => {
    const app = express();
    app.listen(3000, () => {
      console.log("connected at 3000");
    });

    app.use(bodyParser.urlencoded({ extended: false }))
    app.use(bodyParser.json())

    //getAll
    app.get("/student", async (req, res) => {
      const data = await student.find();
      res.send(data);
    });

    //getById
    app.get("/student/:id", async (req, res) => {
      let studentData = await student.findOne({ _id: req.params.id });
      res.send(studentData);
    });

    //delete
    app.delete("/student/:id", async (req, res) => {
      let studentData = await student.findOne({ _id: req.params.id });
      await studentData.deleteOne();
      res.send(studentData);
    });

    //add
    app.post("/student/add", async (req, res) => {
      console.log(req.body);
      const studentt = new student({
        _id: new mongoose.Types.ObjectId(),
        name: req.body.name,
        age: req.body.age,
      });

      await studentt.save()
      res.send(studentt)
    });

    //edit
    app.patch("/student/edit/:id", async (req, res) => {
        console.log(req.body);
        let studentData = await student.findOne({ _id: req.params.id });

        studentData.name = req.body.name;
        studentData.age = req.body.age;
        
        await studentData.save()
        res.send(studentData)
      });
  });

// cors
// app.use(express.json)
//made a change