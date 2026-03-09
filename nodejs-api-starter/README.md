# Node.js API Starter 🚀

![Node.js](https://img.shields.io/badge/Node.js-18-green)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue)
![Express](https://img.shields.io/badge/Express-4.19-gray)

A production-ready Node.js API starter with Express, TypeScript, and best practices.

## ✨ Features

- ⚡️ **Express.js** with TypeScript
- 📝 **Zod** for request validation
- 📊 **Winston** for logging
- 🛡️ **Helmet** for security
- 🔧 **ESLint + Prettier** configured
- 🧪 **Jest** for testing
- 📝 **API Documentation** ready

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/your-username/nodejs-api-starter.git

# Install dependencies
npm install

# Start development server
npm run dev
```

## 📁 Project Structure

```
├── src/
│   ├── middleware/    # Express middleware
│   ├── routes/       # API routes
│   ├── utils/        # Utility functions
│   └── index.ts      # App entry point
├── dist/             # Compiled output
└── configs/          # Configuration files
```

## 📚 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Root endpoint |
| GET | `/api/health` | Health check |
| GET | `/api/users` | List all users |
| GET | `/api/users/:id` | Get user by ID |
| POST | `/api/users` | Create new user |

## 🛠️ Available Scripts

| Command | Description |
|---------|-------------|
| `npm run dev` | Start development server |
| `npm run build` | Build for production |
| `npm run start` | Start production server |
| `npm run lint` | Run ESLint |
| `npm run test` | Run tests |

## 🔒 Environment Variables

Create a `.env` file:

```env
PORT=3000
NODE_ENV=development
LOG_LEVEL=info
```

## 🎯 Pro Version

Get the **Pro Version** with additional features:

- 🗄️ PostgreSQL + Prisma ORM
- 🔐 JWT Authentication
- 📧 Email Service Integration
- 📈 Rate Limiting
- 📝 Swagger Documentation
- 🧪 80%+ Test Coverage

[Buy Pro Version →](your-payment-link)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

MIT License - feel free to use this template for your projects.

---

<div align="center">
  <p>Made with ❤️</p>
</div>
