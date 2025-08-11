Here’s a clean, professional **README.md** for your *Intro* backend with all the details you provided:

---

# Intro – AI Powered Recruitment Platform (Backend)

Intro is an AI-powered recruitment platform that streamlines hiring by leveraging artificial intelligence for candidate matching, interview scheduling, and more.

This repository contains the **backend** service for the Intro platform, powered by **NestJS**, **PostgreSQL**, and **Docker**.

---

## 🚀 Getting Started

### 1️⃣ Start the Backend (Development Mode)

```bash
cd backend
npm run start:dev
```

This will start the NestJS backend in watch mode.

---

### 2️⃣ Run with Docker

Make sure Docker is installed and running.

#### Build and Start Containers
In the root folder: 
```bash
docker compose up --build
```

---

### 3️⃣ Check if Database is Created

After the containers are up:

```bash
docker exec -it my_postgres_db psql -U outros -d intro-db
```

Inside the `psql` shell, run:

```sql
SELECT * FROM table;
```

*(Replace `table` with your actual table name)*

---

### 4️⃣ Stop Containers

```bash
docker compose down -v
```

---

### 5️⃣ Remove All Unused Containers, Networks, and Images

```bash
docker system prune -f
```

---

## 🛠 Tech Stack

* **Backend Framework**: [NestJS](https://nestjs.com/)
* **Database**: [PostgreSQL](https://www.postgresql.org/)
* **ORM**: [Prisma](https://www.prisma.io/)
* **Containerization**: [Docker](https://www.docker.com/)

---

## 📂 Project Structure

```
intro-backend/
│
├── prisma/             # Prisma schema and migrations
├── src/                # Source code
│   ├── users/          # Feature modules
│   │   ├── entities/   # Model
│   │   ├── dto/        #Validations
│   │   ├── user.controller.ts #Define routes 
│   │   ├── user.module.ts     #Export everything
│   │   ├── user.service.ts  #Perform db operation
│   ├── common/         # Shared utilities
│   └── main.ts         # Entry point
├── .env                # Environment variables
├── docker-compose.yml  # Docker configuration
└── package.json
```
---