showmenu(){
echo -e "----------MENU---------"
echo "1. Program pierwszy: dwumian Newtona"
echo "2. Program drugi: Podzial na czynniki pierwsze"
echo "3. Program trzeci: Iloczyn skalarny dwóch tablic"
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
while [ $dzielnik -le $n ] ; do
	if [ $((n%dzielnik)) -eq 0 ] ;
	then
	cz[k]=$dzielnik
	k=$((k+1))
	n=$((n/dzielnik))
		elif [ $dzielnik -lt $n ] ; then
		dzielnik=$((dzielnik+1))
	#	k=$((k-1))
	fi
done
for ((;k>=0;k--)) do
echo ${cz[k]}
done
}

iloczyn(){
suma=0
tab1=()
tab2=()
for ((i=0;$i<$1;i++)) ; do
    read tab1[i]
done
for ((i=0;$i<$1;i++)) ; do
    read tab2[i]
done
echo "Elementy pierwszej tablicy:"
for ((i=0;$i<$1;i++)) ; do
    echo -n "$((tab1[i])) "
done
echo -e "\nElementy drugiej tablicy:"
for ((i=0;$i<$1;i++)) ; do
    echo -n "$((tab2[i])) "
done
echo -e "\n"
i=0
while (($i<$1)) ; do
    suma=$(($suma+$(($((tab1[i]))*$((tab2[i]))))))
    i=$(($i+1))
done
echo "Wynik iloczynu skalarnego tych tablic wynosi: $suma"
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
while [ $n -lt $k ] ; do
echo "Podaj n, ktore jest rowne, badz wieksze od k"
echo "Podaj n"
read n
echo "Podaj k"
read k
echo -e "\n"
done
wynik=$(newt $n $k)
echo "wynik Newton($n,$k): $wynik"
;;

"2")
echo "Podzial liczby naturalnej na czynniki "
echo "Podaj liczbe naturalna wieksza niz 1: "
read n
while [ $n -le 1 ] ; do
echo "Podales zla liczbe. Podaj liczbe naturalna WIEKSZA niz 1: "
read n
done
echo -e "\nCzynniki pierwsze liczby: "
cz[k]=$(czynn $n) #76 linia
echo ${cz[k]}
;;

"3")
echo "Iloczyn skalarny dwóch tablic"
echo "Ile liczb w tablicach?"
read n
echo "Podaj elementy tych tablic"
wynik=$(iloczyn $n)
echo "$wynik"
;;         
"4")

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

