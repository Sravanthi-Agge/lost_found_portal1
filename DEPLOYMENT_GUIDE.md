# 🚀 Complete Production Deployment Guide

## 📋 Project Structure
```
lost-found-portal/
├── frontend/          # React App
├── backend/           # Spring Boot API
├── vercel.json        # Vercel configuration
├── render.yaml         # Render configuration
└── package.json        # Root package.json
```

## 🎯 Deployment Strategy

### **Option 1: Frontend on Vercel + Backend on Render** ⭐ RECOMMENDED

#### **Step 1: Deploy Backend to Render**
1. **Go to:** https://render.com/dashboard
2. **Click:** "New +" → "Web Service"
3. **Connect GitHub:** `Sravanthi-Agge/lost_found_portal1`
4. **Configure:**
   - **Name:** `lost-found-backend`
   - **Environment:** `Docker`
   - **Root Directory:** `backend`
   - **Dockerfile:** `./backend/Dockerfile`
   - **Branch:** `main`

5. **Environment Variables:**
   ```
   SPRING_DATASOURCE_URL=jdbc:mysql://containers-us-west-19.railway.app:6969/railway
   SPRING_DATASOURCE_USERNAME=root
   SPRING_DATASOURCE_PASSWORD=your-generated-password
   SPRING_JPA_HIBERNATE_DDL_AUTO=update
   SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.MySQLDialect
   PORT=8080
   ```

6. **Deploy!** Get backend URL: `https://your-backend.onrender.com`

#### **Step 2: Deploy Frontend to Vercel**
1. **Go to:** https://vercel.com/agge-sravanthus-projects
2. **Click:** "Add New..." → "Project"
3. **Import GitHub:** `Sravanthi-Agge/lost_found_portal1`
4. **Configure:**
   - **Framework:** `Create React App`
   - **Root Directory:** `frontend`
   - **Build Command:** `npm run build`
   - **Output Directory:** `build`

5. **Environment Variables:**
   ```
   REACT_APP_API_URL=https://your-backend.onrender.com/api
   ```

6. **Deploy!** Get frontend URL: `https://your-app.vercel.app`

---

### **Option 2: Full Stack on Render** (Alternative)

#### **Deploy Both Frontend and Backend on Render**
1. **Use:** `render.yaml` configuration
2. **Backend:** Docker deployment
3. **Frontend:** Static deployment
4. **Database:** Railway or Render PostgreSQL

---

## 🔧 Configuration Files

### **vercel.json** (Root)
```json
{
  "version": 2,
  "buildCommand": "cd frontend && npm run build",
  "outputDirectory": "frontend/build",
  "installCommand": "cd frontend && npm install",
  "framework": "create-react-app",
  "routes": [
    {
      "src": "/api/(.*)",
      "dest": "/backend/$1"
    },
    {
      "src": "/(.*)",
      "dest": "/frontend/$1"
    }
  ]
}
```

### **render.yaml**
```yaml
services:
  - type: web
    name: lost-found-backend
    env: docker
    dockerfilePath: ./backend/Dockerfile
    dockerContext: ./backend
    healthCheckPath: /api/items/all
```

---

## 🎯 Expected URLs

### **After Deployment:**
- **Frontend:** `https://your-app.vercel.app`
- **Backend:** `https://your-backend.onrender.com`
- **API:** `https://your-backend.onrender.com/api`

---

## ✅ Pre-Deployment Checklist

### **Before Deploying:**
- [ ] Backend runs locally on port 8080
- [ ] Frontend builds successfully (`npm run build`)
- [ ] All API endpoints work locally
- [ ] Database connection works
- [ ] Environment variables configured

### **After Deploying:**
- [ ] Frontend loads without errors
- [ ] API calls work from frontend
- [ ] User registration/login works
- [ ] Item addition works
- [ ] Data persists in database

---

## � Troubleshooting

### **404 NOT_FOUND Error:**
**Cause:** Vercel can't find the frontend app
**Solution:**
1. Check `vercel.json` is in root directory
2. Verify `rootDirectory` is set to `frontend`
3. Ensure `package.json` exists in root

### **API Connection Error:**
**Cause:** Frontend can't reach backend
**Solution:**
1. Update `REACT_APP_API_URL` environment variable
2. Check CORS configuration
3. Verify backend is running

### **Build Failures:**
**Cause:** Dependencies or configuration issues
**Solution:**
1. Check `package.json` dependencies
2. Verify build commands
3. Check deployment logs

---

## � Quick Start Commands

### **For Vercel:**
```bash
# Deploy frontend only
vercel --prod --scope frontend
```

### **For Render:**
```bash
# Deploy both services
render deploy
```

---

## 📱 Production Features

### **✅ What Works in Production:**
- User registration/login
- Item management (CRUD)
- Search functionality
- Admin panel
- Data persistence
- CORS handling
- JWT authentication

### **🔧 What to Monitor:**
- API response times
- Database performance
- Error rates
- User activity
- Resource usage

---

## 🔄 Continuous Deployment
Both platforms support automatic deployment:
- **Vercel:** Auto-deploys on push to main branch
- **Render:** Auto-deploys on push to main branch

---

## 📞 Support
- **Vercel Docs:** https://vercel.com/docs
- **Render Docs:** https://render.com/docs
- **GitHub Repository:** https://github.com/Sravanthi-Agge/lost_found_portal1
