DD=$(date +%-d)
cookie=$(< .secrets.env)
session="Cookie: $cookie"
curl https://adventofcode.com/2018/day/$DD > prompts/day_$DD.html
curl https://adventofcode.com/2018/day/$DD/input --header "$session" > inputs/day_$DD.txt
