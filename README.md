# 🔍 Lost and Found Smart Portal with Admin Moderation System

A full-stack web application for managing lost and found items with automatic matching and admin moderation features.

## 📋 Features

### User Features
- **User Authentication**: Register and login with JWT-based authentication
- **Item Management**: Add lost and found items with details
- **Automatic Matching**: Smart algorithm matches lost and found items based on title, location, and category
- **Search & Filter**: Search items and filter by type, status, category, and location
- **Dashboard**: Personal dashboard to manage your posted items
- **Responsive Design**: Modern UI with Bootstrap 5

### Admin Features
- **Admin Panel**: Dedicated admin interface for moderation
- **Item Approval**: Approve or reject user-submitted items
- **Status Management**: Update item status (Pending, Matched, Returned)
- **Content Moderation**: Delete fake or inappropriate entries
- **Statistics**: View counts of items by status

## 🏗️ Project Structure

```
lost-item-amd-found/
├── backend/                    # Spring Boot Backend
│   ├── src/main/java/com/lostfound/
│   │   ├── controller/         # REST Controllers
│   │   ├── service/           # Business Logic
│   │   ├── repository/        # JPA Repositories
│   │   ├── model/             # Entity Models
│   │   ├── dto/               # Data Transfer Objects
│   │   └── config/            # Security & JWT Config
│   ├── src/main/resources/
│   │   └── application.properties
│   └── pom.xml                # Maven Dependencies
├── frontend/                   # React Frontend
│   ├── src/
│   │   ├── components/        # Reusable Components
│   │   ├── pages/            # Page Components
│   │   ├── services/         # API Services
│   │   ├── utils/            # Utility Functions
│   │   ├── App.js            # Main App Component
│   │   └── index.js          # Entry Point
│   ├── public/
│   │   └── index.html
│   └── package.json          # NPM Dependencies
└── README.md
```

## 🛠️ Technology Stack

### Backend
- **Java 17+**
- **Spring Boot 3.2.0**
- **Spring Security** (JWT Authentication)
- **Spring Data JPA** (Database Operations)
- **MySQL** (Database)
- **Maven** (Build Tool)
- **Lombok** (Code Generation)

### Frontend
- **React 18**
- **React Router** (Navigation)
- **Axios** (HTTP Client)
- **Bootstrap 5** (UI Framework)
- **React Context** (State Management)

## 🚀 Setup Instructions

### Prerequisites
- Java 17 or higher
- Node.js 16 or higher
- MySQL Server
- Maven 3.6 or higher

### 1. Database Setup

Create a MySQL database named `lost_found_portal`:

```sql
CREATE DATABASE lost_found_portal;
```

### 2. Backend Setup

1. Navigate to the backend directory:
```bash
cd backend
```

2. Update database credentials in `src/main/resources/application.properties`:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/lost_found_portal?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true
spring.datasource.username=your_mysql_username
spring.datasource.password=your_mysql_password
```

3. Build and run the backend:
```bash
# Using Maven
mvn clean install
mvn spring-boot:run

# Or run directly from IDE
# Run LostFoundPortalApplication.java
```

The backend will start on `http://localhost:8080`

### 3. Frontend Setup

1. Navigate to the frontend directory:
```bash
cd frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm start
```

The frontend will start on `http://localhost:3000`

## 📡 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login

### Items
- `GET /api/items/all` - Get all items
- `GET /api/items/{id}` - Get item by ID
- `POST /api/items/add` - Add new item
- `DELETE /api/items/{id}` - Delete item
- `GET /api/items/my-items` - Get current user's items

### Admin (Requires ADMIN role)
- `GET /api/admin/items` - Get all items (Admin view)
- `PUT /api/admin/approve/{id}` - Approve item
- `DELETE /api/admin/delete/{id}` - Delete item (Admin)
- `PUT /api/admin/status/{id}` - Update item status

## 🔐 Default Admin User

To create an admin user, you can manually insert into the database:

```sql
INSERT INTO users (name, email, password, role) VALUES 
('Admin User', 'admin@example.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVEFDa', 'ADMIN');
```

This creates an admin user with:
- Email: `admin@example.com`
- Password: `admin123`

## 🎯 Usage Guide

### For Regular Users
1. **Register**: Create an account with your email and password
2. **Login**: Access your dashboard
3. **Add Items**: Post lost or found items with details
4. **Browse**: View all items and search for matches
5. **Manage**: Edit or delete your posted items

### For Admins
1. **Login** with admin credentials
2. **Access Admin Panel** from the navigation menu
3. **Moderate**: Approve, reject, or delete items
4. **Update Status**: Change item status to PENDING, MATCHED, or RETURNED
5. **Monitor**: View statistics and manage content

## 🔧 Configuration

### Backend Configuration
Edit `application.properties` to customize:
- Database connection
- JWT secret and expiration
- Server port
- CORS settings

### Frontend Configuration
Edit `src/services/api.js` to change:
- API base URL
- Request/response interceptors

## 🌟 Features in Detail

### Automatic Matching Algorithm
The system automatically matches lost and found items based on:
- **Location similarity**: Same or similar locations
- **Category matching**: Same item category
- **Title similarity**: Text similarity using edit distance algorithm

### Status System
- **PENDING** 🟡: New items awaiting review
- **MATCHED** 🔵: Items that have been automatically matched
- **RETURNED** 🟢: Items that have been successfully returned

### Search & Filtering
- Search by title, description, location, or category
- Filter by item type (Lost/Found)
- Filter by status (Pending/Matched/Returned)
- Filter by category

## 🐛 Troubleshooting

### Common Issues

1. **Database Connection Error**
   - Verify MySQL is running
   - Check database credentials in application.properties
   - Ensure database exists

2. **CORS Issues**
   - Verify frontend URL is allowed in CORS configuration
   - Check that backend is running on port 8080

3. **JWT Authentication Issues**
   - Clear browser localStorage
   - Check JWT secret configuration
   - Verify token expiration settings

4. **Frontend Build Issues**
   - Delete node_modules and package-lock.json
   - Run `npm install` again
   - Check Node.js version compatibility

## 📝 Development Notes

### Adding New Features
- Backend: Follow the existing pattern of Controller → Service → Repository
- Frontend: Use React Context for state management
- API: Follow RESTful conventions

### Security Considerations
- Passwords are encrypted using BCrypt
- JWT tokens have configurable expiration
- Admin endpoints are protected with role-based access
- Input validation on both frontend and backend

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source and available under the MIT License.

## 📞 Support

For any issues or questions, please create an issue in the repository or contact the development team.

---

**Happy Coding! 🚀**
