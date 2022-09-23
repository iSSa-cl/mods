if [ -d ~/Mes\ documents/My\ Games/FarmingSimulator2022/mods ]
then
    cd ~/Mes\ documents/My\ Games/FarmingSimulator2022/mods
    RESPONSE=$(git pull)
    echo "$RESPONSE"

    if [ $RESPONSE="fatal: not a git repository (or any of the parent directories): .git" ]
    then
        echo 'not a repo'
        cd ~/Mes\ documents/My\ Games/FarmingSimulator2022/
        git clone https://github.com/iSSa-cl/mods.git
    else
        echo 'repo exist'
    fi
else
        cd ~/Mes\ documents/My\ Games/FarmingSimulator2022/
        git clone https://github.com/iSSa-cl/mods.git
fi

sleep 3

