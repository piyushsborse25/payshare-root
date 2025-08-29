## ✨ BILLSTACK ✨

A full-stack application built with **Angular**, **Spring Boot**, and **MongoDB** to manage bills, receipts, and payments efficiently.

## 🛠 FEATURES

✅ Create and manage bills & receipts
✅ User authentication & role-based access
✅ Persistent storage using MongoDB
✅ Dashboard & analytics
✅ REST APIs with Spring Boot
✅ Modern Angular frontend

## 💻 TECH STACK

🔹 Frontend: Angular 17, TypeScript, Tailwind/SCSS
🔹 Backend: Spring Boot 3, Java 17, Maven
🔹 Database: MongoDB
🔹 Deployment: Docker + Nginx

## 📂 PROJECT STRUCTURE

billstack/
├── billstack-frontend/   🎨 Angular app
│   ├── src/              📂 Frontend source code
│   ├── angular.json      ⚙️ Angular config
│   └── package.json      📦 Dependencies
│
├── billstack-backend/    ⚡ Spring Boot app
│   ├── src/main/java/    📂 Backend source code
│   ├── pom.xml           📦 Maven dependencies
│
└── README.md

## ⚙️ SETUP & INSTALLATION

1️⃣ Clone the Repository
👉 git clone [https://github.com/your-username/billstack.git](https://github.com/your-username/billstack.git)
👉 cd billstack

2️⃣ Setup Backend (Spring Boot)
👉 cd billstack-backend
👉 mvn clean install
👉 mvn spring-boot\:run
🌐 Runs at: [http://localhost:8080](http://localhost:8080)

3️⃣ Setup Frontend (Angular)
👉 cd billstack-frontend
👉 npm install
👉 ng serve
🌐 Runs at: [http://localhost:4200](http://localhost:4200)

## 🐳 DOCKER SETUP

👉 docker-compose up --build

## 🔐 ENVIRONMENT VARIABLES (billstack-backend/.env)

MONGO\_URI = mongodb://localhost:27017/billDB
JWT\_SECRET = your-secret-key

## 📜 SCRIPTS

▶️ Angular: npm run build / npm start
▶️ Spring Boot: mvn spring-boot\:run

## 🤝 CONTRIBUTING

1. Fork the repo
2. Create a new branch
3. Commit changes
4. Open a Pull Request

## 📄 LICENSE

MIT License © 2025 Your Name