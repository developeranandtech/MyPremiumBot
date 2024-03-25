if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/developeranandtech/MyPremiumBot.git /MyPremiumBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MyPremiumBot
fi
cd /MyPremiumBot
pip3 install -U -r requirements.txt
echo "Starting MyPremiumBot...."
python3 bot.py
