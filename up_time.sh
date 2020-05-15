clear
t1=$(node -e "console.log(new Date().getTime())")
./build.sh
t2=$(node -e "console.log(new Date().getTime())")
node -e "console.log(($t2-$t1)/1000+' seconds')"
