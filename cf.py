#!/usr/bin/python

import socket
subdomains = ["ftp", "cpanel", "webmail", "forum", "driect-connect", "vb", "forums", "home", "direct", "mail", "access", "admin", "administrator", "email", "downloads", "ssh", "webmin", "paralel", "parallels", "www0", "www", "www1", "www2", "www3", "www4", "www5"]
def creator():
    creator = '''

  /$$$$$$  /$$                           /$$ /$$$$$$$$ /$$                              
 /$$__  $$| $$                          | $$| $$_____/| $$                              
| $$  \__/| $$  /$$$$$$  /$$   /$$  /$$$$$$$| $$      | $$  /$$$$$$   /$$$$$$   /$$$$$$ 
| $$      | $$ /$$__  $$| $$  | $$ /$$__  $$| $$$$$   | $$ |____  $$ /$$__  $$ /$$__  $$
| $$      | $$| $$  \ $$| $$  | $$| $$  | $$| $$__/   | $$  /$$$$$$$| $$  \__/| $$$$$$$$
| $$    $$| $$| $$  | $$| $$  | $$| $$  | $$| $$      | $$ /$$__  $$| $$      | $$_____/
|  $$$$$$/| $$|  $$$$$$/|  $$$$$$/|  $$$$$$$| $$      | $$|  $$$$$$$| $$      |  $$$$$$$
 \______/ |__/ \______/  \______/  \_______/|__/      |__/ \_______/|__/       \_______/
                                                                                        
                               


'''
    print(creator)
creator()
link = raw_input("[root@Cloudflare ~]# ")
for sbdm in subdomains:
    try:
       hosts = str(sbdm) + "." + str(link)
       trueip = socket.gethostbyname(str(hosts))
       print "Exploiting : " + str(trueip)
    except:
            pass

