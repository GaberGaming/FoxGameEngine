// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_input(){
	k_left = -keyboard_check(vk_left)
	k_right = keyboard_check(vk_right)
	k_jump_press = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("Y")) 
	k_jump_release = keyboard_check_released(ord("Z")) || keyboard_check_released(ord("Y"))
	k_attack = keyboard_check_pressed(ord("X"))
	k_up = keyboard_check(vk_up)
	k_up2 = keyboard_check_pressed(vk_up)
	k_down = keyboard_check_pressed(vk_down)
	k_run = keyboard_check(vk_shift)
	k_attack_down = keyboard_check(ord("X"))
	k_kick = keyboard_check_pressed(ord("C"))
}