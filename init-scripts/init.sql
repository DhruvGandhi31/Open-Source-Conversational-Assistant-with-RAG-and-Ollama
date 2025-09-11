-- Enable pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Example: create a table to store embeddings for RAG
CREATE TABLE IF NOT EXISTS documents (
    id SERIAL PRIMARY KEY,
    content TEXT,
    embedding VECTOR(1536)  -- Adjust dimension to your model (e.g., OpenAI = 1536, BGE = 768, etc.)
);

-- Optional: create an index for similarity search
CREATE INDEX IF NOT EXISTS idx_documents_embedding ON documents USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
