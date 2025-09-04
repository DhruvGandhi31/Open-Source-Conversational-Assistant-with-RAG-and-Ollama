# Open Source Conversational Assistant with RAG and Ollama

An open-source conversational AI assistant built with **Next.js**, **TypeScript**, and **Ollama**. It leverages **Retrieval-Augmented Generation (RAG)** to provide context-aware responses, making it suitable for knowledge-based assistants, documentation search, and more.

---

## 🚀 Features
- **Conversational AI** powered by [Ollama](https://ollama.ai/).  
- **RAG (Retrieval Augmented Generation)** for grounding responses in external knowledge.  
- **Next.js (App Router)** frontend with Tailwind styling.  
- **Postgres integration** for storing and retrieving embeddings.  
- **Modular components** for chat UI and base elements.  
- **API routes** for handling chat requests and embedding generation.  

---

## 🛠️ Prerequisites

Before you start, ensure you have the following tools and environment set up:

- **Git** installed  
- An IDE like **VS Code** (or your preferred editor)  
- **Node.js** ≥ 22.7.0 (required for TypeScript support)  
- **PostgreSQL** with the **pgvector** extension for storing embeddings  
- **Ollama** installed and configured for local LLM execution  
- Download and run a **llama3.2:** model variant (e.g., `1.5b`, `7b`, etc.) via Ollama:  
  ```bash
  ollama run llama3.2::7b
   ```

## 📂 Project Structure
```
.
├── app/                  # Next.js App Router pages & API routes
│   ├── api/chat/         # Chat API endpoint
│   ├── layout.tsx        # Root layout
│   └── page.tsx          # Main UI
├── components/           # Reusable UI components
│   ├── base/             # Buttons, Inputs, Forms
│   └── chat/             # Chat client
├── lib/                  # Database and utility functions
├── scripts/              # Embedding generation scripts
├── package.json          # Dependencies
├── tsconfig.json         # TypeScript config
└── next.config.ts        # Next.js config
```

---

## 🛠️ Installation

### Prerequisites
- **Node.js** ≥ 18
- **PostgreSQL**
- **Ollama** installed locally ([Guide](https://ollama.ai/download))

### Setup
```bash
# Clone repository
git clone https://github.com/DhruvGandhi31/Open-Source-Conversational-Assistant-with-RAG-and-Ollama
cd conversational-assistant-rag-ollama

# Install dependencies
npm install

# Configure environment variables
cp .env.example .env.local
```

Update `.env.local` with your **Postgres credentials** and **Ollama settings**.

---

## ▶️ Running the Project

```bash
# Start development server
npm run dev
```

The app will be available at **http://localhost:3000**.

---

## ⚡ Usage
1. Start the **Postgres database** and ensure embeddings are generated:
   ```bash
   npm run generate:embeddings
   ```
2. Start the **Ollama model** (e.g., `llama2`, `mistral`, etc.):
   ```bash
   ollama run llama2
   ```
3. Chat with your assistant in the web UI.

---

## 📖 Scripts
- `npm run dev` – Start development server  
- `npm run build` – Build project  
- `npm run start` – Start production server  
- `npm run lint` – Run linter  
- `npm run generate:embeddings` – Generate embeddings for documents  

---

## 📜 License
This project is licensed under the terms of the [MIT License](LICENSE.md).  

---

## 🤝 Contributing
Contributions are welcome!  
- Fork the repo  
- Create a new branch (`feature/your-feature`)  
- Submit a PR  
