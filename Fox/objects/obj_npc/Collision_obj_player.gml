with obj_player {
	if k_up and other.talking = 0 {
		other.alarm[0] = 180
		other.talking = 1
	}
}