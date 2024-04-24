echo "(1) Firefox"
echo "(2) Firefox Developer"

read -p "[!] Trabalhar com qual versão? [1/2]: " a

if [ "$a" = "1" ]; then
    echo -e "\n"
    echo "(1) Instalar"
    echo "(2) Atualizar"

    read -p "[!] Opção [1/2]: " b

    if [ "$b" = "1" ]; then
        echo -e "\n"
        bash .dotfiles/firefox/install/firefox.sh
    elif [ "$b" = "2" ]; then
        echo -e "\n"
        bash .dotfiles/firefox/update/firefox.sh
    fi

elif [ "$a" = "2" ]; then
    echo -e "\n"
    echo "(1) Instalar"
    echo "(2) Atualizar"

    read -p "[!] Opção [1/2]: " c

    if [ "$c" = "1" ]; then
        echo -e "\n"
        bash .dotfiles/firefox/install/firefox-dev.sh
    elif [ "$c" = "2" ]; then
        echo -e "\n"
        bash .dotfiles/firefox/update/firefox-dev.sh
    fi

fi


