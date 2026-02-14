# Smart Rent Mobile 📱

Flutter mobile application for the **Smart Property & Rental Management Platform** — a scalable rental ecosystem designed to simplify property discovery and reduce scams in Ghana and emerging markets.

This app enables renters to discover verified listings, landlords to manage properties, agents to oversee multiple properties, and admins to moderate and verify listings.

---

## 🚀 Overview

Smart Rent Mobile is built using **Flutter** and follows **Clean Architecture + Feature-Based Modular Structure** for scalability, maintainability, and enterprise-level organization.

It connects to:

- `smart-rent-api` (Spring Boot REST API)
- `smart-rent-web` (Angular Web App)

---

## 🎯 Problem It Solves

Finding trusted rental properties in Ghana is difficult due to:

- Scams
- Lack of centralized listings
- Poor property visibility
- No availability tracking

Smart Rent provides:

- Verified property listings
- Booking system for property visits
- Agent property management
- Admin moderation dashboard

---

## ✨ Core Features

### 🔐 Multi-Role Authentication

- Landlord
- Renter
- Agent
- Admin

JWT-based authentication with secure storage.

---

### 🏠 Property Discovery

- Image gallery
- Advanced filtering
- Geo-location support
- Availability calendar

---

### 📅 Booking System

- Schedule property visits
- Track booking status
- Prevent double-booking

---

### 💬 Messaging

- Direct communication between renters and landlords/agents

---

### 🛡 Admin Verification

- Approve or reject property listings
- Reduce fraudulent listings

---

### 📊 Analytics

- Property views
- Booking rates
- Conversion metrics

---

## 🧠 Architecture

This project follows **Clean Architecture** principles:

lib/

├── core/

├── config/

├── features/

│ ├── auth/

│ ├── property/

│ ├── booking/

│ ├── messaging/

│ ├── admin/

│ └── analytics/

└── main.dart

Each feature contains:

- `data` (API & models)
- `domain` (entities & use cases)
- `presentation` (UI & state management)

This ensures:

- Scalability
- Testability
- Separation of concerns
- Enterprise readability

---

## 🛠 Tech Stack

- **Flutter**
- **Riverpod / Bloc** (state management)
- **Dio** (API client)
- **GoRouter** (navigation)
- **GetIt** (dependency injection)
- **Flutter Secure Storage** (JWT storage)

Backend:

- Spring Boot
- PostgreSQL (with PostGIS for geo support)
- Redis (planned caching layer)

---

## 📦 Installation

### 1️⃣ Clone the repository

git clone [https://github.com/your-username/smart-rent-mobile.git]()

cd smart-rent-mobile

### 2️⃣ Install dependencies

### 3️⃣ Run the app

---

## 🌍 Environment Configuration

Create an `.env` file in the root:

---

## 🧪 Testing

---

## 🚀 Future Enhancements

- Push notifications
- In-app payments
- Google Maps integration
- Offline caching
- Advanced analytics dashboard
- Dark mode

---

## 📱 Platform Support

- Android
- iOS (planned)
- Web (future consideration)

---

## 👨🏾‍💻 Author

**Emmanuel Ephrim**
Fullstack Developer | Mobile Developer | Cloud | Web Developer

Built as part of a scalable property-tech ecosystem focused on solving real housing discovery challenges in Africa.

---

## 📄 License

MIT License
