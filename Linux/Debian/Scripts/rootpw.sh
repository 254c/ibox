echo "root:你的password密码" | sudo chpasswd root && sudo sed -i 's/^#?PermitRootLogin./PermitRootLogin yes/g' /etc/ssh/sshd_config && sudo sed -i 's/^#?PasswordAuthentication./PasswordAuthentication yes/g' /etc/ssh/sshd_config && sudo service ssh restart && sudo reboot && echo "Password changed successfully and SSH configuration updated. Restarting Server..." || echo "Failed to change password or update SSH configuration"
