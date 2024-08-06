# Basic PySide6 QML test app

Runs on Raspberry Pi OS Bookworm 64 bit

Targeted for 7" touchscreen (800x480)

# Why do I need this?

There's a couple of tricks needed to enter eglfs mode on Raspberry Pi (contained in eglfs.json and .env)

# First time run

```sh
sudo apt install libqt6* qt6* qml6-module-*
python -m venv venv
source venv/bin/activate
set -a
source .env
pip install -r requirements.txt
sudo systemctl stop lightdm
python main.py
```

# After that

```sh
source venv/bin/activate
set -a
source .env
sudo systemctl stop lightdm
python main.py
```

You can skip the systemctl stop lightdm step by setting your Pi to auto login to console instead of desktop.
