function perm (input) {
const numbers = [
      "0",
      "1",
      "abc",
      "def",
      "ghi",
      "jkl",
      "mno",
      "pqrs",
      "tuv",
      "wxyz"
  ];

  let str = input.toString();
  let result = [];

  for (let j = 0; j < str.length; j++) {
      let alphas = numbers[parseInt(str[j])];

      let outerTemp = [];

      for (let k = 0; k < alphas.length; k++) {
          let innerTemp = result.slice(0, result.length);

          if (j === 0) {result.push(alphas[k]); continue;}

          for (let n = 0; n < result.length; n++) {
              innerTemp[n] += alphas[k];
          }
          outerTemp = outerTemp.concat(innerTemp);
      }
      if (j !== 0 ) {result = outerTemp;}
  }

  console.log(result);
}


perm(4155230);
