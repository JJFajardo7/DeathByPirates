
//if(spawnRate > 7) {
//	instance_create_layer(x, y, "Instances", obj_CrowEnemy)
//}

randInt = irandom_range(0, 10)

var enemy = obj_Enemy;

if (randInt = 0) {
	enemy = obj_CrowEnemy
}
else if (randInt = 1){
	enemy = obj_DeathBringerEnemy
}
else if (randInt = 2){
	enemy = obj_FireWormEnemy
}
else if (randInt = 3){
	enemy = obj_GoblinEnemy
}
else if (randInt = 4){
	enemy = obj_StandStillEnemy
}

spawnRate -= spawnRate*.05;

//resets alarm
alarm[0] = (room_speed * spawnRate);