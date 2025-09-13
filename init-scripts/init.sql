CREATE DATABASE rag_db;
CREATE USER raguser WITH PASSWORD '1234';
GRANT ALL PRIVILEGES ON DATABASE rag_db TO raguser;

-- Enable pgvector in rag_db
\c rag_db;
CREATE EXTENSION IF NOT EXISTS vector;