const express = require('express')
const app = express()
const cors = require('cors');
const { default: axios } = require('axios');

const PORT = 3000;

app.use(cors())
app.use(express.json());
app.use(express.urlencoded({ extended: false }));


app.get('/', async (req, res) => {
    res.setHeader('Content-Type', 'text/html');
    try {
        let result = await axios.get("http://172.18.0.3:1323")
        // let result = await axios.get("http://127.0.0.1:1323")
        return res.send(result.data)
    } catch (err) {
        console.log(err);
    }
    return res.send("error")
  })

app.listen(PORT, () => {
    console.log("[success] task 1 : Server running on port " + PORT)
})