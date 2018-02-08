/// @description 

// Inherit the parent event
event_inherited();
sprite_index = choose(spr_coinGold,spr_coinGold,spr_coinBronze,spr_coinSilver);
image_index = irandom(4);
image_speed = random_range(0.8,1.2);
vy = random_range(-2,-5);
vx = random_range(-2,2);
bouncey = true;
e = 0.6;

pickupCD = 30;