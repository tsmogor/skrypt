showmenu(){
echo -e "----------MENU---------"
echo "1. Program pierwszy: dwumian Newtona"
echo "2. Program drugi: Podzial na czynniki pierwsze"
echo "3. Program trzeci"
echo "4. Program czwarty"
echo "5. Wyjscie"
echo "-----------------------"
}
#10
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
#27

czynn(){
dzielnik=2
i=0
cz=()

#for ((k=0; $dzielnik<$(($1+1)); k++)) do
while [ $dzielnik -le $1 ] ; do
	if [ $((1%dzielnik)) -eq 0 ] ;
	then
	cz[k]=$dzielnik
	k=$((k+1))
	$1=$1/dzielnik
		elif [ $dzielnik -lt $1 ] ; then
		dzielnik=$((dzielnik+1))
	#	k=$((k-1))
	fi	
done
echo ${cz[k]}
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
echo "Podzial liczby naturalnej na czynniki "
echo "Podaj liczbe naturalna wieksza niz 1: "
read n
echo -e "\n Czynniki pierwsze liczby"
cz[k]=$(czynn $n)
for (( i=0; i<k; i++ ))
do
cz[k]=$(czynn $n)
echo ${cz[k]} 
done
;;

"3")
echo "3 program"

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
