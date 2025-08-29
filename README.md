# ✨ BILLSTACK - Bill Management System

A modern full-stack application built with **Angular**, **Spring Boot**, and **MongoDB** designed to streamline bill, receipt, and payment management with powerful analytics and user-friendly interfaces.

## 🚀 Features

- **📋 Bill Management** - Create, view, edit, and organize bills and receipts
- **👥 User Authentication** - Secure login with role-based access control
- **📊 Dashboard Analytics** - Visual insights into spending patterns and trends
- **💾 Data Persistence** - MongoDB integration for reliable data storage
- **🔒 RESTful APIs** - Robust Spring Boot backend with secure endpoints
- **🎨 Modern UI** - Responsive Angular frontend with Tailwind CSS

## 🛠 Tech Stack

- **Frontend**: Angular 17, TypeScript, Tailwind CSS, SCSS
- **Backend**: Spring Boot 3, Java 17, Spring Security, JWT
- **Database**: MongoDB
- **Build Tools**: Maven, npm
- **Deployment**: Docker, Docker Compose, Nginx

## 📁 Project Structure

```
billstack/
├── 📂 billstack-frontend/          # Angular application
│   ├── src/
│   │   ├── app/                    # Main application code
│   │   │   ├── components/         # Reusable UI components
│   │   │   ├── services/           # API services
│   │   │   ├── guards/             # Route protection
│   │   │   └── models/             # TypeScript interfaces
│   │   ├── assets/                 # Static assets
│   │   └── environments/           # Environment configurations
│   ├── angular.json                # Angular configuration
│   └── package.json                # Frontend dependencies
│
├── 📂 billstack-backend/           # Spring Boot application
│   ├── src/main/java/
│   │   └── com/billstack/          # Package structure
│   │       ├── controllers/        # REST API endpoints
│   │       ├── models/             # Data models
│   │       ├── repositories/       # Data access layer
│   │       ├── services/           # Business logic
│   │       └── security/           # Authentication & authorization
│   ├── src/main/resources/
│   │   ├── application.properties  # Spring configuration
│   │   └── application-dev.properties # Development configuration
│   ├── pom.xml                     # Maven dependencies
│   └── Dockerfile                  # Container configuration
│
├── 📂 docker/                      # Docker configuration files
├── docker-compose.yml              # Multi-container setup
└── README.md                       # Project documentation
```

## ⚡ Quick Start

### Prerequisites

- Java 17 or higher
- Node.js 18 or higher
- Angular CLI 17
- Maven 3.6+
- MongoDB 5.0+ (or Docker)
- Docker (optional)

### Local Development Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/billstack.git
   cd billstack
   ```

2. **Set Up MongoDB**
   ```bash
   # Option 1: Using Docker
   docker run -d -p 27017:27017 --name mongodb mongo:5.0
   
   # Option 2: Install MongoDB locally
   # Follow instructions at https://docs.mongodb.com/manual/installation/
   ```

3. **Configure Backend**
   ```bash
   cd billstack-backend
   
   # Create environment file
   cp src/main/resources/application-dev.properties.example src/main/resources/application-dev.properties
   
   # Edit the file with your MongoDB and JWT settings
   # nano src/main/resources/application-dev.properties
   ```

4. **Run the Backend**
   ```bash
   # Build and run with Maven
   mvn clean install
   mvn spring-boot:run
   
   # API will be available at http://localhost:8080
   # Swagger UI at http://localhost:8080/swagger-ui.html
   ```

5. **Set Up Frontend**
   ```bash
   cd ../billstack-frontend
   
   # Install dependencies
   npm install
   
   # Serve with hot reload
   ng serve
   
   # Application will be available at http://localhost:4200
   ```

### Docker Deployment

1. **Build and Run with Docker Compose**
   ```bash
   # From the project root directory
   docker-compose up -d --build
   
   # Application will be available at http://localhost:80
   ```

2. **Stop the Application**
   ```bash
   docker-compose down
   ```

## 🔧 Configuration

### Environment Variables

Create a `.env` file in the backend directory:

```properties
# MongoDB Configuration
MONGO_URI=mongodb://localhost:27017/billstack
MONGO_DATABASE=billstack

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key
JWT_EXPIRATION=86400000

# Server Configuration
SERVER_PORT=8080

# CORS Configuration
FRONTEND_URL=http://localhost:4200
```

### Frontend Environment

Update `src/environments/environment.ts`:

```typescript
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8080/api',
  appName: 'BillStack'
};
```

## 📊 API Documentation

Once the backend is running, access the API documentation at:

- Swagger UI: http://localhost:8080/swagger-ui.html
- OpenAPI Spec: http://localhost:8080/v3/api-docs

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a pull request

### Development Guidelines

- Follow Angular style guide for frontend code
- Adhere to Java coding conventions for backend
- Write tests for new features
- Update documentation accordingly
- Ensure all tests pass before submitting PR

## 🐛 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   - Ensure MongoDB is running
   - Check connection string in application properties

2. **JWT Authentication Issues**
   - Verify JWT secret is set correctly
   - Check token expiration settings

3. **CORS Errors**
   - Confirm frontend URL is whitelisted in backend configuration

4. **Build Failures**
   - Ensure correct versions of Java, Node.js, and Angular CLI

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Angular team for the fantastic framework
- Spring Boot team for the robust backend framework
- MongoDB for the reliable database solution
- Contributors and testers

---

**Need Help?** 
- Create an issue on GitHub
- Check the documentation
- Reach out to the development team

---
*Built with ❤️ using Angular, Spring Boot, and MongoDB*