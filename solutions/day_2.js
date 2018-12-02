const fs = require('fs');

const input = fs.readFileSync('./inputs/day_2.txt').toString().split('\n');


const totalCounts = {
    doubles: 0,
    triples: 0
}

const countCharacters = ( item ) => {
    const counts = {}
    item.split('').forEach( ( char ) => {
        if(!counts[char]){
            counts[char] = 0;
        };
        counts[char] = counts[char] + 1;
    });
    Object.values( counts ).indexOf(2) > -1 ? totalCounts.doubles = totalCounts.doubles + 1 : null;
    Object.values( counts ).indexOf(3) > -1 ? totalCounts.triples = totalCounts.triples + 1 : null;
}

input.forEach(countCharacters);

console.log(totalCounts.doubles * totalCounts.triples)