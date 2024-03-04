


#!/usr/env/python2
import requests


url = "http://www.google.com"
timeout = 5.
try:
    request = requests. get(url, timeout=timeout)
    print("         \033[1m\033[42m ⚡Connected To \033[31mInternet⚡ \033[0m")
except (requests. ConnectionError, requests. Timeout) as exception:
    print("         \033[1m\033[42m 🌦Unable To \033[31mConnect🌦 \033[0m")
