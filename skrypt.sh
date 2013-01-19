showmenu(){
echo -e "----------MENU---------"
echo "1. Program pierwszy"
echo "2. Program drugi"
echo "3. Program trzeci"
echo "4. Program czwarty"
echo "5. Wyjscie"
echo "-----------------------"
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
echo "Tu bedzie pierwszy program"
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
