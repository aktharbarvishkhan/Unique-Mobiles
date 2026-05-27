# Unique Mobiles - Full-Stack Tech Marketplace

Unique Mobiles is a state-of-the-art, full-stack ecommerce marketplace website tailored for purchasing and listing mobile phones, laptops, and tech accessories. Featuring a sleek, responsive, cyberpunk-inspired dark design with animated glowing neon components, glassmorphism layers, and dynamic page transitions.

---

## 🚀 Key Features

1. **Animated Landing Page:** Shifting particle and gradient background canvas, floating neon buttons, unified signup and login flows with complete form checking, and a dedicated admin access portal.
2. **Dashboard Center:** Staggered card grid showcasing four main sections: Buy, Sell, Accessories, and Offers.
3. **Verified Buy Section:** Grid layouts representing approved smartphones and laptops with specs, conditions, pricing, and a "Buy Now" checkout that triggers a full-screen purchase success screen with dynamic raining confetti.
4. **Interactive Listing Form:** Form options to choose Category, upload device photos (automatically converted to Base64 data strings for secure storage), specify RAM/storage details, and conditions.
5. **Add-on Accessories & Offers:** Separate views filtering adapters, noise-canceling headphones, smartwatches, and active copyable discount coupons.
6. **Admin Board Moderation:** Controlled router view allowing administrators to inspect, approve, or reject user-submitted product listings before they appear in public sections.
7. **Robust DB Connection with Auto-Fallback:** Connects to MongoDB out-of-the-box. If MongoDB is down or not installed, the server automatically boots up with a self-contained local JSON-file mock database wrapper (`backend/data/`) to enable fully functional user and product APIs instantly!
8. **Security Framework:** Guards private routing layers using JSON Web Token (JWT) session headers. Hashed credentials via bcryptjs.

---

## 🛠 Tech Stack

- **Frontend:** React.js, Vite, Tailwind CSS, Framer Motion (micro-animations), Lucide React (icons), HTML5 Canvas Confetti.
- **Backend:** Node.js, Express.js, JSON Web Tokens (JWT), bcryptjs.
- **Database:** MongoDB (using Mongoose ODM) with fallback to JSON files.

---

## 📂 Project Structure

```text
unique mobiles/
├── .node/                   # Portable local Node.js environment (automatically set up)
├── backend/
│   ├── config/
│   │   └── mongoose.js      # Auto-fallback DB wrapper connecting MongoDB or JSON
│   ├── data/                # Fallback database JSON files (users, products)
│   ├── middleware/
│   │   └── authMiddleware.js # JWT verification for client and admin endpoints
│   ├── models/
│   │   ├── User.js          # User database schema
│   │   └── Product.js       # Product listing database schema
│   ├── routes/
│   │   ├── auth.js          # Endpoints for Register / Login
│   │   ├── products.js      # Endpoints for User Buy / Sell actions
│   │   └── admin.js         # Endpoints for Admin approvals
│   ├── .env                 # Database and JWT secret settings
│   ├── package.json         # Server dependency lists
│   └── server.js            # Entry server initialization & data seeder
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── AnimatedBackground.jsx # Canvas interactive background particle field
│   │   │   ├── Navbar.jsx             # Responsive drawer-style header
│   │   │   └── PurchaseSuccess.jsx    # Checkout card with custom falling confetti canvas
│   │   ├── pages/
│   │   │   ├── LandingPage.jsx        # Portal index login and signup
│   │   │   ├── AdminLogin.jsx         # Secure Admin authentication
│   │   │   ├── Dashboard.jsx          # User dashboard grid
│   │   │   ├── BuySection.jsx         # List of approved mobiles/laptops
│   │   │   ├── SellSection.jsx        # User device upload form (base64 converter)
│   │   │   ├── AccessoriesSection.jsx # List of hardware chargers/headphones
│   │   │   ├── OffersSection.jsx      # Active coupons list with code clippers
│   │   │   └── AdminDashboard.jsx     # Moderation board to approve/reject lists
│   │   ├── App.jsx          # Route trees and session guards
│   │   ├── index.css        # Tailwind and customized neon stylesheets
│   │   └── main.jsx         # Root client bootstrapping
│   ├── index.html           # Main template page and modern typography imports
│   ├── postcss.config.js    # Preprocessing CSS styles
│   ├── tailwind.config.js   # Tailwind custom neon styling variables
│   ├── vite.config.js       # Build port and backend routing proxy settings
│   └── package.json         # Client dependency lists
├── start-all.bat            # Clickable master startup batch script
├── start-backend.bat        # Individual server batch startup script
└── start-frontend.bat       # Individual client dev server batch startup script
```

---

## 🏃 Running the Application

Double-click the **`start-all.bat`** file in the root directory. This script will automatically check for the portable Node setup and launch two terminal screens simultaneously:
- **Backend Port:** `http://localhost:5000`
- **Frontend Port:** `http://localhost:3000`

Alternatively, you can run them manually in separate terminal shells:

### 1. Launch the Backend Server
```bash
cd backend
npm install   # If not already installed
npm run dev
```

### 2. Launch the Frontend Dev Server
```bash
cd frontend
npm install   # If not already installed
npm run dev
```

---

## 🔐 Credentials for Testing

### 1. User Access
- You can register a new account on the landing page using your mobile number and any password.
- Alternatively, you can use the pre-seeded seller credentials (e.g. Mobile: `9999999999` / Password: any password you register, or create a brand new account).

### 2. Admin Portal
- **Admin Login Route:** Click the **"ADMIN LOGGED PORTAL"** button on the landing page top-right, or go directly to `/admin`.
- **Username:** `admin`
- **Password:** `adminpassword`
*(Note: These can be customized in the `backend/.env` file).*
