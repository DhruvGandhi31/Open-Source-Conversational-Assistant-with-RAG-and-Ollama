import ChatClient from '@/components/chat/Client'

export default function Home() {

    return (
        <section className="chat-container">
            <header className="chat-header">
                <h1>Autonomous Research Agent</h1>
                <p className="tagline">Powered By Meta's Llama 3.2 with RAG</p>
            </header>
            <main>
                <ChatClient />
            </main>
        </section>
    )
}