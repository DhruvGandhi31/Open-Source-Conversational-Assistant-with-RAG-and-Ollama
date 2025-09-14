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
  ollama pull llama3.2:latest
   ```
- Download **nomic-embed-text:latest** to generate embeddings.
  ```bash
  ollama pull nomic-embed-text:latest
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
pnpm install

npx create-next-app@canary

```

I suggest you answer the few questions like this (or customize the answers to your liking):

```
Would you like to use TypeScript? **Yes**
Would you like to use ESLint? **Yes**
Would you like to use Tailwind CSS? **No**
Would you like your code inside a `src/` directory? **No**
Would you like to use App Router? (recommended) **Yes**
Would you like to use Turbopack for `next dev`? **Yes**
Would you like to customize the import alias (`@/*` by default)? **Yes**
What import alias would you like configured? **@/\***
```

Update `.env` with your **Postgres credentials** and **Ollama settings**.

---

## ▶️ Running the Project
Create env file and add POSTGRES_URL and OLLAMA_HOST

```bash
POSTGRES_URL="postgresql://user:password@localhost:5432/db_name"
OLLAMA_HOST="OLLAMA_HOST="http://127.0.0.1:11434""
```

Note: If you already have Postgres up and running on local you also need pgvector extension. To avoid complexity and platform dependency it is recommended to use docker container of ankane/pgvector. Run the docker-compose file.

```bash
ollama list
```

```bash
docker-compose up -d
```

```bash
docker run -d --name pgvector -e POSTGRES_USER=user_name -e POSTGRES_PASSWORD=pswd -e POSTGRES_DB=db_name -p 5433:5432 ankane/pgvector
```

```bash
pnpm run embeddings 
```

Note: please ensure ollama.exe and postgres container on docker running

```bash
pnpm run dev
```

The Next.js app will be available at **http://localhost:3000**.

---

## 📖 Scripts
- `pnpm run dev` - Start development server  
- `docker-compose up -d ` - Docker compose 
- `ollama list` - list available ollama models
- `ollama pull model_name` - pull ollama model
- `ollama serve` - serve api endpoint(Not nessecary if ollama is already running)

You may want to test whether the ollama api endpoint is working fine.
Postman:

Method: POST
link: http://localhost:11434/api/generate or http://127.0.0.1:11434/api/generate
Add Headers: Key: Content-Type | Value: application/json 
Body raw(json):
{
  "model": "llama3.2",
  "prompt": "Why software developers prefer dark theme?",
  "stream": false
}

---

## 📜 License
This project is licensed under the terms of the [MIT License](LICENSE.md).  

---

## 🤝 Contributing
Contributions are welcome!  
- Fork the repo  
- Create a new branch (`feature/your-feature`)  
- Submit a PR  
