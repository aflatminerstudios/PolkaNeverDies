/// @description Previous Character
// You can write your code in this editor


curChar -= 1;
if (curChar < 0) {
  curChar += array_length_1d(charList); 
}
curChar %= array_length_1d(charList);

switch (charList[curChar]) {
    case "right":
      curObj = objBandRight;
      break;
    case "left":
      curObj = objBandLeft;
      break;
    case "up":
      curObj = objBandUp;
      break;
    case "down":
      curObj = objBandDown;
      break;
  }