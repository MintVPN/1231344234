 echo "
  .-----------------.
  |  XMLRPC BRUTE   |
  '-----------------'
      ^      (\_/)
      '----- (O.o)
             (> <)

"

echo Enter the url
read url

echo Enter the passlist
read pass

echo Enter Username
read user


python wpexploit.py $url $pass
