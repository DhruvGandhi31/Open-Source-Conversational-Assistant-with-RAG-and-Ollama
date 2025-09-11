import ChatClient from '@/components/chat/Client'

export default function Home() {

    return (
        <section className="chat-container">
            <header className="chat-header">
                <h1>AI chatbot example</h1>
                <p className="tagline">Meta's Llama 3.2 with RAG</p>
            </header>
            <main>
                <ChatClient />
            </main>
        </section>
    )
}