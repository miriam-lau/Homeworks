const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question('Would you like some tea?', function(answer) {
    console.log(`You replied ${answer}.`);

    reader.question('Would you like some biscuits?', function(answer2) {
      console.log(`You replied ${answer2}.`);

      const firstRes = (answer === 'yes') ? 'do' : 'don\'t';
      const secondRes = (answer2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}
