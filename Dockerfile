# Base Ubuntu 22.04
FROM ubuntu:22.04

# Evita prompts de timezone
ENV DEBIAN_FRONTEND=noninteractive

# Instala dependências mínimas necessárias
RUN apt-get update && apt-get install -y \
    retroarch \                  # Emulador retroArch
    retroarch-assets \           # Assets básicos do RetroArch
    x11vnc \                     # Servidor VNC para interface gráfica
    xvfb \                       # X virtual framebuffer
    novnc \                       # Cliente VNC via browser
    websockify \                  # Proxy WebSocket para noVNC
    wget \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Baixa o core do N64 (Mupen64Plus-Next)
RUN retroarch --download-core mupen64plus_next

# Cria diretório dentro do container para armazenar ROMs
RUN mkdir /roms
WORKDIR /roms

# Expõe porta do noVNC
EXPOSE 8080

# Comando para iniciar:
# 1. X virtual para simular display gráfico
# 2. x11vnc para acessar o display via VNC
# 3. websockify + noVNC para acessar pelo navegador
# 4. RetroArch inicia automaticamente com a ROM wii_doom.n64
CMD bash -c "\
    Xvfb :1 -screen 0 1024x768x16 & \
    x11vnc -display :1 -nopw -forever & \
    websockify -D --web=/usr/share/novnc/ 8080 localhost:5900 & \
    retroarch -L /root/.config/retroarch/cores/mupen64plus_next_libretro.so /roms/wii_doom.n64 \
"
