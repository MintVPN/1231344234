#!/usr/bin/python

os = __import__('os')
from subprocess import check_output
import subprocess
import sys, traceback
import platform
import time

def main():
        try:

                linux = "1"



                print " "
                print " "
                print"   ___           _  __ _ "
                print"  / _ \         (_)/ _(_)"
                print" | | | |_      ___| |_ _ "
                print" | | | \ \ /\ / / |  _| |"
                print" | |_| |\ V  V /| | | | |"
                print"  \___/  \_/\_/ |_|_| |_|"
                print" "
                print " 1) Start"
		print " 2) Exit"
                print" "
                print " "
                print" "

                sukriti = raw_input("[root@0wifi ~]# ")

                while sukriti == linux and platform.system() == "Linux":
                        command = ""
                        proc = subprocess.Popen(command,stdout=subprocess.PIPE,shell=True)
                        (out, err) = proc.communicate()
                        outwithoutreturn = out.rstrip('\n')
                        print outwithoutreturn
                        proc

                        print " "
                        time.sleep(2)
                        print " "
                        number = raw_input("[root@0wifi ~]# ")
                        if number == "get":
                                print "\033[1;36m----------------------------------------------------------------------------\033[1;m"                                

                                wifi0 = os.system("egrep -h -s -A 9 --color -T 'ssid=' /etc/NetworkManager/system-connections/*")
                                print wifi0
                                print "\033[1;36m----------------------------------------------------------------------------\033[1;m"                                

       
                                 
          
        except KeyboardInterrupt:
                print "Shutdown requested...exiting"
        except Exception:
                traceback.print_exc(file=sys.stdout)
        sys.exit(0)

if __name__ == "__main__":
            main()
