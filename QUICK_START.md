# Quick Start Guide - Lost and Found Portal

## 🚀 Running the Application

### Prerequisites
- Java 17 or higher
- Node.js 16 or higher  
- MySQL Server
- Maven 3.6 or higher

## Step 1: Database Setup

Create a MySQL database:
```sql
CREATE DATABASE lost_found_portal;
```

## Step 2: Backend Setup

1. **Navigate to backend directory:**
```bash
cd backend
```

2. **Update database credentials** in `src/main/resources/application.properties`:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/lost_found_portal?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true
spring.datasource.username=your_mysql_username
spring.datasource.password=your_mysql_password
```

3. **Build and run the backend:**
```bash
# Option 1: Using Maven
mvn clean install
mvn spring-boot:run

# Option 2: Run from IDE
# Open LostFoundPortalApplication.java and run as Java Application
```

Backend will start on: `http://localhost:8080`

## Step 3: Frontend Setup

1. **Navigate to frontend directory:**
```bash
cd frontend
```

2. **Install dependencies:**
```bash
npm install
```

3. **Start the development server:**
```bash
npm start
```

Frontend will start on: `http://localhost:3000`

## Step 4: Access the Application

1. **Open your browser** and go to `http://localhost:3000`
2. **Register a new account** or use the admin credentials below

## Admin User Setup

To create an admin user, run this SQL command in your database:
```sql
INSERT INTO users (name, email, password, role) VALUES 
('Admin User', 'admin@example.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVEFDa', 'ADMIN');
```

**Admin Login:**
- Email: `admin@example.com`
- Password: `admin123`

## Troubleshooting

### If Maven Build Fails
Try running with:
```bash
mvn clean compile -DskipTests
mvn spring-boot:run
```

### If Frontend Fails
Try:
```bash
rm -rf node_modules package-lock.json
npm install
npm start
```

### Database Connection Issues
- Ensure MySQL is running
- Check database credentials in application.properties
- Verify database exists: `CREATE DATABASE lost_found_portal;`

## Features Available

1. **User Registration & Login**
2. **Add Lost/Found Items**
3. **Automatic Item Matching**
4. **Search & Filter Items**
5. **Admin Panel for Moderation**
6. **Status Management (Pending/Matched/Returned)**

Enjoy using the Lost and Found Portal! 🎉
