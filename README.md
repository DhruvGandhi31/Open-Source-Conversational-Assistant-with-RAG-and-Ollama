# Open Source Conversational Assistant with RAG and Ollama

An open-source conversational AI assistant built with **Next.js**, **TypeScript**, and **Ollama**. It leverages **Retrieval-Augmented Generation (RAG)** using **llama3.2:3b** to provide context-aware and grounded responses—ideal for documentation search, knowledge-based assistants, and more.

## 🚀 Features

- Conversational AI powered by **Ollama** and **llama3.2:3b**.
- RAG pipeline combining document embedding retrieval using **PostgreSQL + pgvector**.
- Frontend built with **Next.js 15**, **React 19**, and **Tailwind CSS**.
- Type-safe development with **TypeScript**.
- Fully modular components for UI, API routes, and utilities.
- Example documents loader, chunking, and embedding scripts for RAG development.

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
````

## 📂 Project Structure

```
.
├── app/
│   ├── api/
│   └── page.tsx
├── components/
│   ├── base/
│   └── chat/
├── lib/
├── scripts/
│   └── embeddings (RAG embedding generator)
├── docs/             # Place markdown or MDX docs here for RAG
├── package.json
├── tsconfig.json
├── next.config.ts
└── ...
```

## ⚙️ Installation & Setup

1. **Clone the repository and install dependencies:**

   ```bash
   git clone https://github.com/yourusername/conversational-assistant-rag-ollama.git
   cd conversational-assistant-rag-ollama
   npm install
   ```

2. **Set up PostgreSQL:**

   * Install PostgreSQL and the `pgvector` extension.
   * Create a database (e.g., `rag_db`) and enable the extension:

     ```sql
     CREATE DATABASE rag_db;
     \c rag_db
     CREATE EXTENSION IF NOT EXISTS vector;
     ```

3. **Configure environment variables:**

   ```bash
   cp .env.example .env.local
   ```

   Update `.env.local` with your PostgreSQL connection details and Ollama settings.

4. **Download and run a llama3.2: model via Ollama:**

   ```bash
   ollama run llama3.2::7b
   ```

   (You can choose a model appropriate for your hardware)

## 📖 RAG Embeddings & Database Setup

1. Place your markdown or MDX documentation into the `docs/` folder.

2. Run the embeddings script to chunk documents, produce embeddings, and store them in your database:

   ```bash
   npm run embeddings
   ```

   This script will:

   * Load files from `docs/`
   * Split text into chunks
   * Generate embeddings via Ollama or another model
   * Store results in PostgreSQL (via `pgvector`)

3. Optionally, use **pgAdmin** or `psql` to verify that vectors are populated:

   ```sql
   SELECT * FROM vectors;
   ```

## ▶️ Run the Development Server

```bash
npm run dev
```

Navigate to `http://localhost:3000` to test the chat interface.

## ⚡ Usage Workflow

1. Ensure PostgreSQL is running and embeddings have been generated.
2. Confirm that Ollama is running with the llama3.2: model.
3. Launch the dev server and use the chat UI to ask questions—RAG logic will handle document retrieval and response generation.

## 📜 Key Scripts

| Command              | Description                          |
| -- |  |
| `npm run dev`        | Start development server             |
| `npm run build`      | Build for production                 |
| `npm run start`      | Run production server                |
| `npm run lint`       | Run code linter                      |
| `npm run embeddings` | Generate document embeddings for RAG |

## 📄 License

Licensed under the [MIT License](LICENSE.md).

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch (`feature/my-feature`)
3. Commit your changes and open a pull request
