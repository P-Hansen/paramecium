/// @description Insert description here
// You can write your code in this editor

other.hp = clamp(other.hp-10, 0, other.maxHp);
owner.hp += 10;
instance_destroy(self);