echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/imminion/Vipl /Vipl
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/imminion/Vipl -b $BRANCH /Vipl
fi
cd /Vipl
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
