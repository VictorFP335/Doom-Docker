# Doom-Docker

# DOOM no Docker rodando no Navegador 🚀🎮

Este projeto executa o clássico **DOOM** dentro de um **container Docker**, acessível diretamente pelo **navegador web**.

> ✅ Sem som para reduzir o tamanho da imagem e otimizar o desempenho.  
> ✅ Ideal para demonstração de uso de containers com aplicações legadas.  
> ✅ Funciona direto no browser, sem instalar nada localmente além do Docker.

---

## 🧠 Objetivo do Projeto

Explorar:
- Containerização de aplicações antigas
- Uso do Docker para empacotamento e distribuição
- Execução de aplicações gráficas via web
- Leveza e portabilidade

---

## 📦 Requisitos

- Docker instalado
- Navegador Web (Chrome, Firefox, Edge, etc.)

---

## ▶️ Como executar

```bash
docker build -t doom-docker .
docker run -p 8080:80 doom-docker
Depois, acesse no navegador:

arduino
Copiar código
http://localhost:8080
⚙️ Estrutura do Projeto (exemplo)
scss
Copiar código
├── Dockerfile
├── index.html (ou aplicação web wrapper)
└── ...
❓ Por que sem som?
Remover o áudio:

Reduz o tamanho da imagem Docker

Evita dependências extras

Melhora o tempo de carregamento no navegador

📚 Tecnologias Utilizadas
Docker

WebAssembly / Emulador DOOM (se aplicável)

Servidor Web (Nginx ou similar)

✅ Possíveis Melhorias Futuras
Adicionar suporte a áudio via streaming

Criar interface customizada

Publicar imagem no Docker Hub

Deploy online (Vercel, Render, etc.)

🤝 Contribuições
Fique à vontade para abrir issues ou pull requests!

📄 Licença
Este projeto é apenas para fins educacionais e demonstrativos.
DOOM é propriedade da id Software / Bethesda.

🚀 Autor
VictorFP335

yaml
Copiar código

✅ Preparar um `Dockerfile` exemplo pro README também

Quer que eu já coloque a imagem que geramos no início do README?
