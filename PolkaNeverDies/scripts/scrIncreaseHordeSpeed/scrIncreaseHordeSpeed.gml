///@func scrIncreaseHordeSpeed()
///@desc Increases horde speed by set amount

with (objHorde) {
  if (moveSpeed < maxSpeed) {
    moveSpeed += addSpeed; 
  } 
}