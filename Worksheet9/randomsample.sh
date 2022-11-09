percentage=$(($RANDOM % 100))
let count=($percentage*3105521)/100


while read p 
do
keep=$(($RANDOM % 2))	
if [ $keep -eq 1 ]
then
  echo "$p"
fi

let "count-=1"

if [ $count -eq 0 ]
then
  break
fi

done <  ../../../../../home/bryant/amazon_reviews_us_Books_v1_02.tsv
echo "Done!"

