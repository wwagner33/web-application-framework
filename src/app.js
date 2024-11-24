const express = require('express');
const cors = require('cors');
const userRoutes = require('./routes/userRoutes');
const objectRoutes = require('./routes/objectRoutes');

require('dotenv').config();
const app = express();

app.use(cors());
app.use(express.json());

app.use('/users', userRoutes);
app.use('/objects', objectRoutes);

//Enable frontend
app.use(express.static('public'));
const path = require('path');
app.use(express.static(path.join(__dirname, '../public')));

//Run web server in port 3000
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
