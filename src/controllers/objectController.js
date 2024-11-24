const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const createObject = async (req, res) => {
  const { name, description, ownerId } = req.body;
  try {
    const newObject = await prisma.object.create({
      data: { name, description, ownerId },
    });
    res.status(201).json(newObject);
  } catch (error) {
    res.status(500).json({ error: 'Could not create object' });
  }
};

const getObjects = async (req, res) => {
  try {
    const objects = await prisma.object.findMany();
    res.status(200).json(objects);
  } catch (error) {
    res.status(500).json({ error: 'Could not fetch objects' });
  }
};

module.exports = { createObject, getObjects };
