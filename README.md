# 🚀 auto-deploy-node

Script simples e direto para automação de deploy de aplicações Node.js usando **PM2**.

Ideal para projetos pessoais, freelancers ou quem está aprendendo DevOps e quer algo prático.

---

## 📦 O que ele faz

- Clona o repositório da aplicação
- Instala as dependências com `npm install`
- (Opcional) Roda as migrations
- Faz deploy usando o `PM2` com `ecosystem.config.js`

---

## ⚙️ Pré-requisitos

- Node.js instalado
- PM2 instalado (`npm install -g pm2`)
- SSH configurado para acesso ao repositório Git


auto-deploy-node/
├── app/
│   └── index.js
├── deploy.sh
├── ecosystem.config.js
├── .gitignore
└── README.md

🚀 Iniciando deploy do meu-app...
📦 Atualizando código no diretório...
📦 Instalando dependências...
🔄 Reiniciando aplicação com PM2...
✅ Deploy finalizado com sucesso!
