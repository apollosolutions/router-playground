const express = require("express");
const app = express();
const port = 3000;

app.use(express.json());

// Handle POST requests only, see the Router docs:
// https://www.apollographql.com/docs/router/customizations/coprocessor
app.post("/", (req, res) => {
    console.log(`request headers ${JSON.stringify(req.headers, null, 2)}`);
    const request = req.body;
    console.log("✉️ Got payload:");
    console.log(JSON.stringify(request, null, 2));

    res.json(request);
});

app.listen(port, () => {
    console.log(`🚀 Coprocessor running on port ${port}. Make sure you are using an enterprise router to test this feature`);
});
