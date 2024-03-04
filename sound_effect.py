import random 
import os 
num=random.randint(1,3)
print(num)
os.system("clear")
print("\033[1m\033[33m[\033[32m─────────────────Booting Termux Terminal─────────────────\033[33m]\033[0m")


# Condition 

if num == 1:
    os.system("mpv Access-Granted.mp3")
elif num==2:
    os.system("mpv Jarvis2.mp3")
else :
    os.system("mpv JARVIS.mp3")
 
###########################################
