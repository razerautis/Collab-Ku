#Script V3
#Auto Create X-RDP On Google Colab
#Chrome Installed

rm -fr google-xrdp-v3.sh
echo "PROGRESS TIME : 5 MINUTES"
echo "andovi"
echo ""
nohup ./ngrok tcp --region ap 3389 &>/dev/null &
echo "-Installing xrdp component"
sudo apt install lxde > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo " Done."
echo "-Installing chrome"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F > /dev/null 2>&1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt-get install --assume-yes --fix-broken > /dev/null 2>&1
echo " Done."
echo ""
sudo service xrdp start > /dev/null 2>&1
echo "========================"
echo "    YOUR X-RDP INFO"
echo "========================"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Username: andovi"
echo "Password: juventus"
