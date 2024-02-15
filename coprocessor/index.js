const express = require("express");
const app = express();
const port = 3000;

app.use(express.json());

// Handle POST requests only, see the Router docs:
// https://www.apollographql.com/docs/router/customizations/coprocessor
app.post("/", (req, res) => {
    const request = req.body;
    console.log('Coprocessor called:', 'stage', request['stage'], 'id', request['id']);
    res.json(request);
});

app.listen(port, () => {
    console.log(`🚀 Coprocessor running on port ${port}. Make sure you are using an enterprise router to test this feature`);
});
