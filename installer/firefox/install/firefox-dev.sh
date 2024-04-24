#!/usr/bin/bash

# Instalador firefox developer

urlt=$(curl -s "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" | cut -d '"' -f 2)
filet=$(echo $urlt | cut -d '/' -f 10)

echo "[*] Baixando versão estável atualizada..."
wget $urlt -P /tmp

echo "[*] Descompactando pasta..."
tar -xjf /tmp/$filet -C /tmp/

echo "[*] Movendo arquivos..."
mv /tmp/firefox /tmp/firefox-dev
sudo cp -r /tmp/firefox-dev /opt/

echo "[*] Criando atalhos..."
ln -s /opt/firefox-dev/firefox /usr/local/bin/firefox-dev

curl -o /usr/local/share/applications/firefox-dev.desktop https://raw.githubusercontent.com/xdrxxnx/.dotfiles/main/firefox/firefox-dev.desktop

echo "[*] Limpando arquivos..."
/usr/bin/rm -rf /tmp/firefox*

echo "[+] Firefox developer instalado!"
