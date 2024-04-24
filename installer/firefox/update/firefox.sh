#!/usr/bin/bash

# Atualizador firefox

echo "[*] Parando firefox..."
kill -SIGKILL $(pidof firefox) 2>/dev/null

urlt=$(curl -s "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=pt-BR" | cut -d '"' -f 2)
filet=$(echo $urlt | cut -d '/' -f 10)

echo "[*] Baixando versão estável atualizada..."
wget $urlt -P /tmp

echo "[*] Descompactando pasta..."
tar -xjf /tmp/$filet -C /tmp/

echo "[*] Atualizando arquivos..."
sudo cp -r /tmp/firefox /opt/

echo "[*] Limpando arquivos..."
/usr/bin/rm -rf /tmp/firefox*

echo "[+] Firefox atualizado!"
