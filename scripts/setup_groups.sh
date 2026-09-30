# Access to serial ports (e.g., /dev/ttyUSB0, /dev/ttyACM0)
sudo usermod -aG dialout $USER

# Access to programmers and debuggers (JTAG, SWD, USB)
sudo usermod -aG plugdev $USER

# Access to network interfaces for packet analyzers
sudo usermod -aG wireshark $USER

# Access to Docker containers
sudo usermod -aG docker $USER