if [ -z $UPSTREAM_REPO ]
then
  echo "Installing Latest Release"
  git clone https://github.com/pyrogramx/v2.git /v2
else
  echo "Updating from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /v2
fi
cd /v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
