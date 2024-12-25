echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Kanhaiya960/Ultra-Forward-Bot Kanhaiya960/Ultra-Forward-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Kanhaiya960/Ultra-Forward-Bot -b $BRANCH /Ultra-Forward-Bot
fi
cd Kanhaiya960/Ultra-Forward-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
