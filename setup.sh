#!/bin/bash
echo "📁 Creating project structure..."

# # Backend setup
# echo "⚙️  Setting up NestJS backend..."
# npx @nestjs/cli new backend --skip-git
# cd backend

# # Install all backend dependencies
# echo "📦 Installing backend dependencies..."

# # Core NestJS and framework dependencies
# npm install @nestjs/common @nestjs/core @nestjs/platform-express
# npm install @nestjs/config @nestjs/jwt @nestjs/passport @nestjs/throttler
# npm install @nestjs/bull @nestjs/schedule @nestjs/websockets @nestjs/platform-socket.io

# # Database and ORM
# npm install @prisma/client prisma pg
# npm install -D prisma @types/pg

# # Authentication and security
# npm install zod@3.23.8 nestjs-zod

# # Queue and background jobs
# npm install bull bullmq redis ioredis
# npm install -D @types/bull

# # AI and ML
# # npm install openai langchain @langchain/openai @langchain/community
# # npm install pdf-parse mammoth

# # Create backend folder structure
# echo "📂 Creating backend folder structure..."

# mkdir -p src/{auth,users,companies,jobs,applications,interviews,videos,ai,livekit,queues,upload,notifications,calendar,common}
# mkdir -p src/auth/{schemas,guards,strategies}
# mkdir -p src/users/{schemas,entities}
# mkdir -p src/companies/{schemas,entities}
# mkdir -p src/jobs/{schemas,entities}
# mkdir -p src/applications/{schemas,entities}
# mkdir -p src/interviews/{schemas,entities}
# mkdir -p src/videos/{schemas,entities}
# mkdir -p src/ai/{schemas,services}
# mkdir -p src/queues/processors
# mkdir -p src/common/{decorators,filters,guards,interceptors,pipes,schemas}
# mkdir -p src/{prisma,config}
# mkdir -p prisma/{migrations,seeds}
# mkdir -p uploads/{resumes,videos,recordings}

# # Environment files
# touch .env .env.example .env.local .env.production

# # Create some key backend files
# touch src/main.ts src/app.module.ts src/app.controller.ts src/app.service.ts
# touch prisma/schema.prisma prisma/seeds/seed.ts

# cd ..

# Frontend setup with Vite + Shadcn
echo "⚛️  Setting up React frontend with Vite + TypeScript..."
npm create vite@latest frontend -- --template react-ts
cd frontend

echo "📦 Installing frontend dependencies..."

# TailwindCSS
# npm install -D tailwindcss postcss autoprefixer
# npx tailwindcss init -p

# # Shadcn UI and dependencies
# npm install tailwind-variants class-variance-authority clsx lucide-react
# npm install @radix-ui/react-toast @radix-ui/react-dialog @radix-ui/react-tooltip
# npm install shadcn-ui@latest

# Initialize shadcn
# npx shadcn-ui init

# Routing, state management, data fetching
npm install react-router-dom @tanstack/react-query axios zustand

# Forms and validation
npm install react-hook-form @hookform/resolvers zod

# Create Tailwind config base
# cat > tailwind.config.js <<EOL
# /** @type {import('tailwindcss').Config} */
# export default {
#   darkMode: ["class"],
#   content: [
#     "./index.html",
#     "./src/**/*.{js,ts,jsx,tsx}",
#   ],
#   theme: {
#     extend: {},
#   },
#   plugins: [require("tailwindcss-animate")],
# }
# EOL

# Create frontend folder structure
echo "📂 Creating frontend folder structure..."
mkdir -p src/{components,pages,hooks,services,store,utils,types,assets}
mkdir -p src/components/{ui,layout,forms,video,interview}
mkdir -p src/pages/{auth,dashboard,jobs,applications,interviews,profile,admin}
mkdir -p src/hooks/{auth,api,video}
mkdir -p src/services/{api,auth,video,ai}
mkdir -p src/store/{slices,types}
mkdir -p src/utils/{validation,formatting,constants}
mkdir -p src/assets/{images,icons}

touch src/main.tsx src/App.tsx

cd ..

# Root level setup
echo "📋 Creating root level configuration files..."
touch docker-compose.yml docker-compose.prod.yml Dockerfile.backend Dockerfile.frontend deploy.sh backup.sh


echo "✅ Project structure created successfully!"
echo ""
echo "📁 Project structure:"
echo "recruitment-platform/"
echo "├── backend/                 # NestJS backend"
echo "│   ├── src/"
echo "│   │   ├── auth/            # Authentication module"
echo "│   │   ├── users/           # User management"
echo "│   │   ├── companies/       # Company management"
echo "│   │   ├── jobs/            # Job postings"
echo "│   │   ├── applications/    # Job applications"
echo "│   │   ├── interviews/      # Interview management"
echo "│   │   ├── videos/          # Video handling"
echo "│   │   ├── ai/              # AI services"
echo "│   │   ├── livekit/         # Video streaming"
echo "│   │   ├── queues/          # Background jobs"
echo "│   │   └── common/          # Shared utilities"
echo "│   └── prisma/              # Database schema"
echo "├── frontend/                # React frontend"
echo "│   └── src/"
echo "│       ├── components/      # React components"
echo "│       ├── pages/           # Page components"
echo "│       ├── hooks/           # Custom hooks"
echo "│       ├── services/        # API services"
echo "│       └── store/           # State management"
echo "└── docs/                    # Documentation"
echo ""
echo "🎯 Next steps:"
echo "1. cd recruitment-platform"
echo "2. Set up your environment variables in backend/.env"
echo "3. Start coding! 🚀"