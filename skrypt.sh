showmenu(){
echo -e "\033[1;32m----------------------MENU------------------------\033[0m"
echo -e "\033[1;30m 1. Program pierwszy: dwumian Newtona"
echo -e " 2. Program drugi: Podzial na czynniki pierwsze"
echo -e " 3. Program trzeci: Iloczyn skalarny dwoch tablic"
echo -e " 4. Program czwarty: Ciag Fibonacciego"
echo -e " 5. Program piaty: Szybkie potegowanie\033[0m"
echo -e "\033[0;31m 6. WYJSCIE\033[0m"
echo -e "\033[1;32m--------------------------------------------------\033[0m"
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
echo -e "\n\033[1;34mElementy pierwszej tablicy :\033[0m\033[0;32m"
for ((i=0;$i<$1;i++)) ; do
    echo -n "$((tab1[i])) "
done
echo -e "\n\033[0m\033[1;34mElementy drugiej tablicy :\033[0m\033[0;32m"
for ((i=0;$i<$1;i++)) ; do
    echo -n "$((tab2[i])) "
done
echo -e "\n"
i=0
while (($i<$1)) ; do
    suma=$(($suma+$(($((tab1[i]))*$((tab2[i]))))))
    i=$(($i+1))
done
echo -e "\033[0m\033[1;34mWynik iloczynu skalarnego tych tablic wynosi: \033[0m\033[0;32m$suma\033[0m"
}


function fib {
a=0
b=1
i=0

	while [ $i -le $n ] ;
	do
	  echo -e "\033[1;34mCiag Fibonacciego o dlugosci $i wynosi : \033[0m\033[0;32m$a\033[0m"
	  sum=$((a+b))
	  a=$b
	  b=$sum
	  i=$((i+1))
	done

}

pot(){
a=$1
n=$2
if [ $(($n%2)) -eq 0 ] ; then
    suma=$a
    z=1
else
    suma=1
    z=0
fi
while [ $n -ne $z ] ; do
    if [ $(($n%2)) -eq 0 ] ; then
	suma=$(($suma*$suma))
	n=$(($n/2))
    else
	suma=$(($suma*$a))
	n=$(($n-1))
    fi
done
echo $suma
}

while true
do
echo -e "\n"
showmenu
echo -e "\n"
echo -e "\033[1;34mWybierz program:\033[0m\033[1;33m"
read choice
echo -e "\n\033[0m"
case "$choice" in

"1")
echo -e "\033[1;34mNewton(n,k) = n!/(n-k)!k!"
echo -e "Podaj n\033[1;33m"
read n
echo -e "\033[0m\033[1;34mPodaj k\033[0m\033[1;33m"
read k
echo -e "\n"
while [ $n -lt $k ] ; do
echo -e "\033[1;34;4mPodaj n, ktore jest rowne, badz wieksze od k !\n\033[24m"
echo -e "Podaj n\033[0m\033[1;33m"
read n
echo -e "\033[1;34mPodaj k\033[1;33m"
read k
echo -e "\n"
done
wynik=$(newt $n $k)
echo -e "\033[1;34mWynik Newton($n,$k): \033[0;32m$wynik"
;;

"2")
echo -e "\033[1;34mPodzial liczby naturalnej na czynniki "
echo -e "Podaj liczbe naturalna wieksza niz 1: \033[0m\033[1;33m"
read n
while [ $n -le 1 ] ; do
echo -e "\033[0m\033[1;34;4mPodales zla liczbe. Podaj liczbe naturalna WIEKSZA niz 1: \033[0m\033[1;33m"
read n
done
echo -e "\n\\033[0m\033[1;34mCzynniki pierwsze liczby: \033[0m"
cz[k]=$(czynn $n) #76 linia
echo -e "\033[0;32m" ${cz[k]}
echo -e "\033[0m"
;;

"3")
echo -e "\033[1;34mIloczyn skalarny dwoch talbic"
echo -e "Ile liczb w tablicach ?\033[0m\033[1;33m"
read n
echo -e "\033[0m\033[1;34mPodaj elementy tych tablic\033[0m\033[1;33m"
wynik=$(iloczyn $n)
echo -e "\033[0m\033[0;32m$wynik\033[0m"
;;         
"4")
echo -e "\033[01;34mPodaj dlugosc ciagu Fibonacciego\033[0m\033[1;33m"
read n
echo -e "\n\033[0m"
fib $n
;;

"5")
echo -e "\033[1;34mPodaj a\033[0m\033[1;33m"
read a
echo -e "\033[0m\033[1;34mPodaj liczbe naturalna n\033[0m\033[1;33m"
read n
while [ $n -lt 0 ] ; do
echo -e "\033[0m\033[1;34;4mPodales zla liczbe. Podaj liczbe naturalna n !\033[0m\033[1;33m"
read n
done
if [ $n -eq 0 ] ; then
echo -e "\033[0m\033[1;34mWynik $a^$n = \033[0m\033[0;32m1\033[0m"
else
    pot=$(pot $a $n)
    echo -e "\033[0m\033[1;34mWynik: $a^$n = \033[0m\033[0;32m$pot\033[0m"
fi
;;

"6")
echo -e "\033[0;31;4mZamkniecie programu\n\n\033[0m"
exit 0
;;
*)
echo -e "\033[1;34;4mProsze wybrac poprawny numer programu !\033[0m"
;;
esac
done

