
//if(spawnRate > 7) {
//	instance_create_layer(x, y, "Instances", obj_CrowEnemy)
//}

randInt = irandom_range(0, 6)

var enemy = obj_Enemy;

if (randInt = 0) {
	enemy = obj_WormEnemy
}
else if (randInt = 1){
	enemy = obj_DeathBringerEnemy
}
else if (randInt = 2){
	enemy = obj_EelEnemy
}
else if (randInt = 3){
	enemy = obj_EyeballEnemy
}
else if (randInt = 4){
	enemy = obj_SlugEnemy
}
else if (randInt = 5){
	enemy = obj_WaterDragonEnemy
}

instance_create_layer(x,y,"Instances",enemy)

spawnRate -= spawnRate*.05;

//resets alarm
alarm[0] = (room_speed * spawnRate);