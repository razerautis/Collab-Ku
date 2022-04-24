#Script V3
#Auto Created User Login

import os
username = "andovi" #@param {type:"string"}
password = "juventus" #@param {type:"string"}
print("Creating User and Setting it up")
os.system(f"useradd -m {username}")
os.system(f"adduser {username} sudo")
os.system(f"echo '{username}:{password}' | sudo chpasswd")
os.system("sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd")
print("User Created and Configured")
