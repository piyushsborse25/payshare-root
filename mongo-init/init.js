// Switch to billDB
db = db.getSiblingDB('billDB');

// Create app user
db.createUser({
  user: 'billAdminApp',
  pwd: 'bill@123',
  roles: [
    { role: 'readWrite', db: 'billDB' },
    { role: 'dbAdmin', db: 'billDB' }
  ]
});

// Insert dummy data so DB is visible in Compass
db.sampleCollection.insertOne({ name: "dummy" });