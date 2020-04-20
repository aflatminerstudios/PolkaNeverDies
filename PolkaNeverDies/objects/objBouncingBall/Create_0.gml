/// @description Initialize Variables
// You can write your code in this editor

xMovement = 100;
maxHeight = 50;
baseX = x;
baseY = y;
startMove = 0;
measureLength = 3;
beats = 0;

xSpeed = 5;
ySpeed = 3;

//TODO: Set this to go with song beat
steps = room_speed * 60/objBeat.bpm;

bouncing = false;
falling = false;

/*
goal0 = instance_create_depth(x - xMovement, y, depth, objBallGoal);
goal1 = instance_create_depth(x, y, depth, objBallGoal);
goal2 = instance_create_depth(x + xMovement, y, depth, objBallGoal);
goal3 = instance_create_depth(x + xMovement*2, y, depth, objBallGoal);
*/

scrBounceBall();