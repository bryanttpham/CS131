export DATETIME=$(date +%Y%m%d_%H%M%S )
cp ~/CS131/Worksheet6/PRODUCTS/1576734587.txt ~/CS131/Worksheet6/PRODUCTS/1576734587.$DATETIME.txt
rm -f ~/CS131/Worksheet6/PRODUCTS/1576734587.LATEST.txt
ln -s ~/CS131/Worksheet6/PRODUCTS/1576734587.$DATETIME.txt ~/CS131/Worksheet6/PRODUCTS/1576734587.LATEST.txt
cat ~/CS131/Worksheet6/PRODUCTS/1576734587.LATEST.txt

for i in ~/CS131/Worksheet6/PRODUCTS/1576734587.LATEST.txt ; do count=0; total=0; for i in $( awk '{ print $1; }' $i);do total=$(echo $total+$i | bc ); ((count++)); done; echo "scale=2; $total / $count" | bc ; done  |sort -n -r  > ~/CS131/Worksheet6/PRODUCTS/1576734587.AVGRATING.txt
cat ~/CS131/Worksheet6/PRODUCTS/1576734587.AVGRATING.txt
