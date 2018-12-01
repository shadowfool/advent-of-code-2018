count=0

while read file key log lat
do
  count=$(( $count + $file ))
  echo $count
done < "./inputs/day_1.txt"

echo $count