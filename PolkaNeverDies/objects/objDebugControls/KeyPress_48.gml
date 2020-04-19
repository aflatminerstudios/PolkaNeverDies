/// @description Next Character
// You can write your code in this editor


curChar += 1;
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