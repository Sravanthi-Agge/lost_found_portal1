# 🚀 Complete Deployment Guide

## 📋 Overview
Deploy your Lost and Found Smart Portal to:
- **Frontend:** Vercel (https://vercel.com/agge-sravanthus-projects)
- **Backend:** Render (https://dashboard.render.com/)

---

## 🔧 Step 1: Deploy Backend to Render

### 1.1 Setup Database
1. Go to [Railway.app](https://railway.app)
2. Create a new MySQL database
3. Get your database connection string

### 1.2 Deploy to Render
1. Go to [Render Dashboard](https://dashboard.render.com/)
2. Click **"New +"** → **"Web Service"**
3. **Connect GitHub repository:** `Sravanthi-Agge/lost_found_portal1`
4. **Configure:**
   - **Name:** `lost-found-backend`
   - **Root Directory:** `backend`
   - **Runtime:** `Docker`
   - **Branch:** `main`
   - **Instance Type:** `Free`

### 1.3 Environment Variables
Add these environment variables:
```
SPRING_DATASOURCE_URL=jdbc:mysql://your-railway-mysql-host:port/database
SPRING_DATASOURCE_USERNAME=root
SPRING_DATASOURCE_PASSWORD=your-password
SPRING_JPA_HIBERNATE_DDL_AUTO=update
SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.MySQLDialect
PORT=8080
```

### 1.4 Build & Deploy
- Click **"Create Web Service"**
- Wait for deployment to complete
- Note your Render URL: `https://your-app.onrender.com`

---

## 🎨 Step 2: Deploy Frontend to Vercel

### 2.1 Setup Vercel
1. Go to [Vercel Dashboard](https://vercel.com/agge-sravanthus-projects)
2. Click **"Add New..."** → **"Project"**

### 2.2 Import Repository
1. **Import GitHub:** `Sravanthi-Agge/lost_found_portal1`
2. **Configure:**
   - **Framework:** `React`
   - **Root Directory:** `frontend`
   - **Build Command:** `npm run build`
   - **Output Directory:** `build`

### 2.3 Environment Variables
Add environment variable:
```
REACT_APP_API_URL=https://your-render-app.onrender.com/api
```

### 2.4 Deploy
- Click **"Deploy"**
- Wait for deployment to complete
- Note your Vercel URL: `https://your-app.vercel.app`

---

## 🔗 Step 3: Connect Frontend to Backend

### 3.1 Update Vercel Configuration
1. Go to your Vercel project settings
2. Update **Environment Variables** with your Render URL
3. **Redeploy** Vercel project

### 3.2 Test Connection
- Visit your Vercel URL
- Test user registration/login
- Test item addition
- Check browser console for API calls

---

## 🛠️ Step 4: Troubleshooting

### Common Issues:
1. **CORS Errors:** Backend not allowing frontend origin
2. **Database Connection:** Wrong database credentials
3. **API 404:** Wrong backend URL in frontend
4. **Build Failures:** Missing dependencies or configuration

### Solutions:
1. **CORS:** Check backend CORS configuration
2. **Database:** Verify environment variables
3. **API URL:** Update REACT_APP_API_URL
4. **Build:** Check deployment logs

---

## 📱 Final URLs Structure
- **Frontend:** `https://your-app.vercel.app`
- **Backend:** `https://your-backend.onrender.com`
- **API Endpoints:** `https://your-backend.onrender.com/api/*`

---

## 🎉 Success Criteria
✅ Frontend loads without errors
✅ User registration/login works
✅ Item addition works
✅ Data persists in database
✅ No CORS errors
✅ Responsive design works

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
