let arr = [1,2,3,4,5,6];
console.log(arr);
console.log(arr.join());
console.log(arr.join('-la-'));
console.log(arr);
arr[1] = "two";
arr[2] = ["three", true];
console.log(arr);
console.log(arr.flat(1));
console.log("Length of array = " + arr.length);
let x = 1.2;
console.log(x)