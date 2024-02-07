if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sahiljangrax/LM_SearchBot/LM_SearchBot.git /LM_SearchBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LM_SearchBot
fi
cd /LM_SearchBot
pip3 install -U -r requirements.txt
echo "Starting LonelyMovies...."
python3 bot.py
