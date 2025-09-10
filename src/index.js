import express from 'express';
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World vanuit GitHub Actions, now updated with APIHOOK and updated again; and now from another pc ...');
});

const PORT = 9000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
