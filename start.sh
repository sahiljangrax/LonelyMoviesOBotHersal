if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sahiljangrax/SahilJangraBot/SahilJangraBot.git /SahilJangraBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SahilJangraBot
fi
cd /SahilJangraBot
pip3 install -U -r requirements.txt
echo "Starting LonelyMovies...."
python3 bot.py
