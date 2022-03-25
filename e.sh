#!/bin/bash
for f in `ls /usr/share/gettext/intl`; do
 n=1
 LOS=$(shuf -i1-12 -n1)
 SLEEP=$(echo "scale=1; .03+$LOS/60" | bc )
 while read line; do    
  IFS=''
  ((n++))
  if [ $n -gt 40 ] ; then 
   n=1
   LOS=$(shuf -i1-9 -n1)
   SLEEP=$(echo "scale=1; .03+$LOS/60" | bc )
  fi
  echo "$line"
  sleep $SLEEP
 done < "/usr/share/gettext/intl/$f"
 sleep .5
done
sleep 2
