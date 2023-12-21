if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/dhanushpro.git /dhanushpro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /dhanushpro
fi
cd /dhanushpro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
