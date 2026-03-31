# 🚀 Deployment Guide

## Frontend Deployment (Vercel)

### Option 1: Vercel CLI
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy frontend
cd frontend
vercel --prod
```

### Option 2: Vercel Dashboard
1. Go to [vercel.com](https://vercel.com)
2. Import your GitHub repository
3. Select `frontend` folder as root directory
4. Set build command: `npm run build`
5. Set output directory: `build`

## Backend Deployment (Railway)

### Option 1: Railway CLI
```bash
# Install Railway CLI
npm install -g @railway/cli

# Login to Railway
railway login

# Deploy backend
cd backend
railway up
```

### Option 2: Railway Dashboard
1. Go to [railway.app](https://railway.app)
2. Click "New Project"
3. Deploy from GitHub
4. Select your repository
5. Set environment variables:
   - `SPRING_DATASOURCE_URL`: Your MySQL connection URL
   - `SPRING_DATASOURCE_USERNAME`: Your MySQL username
   - `SPRING_DATASOURCE_PASSWORD`: Your MySQL password

## Environment Variables

### Frontend (Vercel)
- `REACT_APP_API_URL`: Your deployed backend URL

### Backend (Railway)
- `SPRING_DATASOURCE_URL`: MySQL connection URL
- `SPRING_DATASOURCE_USERNAME`: MySQL username
- `SPRING_DATASOURCE_PASSWORD`: MySQL password
- `SPRING_JPA_HIBERNATE_DDL_AUTO`: update
- `SPRING_JPA_DATABASE_PLATFORM`: org.hibernate.dialect.MySQLDialect

## Post-Deployment Steps

1. Update Vercel environment variables with your Railway backend URL
2. Test the application
3. Update CORS configuration if needed
4. Monitor logs for any issues
