cat << 'EOF' > install_js8spotter.sh && chmod +x install_js8spotter.sh && ./install_js8spotter.sh
#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt-get update

#Install required python packages
echo "Installing python packages..."
sudo apt install python3-tk -y
sudo apt install python3-pil -y
sudo apt install python-pil.imagetk -y
sudo apt install python3-requests -y
sudo apt install python3-tksnack -y

# Download js8spotter package
echo "Downloading js8spotter zip..."
wget "https://kf7mix.com/files/js8spotter/js8spotter-112b.zip"

#Unzip js8spotter
echo "Unzipping js8spotter..."
unzip js8spotter-112b.zip

#Move into js8spotter directory
echo "Changing directory..."
cd js8spotter-112b/

#Make js8spotter executable
echo "Making js8spotter executable..."
chmod +x js8spotter.py

#Create desktop shortcut
echo "Creating js8spotter desktop shortcut..."
cd ~/Desktop
echo "[Desktop Entry]
Version=1.0
Name=JS8Spotter
Comment=JS8Spotter
Exec=python3 ~/js8spotter-112b/js8spotter.py
Icon=~/js8spotter-112b/js8spotter.ico
Path=~/js8spotter-112b/
Terminal=false
Type=Application" > JS8Spotter.desktop

#Make file exectuable
chmod a+x ~/js8spotter-112b/js8spotter.py
gio set ~/Desktop/JS8Spotter.desktop  metadata::trusted true
cd ~/Desktop
chmod +x ~/Desktop/JS8Spotter.desktop

# Clean up unnecessary files
echo "Cleaning up..."
sudo apt-get autoremove -y
sudo apt-get clean

# Verify installation
echo "Verifying js8spotter installation..."
js8spotter --version

echo "Installation complete. Enjoy using js8spotter!"
echo "JS8Spotter is an incomplete product, resulting in not being able to make shortcut for program."
echo "To start JS8Spotter, there are two options:
1: Right click and choose to run as a program inside js8spotter-112b directory
2: Run the program in terminal with 'python3 /path/to/js8spotter.py."
EOF
