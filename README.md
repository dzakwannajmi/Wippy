# Wippy Arena · Emerald Edition

<img width="1920" height="1080" alt="Wippy Arena Screenshot" src="https://github.com/user-attachments/assets/dcde2613-dc4d-49e0-b690-50a757d14297" />

<div align="center">
  <a href="https://wippy-rosy.vercel.app">
    <img src="https://img.shields.io/badge/LIVE_DEMO-wippy--rosy.vercel.app-50C878?style=for-the-badge&logoColor=white" alt="Live Demo" />
  </a>
  <a href="https://wippy-backend-production.up.railway.app">
    <img src="https://img.shields.io/badge/BACKEND-Railway-50C878?style=for-the-badge" alt="Backend" />
  </a>
  <img src="https://img.shields.io/badge/LICENSE-MIT-white?style=for-the-badge" alt="License" />
</div>

**A High-Fidelity Real-Time Competitive Programming Quiz Platform** with gamification elements for educational purposes.

---

## Overview

Wippy Arena (formerly Arena Node) is a modern real-time multiplayer programming quiz platform designed to increase student engagement in learning PHP, JavaScript, and React through competitive duels. 

The application implements true real-time synchronization using WebSocket (Socket.io), server-side validation, combo & speed scoring system, animated podium, and detailed performance statistics.

---

## Features

### ⚔️ Real-Time Quiz Battle
- Multiplayer rooms with real-time synchronization via **Socket.io**
- Server-side timer and answer validation (anti-cheat)
- Live scoreboard updates during the game
- Room system with unique ID and optional password

### 🔥 Combo & Speed Scoring
- **Speed Bonus**: +50 pts (under 3s), +25 pts (under 6s)
- **Combo Multiplier**: Up to ×2.0 at 5+ correct streak
- Fire animation trigger on high combo milestones
- Score breakdown popup on every correct answer

### 🏆 Podium & Leaderboard
- Dramatic animated podium (3rd → 2nd → 1st place)
- Global Hall of Fame backed by MySQL
- Accuracy rate and average response time tracking

### 🎮 Game Experience
- Category selection: PHP, JavaScript, React
- Animated tutorial for new players
- 3-2-1 countdown before starting
- 10 seconds time limit per question

### 🎨 UI/UX
- Cyber-Emerald dark theme with dynamic animations
- Fully responsive design (Desktop & Mobile)
- Smooth animations using Framer Motion and GSAP

---

## Tech Stack

| Layer         | Technology                          |
|---------------|-------------------------------------|
| Frontend      | React 19 + Vite 7 + Tailwind CSS v4 |
| Animations    | Framer Motion + GSAP                |
| Real-Time     | Socket.io 4                         |
| Backend       | Node.js + Express 5                 |
| Database      | MySQL (Aiven Cloud)                 |
| Deployment    | Vercel (Frontend) + Railway (Backend) |

---

## Team Members (Kelompok 3)

| Name                    | NPM          | Role                              |
|-------------------------|--------------|-----------------------------------|
| Muhammad Dzakwan Najmi  | 2410010454   | Backend Lead + Socket.io + Database |
| Sahrawardi              | 2410010497   | Frontend + UI/UX                  |
| Ahmad Zainal Febryan    | 2410010414   | Game Logic + Scoring System       |
| Aisha Nazela            | 2410010357   | Statistics & Documentation        |

**Course**: Cloud Computing  
**Lecturer**: Fathul Hafidh M.Kom

---

## Important Links

- **Live Demo**: [https://wippy-rosy.vercel.app](https://wippy-rosy.vercel.app)
- **Backend API**: [https://wippy-backend-production.up.railway.app](https://wippy-backend-production.up.railway.app)
- **GitHub Repository**: [https://github.com/dzakwannajmi/wippy](https://github.com/dzakwannajmi/wippy)
- **Proposal PDF**: [Proposal.pdf](./docs/proposal.pdf)
- **Final Report PDF**: [Laporan_Akhir.pdf](./docs/Laporan_Akhir_Wippy_Arena.docx)
- **Presentation Slides**: [Slide.pdf](./docs/slide.pptx)
- **Video Demo**: [YouTube Video](https://youtu.be/J1kgh1RZRwk) ← Ganti dengan link video kamu

---

## Local Development

```bash
# 1. Clone repository
git clone https://github.com/dzakwannajmi/wippy.git
cd wippy

# 2. Install dependencies
cd frontend && npm install
cd ../backend && npm install

# 3. Run the application
# Terminal 1
cd frontend && npm run dev

# Terminal 2
cd backend && node server.js
```

---

## Scoring Formula

```js
timeLeft = 10 - secondsUsed
speedBonus = timeLeft >= 7 ? 50 : timeLeft >= 4 ? 25 : 0
baseScore = 100 + speedBonus
multiplier = combo >= 5 ? 2.0 : combo >= 3 ? 1.5 : combo >= 2 ? 1.2 : 1.0
finalScore = Math.round(baseScore * multiplier)
```

---

## Database Schema

Available at [`docs/database/schema.sql`](./docs/database/schema.sql)

---

## License

Distributed under the **MIT License**. See [`LICENSE`](./LICENSE) for details.

---