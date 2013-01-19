showmenu(){
echo -e "----------MENU---------"
echo "1. Program pierwszy: dwumian Newtona"
echo "2. Program drugi"
echo "3. Program trzeci"
echo "4. Program czwarty"
echo "5. Wyjscie"
echo "-----------------------"
}

newt(){
a=1
b=1
c=1
for ((i=1;$i<=$1;i++)) do
    a=$(($a*$i))
done
for ((i=1;$i<=$2;i++)) do
    b=$(($b*$i))
done
for ((i=1;$i<=$(($1-$2));i++)) do
    c=$(($c*$i))
done
wynik=$(($a/$(($b*$c))));
echo $wynik;
}

while true
do
echo -e "\n"
showmenu
echo -e "\n"
echo "Wybierz program:"
read choice
echo -e "\n"
case "$choice" in

"1")
echo "Newton(n,k) = n!/(n-k)!k!"
echo "Podaj n"
read n
echo "Podaj k"
read k
echo -e "\n"
wynik=$(newt $n $k)
echo "wynik Newton($n,$k): $wynik"
;;

"2")
echo "Tu bedzie drugi program"
;;

"3")
echo "Tu bedzie trzeci program"
;;

"4")
echo "Tu bedzie czwarty program"
;;

"5")
echo -e "Zamkniecie programu\n"
exit 0
;;
*)
echo "Prosze wybrac poprwany numer programu"
;;
esac
done
