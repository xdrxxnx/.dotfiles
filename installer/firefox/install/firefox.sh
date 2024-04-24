#!/usr/bin/bash

# Instalador firefox stable

urlt=$(curl -s "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=pt-BR" | cut -d '"' -f 2)
filet=$(echo $urlt | cut -d '/' -f 10)

echo "[*] Baixando versão estável atualizada..."
wget $urlt -P /tmp

echo "[*] Descompactando pasta..."
tar -xjf /tmp/$filet -C /tmp/

echo "[*] Movendo arquivos..."
sudo cp -r /tmp/firefox /opt/

echo "[*] Criando atalhos..."
ln -s /opt/firefox/firefox /usr/local/bin/firefox

curl -o /usr/local/share/applications/firefox.desktop https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop

echo "[*] Limpando arquivos..."
/usr/bin/rm -rf /tmp/firefox*

echo "[+] Firefox instalado!"
