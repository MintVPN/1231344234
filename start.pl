#!/usr/bin/perl
use Term::ANSIColor;

die "Must run as root\n" if $> != 0;

print color 'bright_green';
 



print q{

  .---------------.
  | Usage: --help |
  '---------------'
      ^      (\_/)
      '----- (O.o)
             (> <)



        
};

print "    \n";
print "    \n";
print "    \n";
print "    \n";
print "    \n";
print "    \n";
print "    \n";
print "    \n";


 if ($ARGV[0] =~ "--help" )  
          {
print "whoami    \n";
print "ssh    \n";
print "CFexploit    \n";
print "HashID    \n";
print "FaceBook    \n";
print "WifiExploit    \n";
print "email-crack    \n";
print "0wifi    \n";
print "admin-scan    \n";
print "GeoIP    \n";
print "xmlrpc-brute    \n";
print "cpanel-brute    \n";
print "DDOS    \n";
     }



if ($ARGV[0] =~ "DDOS" )  
          {

system "./ddos.sh";
sleep(2);  
 
     }

if ($ARGV[0] =~ "cpanel-brute" )  
          {

system "./cpan.sh";
sleep(2);  
 
     }

if ($ARGV[0] =~ "xmlrpc-brute" )  
          {

system "./xmlpc.sh";
sleep(2);  
 
     }

if ($ARGV[0] =~ "GeoIP" )  
          {

system "./geoip.sh";
sleep(2);  
 
     }

if ($ARGV[0] =~ "admin-scan" )  
          {

system "perl admins.pl";
sleep(2);  
 
     }



if ($ARGV[0] =~ "0wifi" )  
          {

system "sudo python 0wifi.py";
sleep(2);  
 
     }

if ($ARGV[0] =~ "email-crack" )  
          {

system "python email.py";
sleep(2);  
 
     }

if ($ARGV[0] =~ "WifiExploit" )  
          {

system "python wifi.py";
sleep(2);  
 
     }

if ($ARGV[0] =~ "FaceBook" )  
          {

system "./fb.sh";
sleep(2);  
 
     }
                    

if ($ARGV[0] =~ "ssh" )  
          {

system "./ssh.sh";
sleep(2);  
 
     }

if ($ARGV[0] =~ "HashID" )  
          {

system "python hashid.py";
sleep(2);  
 
     }


if ($ARGV[0] =~ "CFexploit" )  
          {

system "python cf.py";
sleep(2);  
 
     }


 if ($ARGV[0] =~ "whoami" )  
          {
print "You Are:    \n";
system "whoami";

     }



