if [ -z $UPSTREAM_REPO ]
then
  echo "Installing Latest Release"
  git clone https://github.com/gillharyana/V3.git /V3
else
  echo "Updating from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /V3
fi
cd /V3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
