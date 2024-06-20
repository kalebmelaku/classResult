const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const crypto = require('crypto');
const nodemailer = require('nodemailer');
const http = require('http');
const request = require("request");
const session = require('express-session');
const cors = require('cors');
const { all } = require('axios');

const app = express();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'seng',
});

// app.use(express.json())
app.use(cors());
app.use(bodyParser.json());

//Routes
app.get('/', (req, res) =>
{
    res.json('This is backend');
});


app.post('/login', (req, res) =>
{
    const id = req.body.id;
    const query = "SELECT * FROM `newstudents` WHERE `idNumber` = ?";
    db.query(query, [id], (err, result) =>
    {
        if (err) {
            return res.status(500).json({ message: "Internal Server Error" });
        }
        if (result.length === 0) {
            return res.status(401).json({ message: "Invalid ID" });
        } else {
            const stdId = result[0].idNumber.toString();
            const stdPhone = result[0].phone.toString();
            const commType = result[0].commType.toString();
            //generate OTP

            const otp = generateOTP();
            if (commType === 'WhatsApp') {
                const query = "INSERT INTO `otp`(`id`, `otp`) VALUES (?,?)";
                db.query(query, [stdId, otp], (err, results) =>
                {
                    // whatsApp(stdPhone, otp);
                    if (true) {
                        return res.status(200).json({ message: "OTP sent successfully", result: result });
                    } else {
                    }
                });
            };
        }
    });
});

app.post('/otpVerify', (req, res) =>
{
    const { num1, num2, num3, num4, num5, stdId } = req.body;
    const userOtp = num1.toString() + num2.toString() + num3.toString() + num4.toString() + num5.toString();
    const query = "SELECT * FROM `otp` WHERE `id` = ? AND `otp` = ?";
    db.query(query, [stdId, userOtp], (err, result) =>
    {
        if (result.length > 0) {
            const query = "DELETE FROM `otp` WHERE `id` = ? AND `otp` = ?";
            db.query(query, [stdId, userOtp], (err, result) =>
            {
                if (err) {
                    return res.status(400).json({ message: "Unknown Error" });
                } else {
                    return res.status(200).json({ message: "OTP Successful" });
                }
            });
        } else {
            return res.status(401).json({ message: "Incorrect OTP" });
        }
    });
});
app.post('/getResult', (req, res) =>
{
    const { stdId } = req.body;
    const query = "SELECT * FROM `result` WHERE `idNumber` = ?";
    db.query(query, [stdId], (err, result) =>
    {
        if (result.length > 0) {
            return res.status(200).json({ message: "Result Fetched", result: result });
        } else {
            return res.status(401).json({ message: "Unknown Error" });
        }
    });
});



//logics
function generateOTP()
{
    return crypto.randomInt(10000, 100000);
}

function whatsApp(stdPhone, otp)
{


    var options = {
        method: 'POST',
        url: 'https://api.ultramsg.com/instance88331/messages/chat',
        headers: { 'content-type': ' application/x-www-form-urlencoded' },
        form: {
            "token": "8jwjxft1k3e6qz6q",
            "to": stdPhone,
            "body": `Your OTP is: ${otp}`
        }
    };

    request(options, function (error, response, body)
    {
        if (error) throw new Error(error);

        return true;
    });
}
app.listen(5000, () =>
{
    console.log('Connected to Backend');
});