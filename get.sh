DD=$(date +%-d)
cookie=""
session="Cookie: $cookie"

curl https://adventofcode.com/2018/day/$DD | pbcopy
touch ./prompts/day_$DD.html
pbpaste > ./prompts/day_$DD.html

curl  https://adventofcode.com/2018/day/$DD/input --header "$session" | pbcopy
touch ./inputs/day_$DD.txt
pbpaste > ./inputs/day_$DD.txt