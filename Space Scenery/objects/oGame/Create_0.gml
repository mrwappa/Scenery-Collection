/// @descriptions
window_set_cursor(cr_none);
cursor_sprite = sCursor;

TOGGLE_PAUSE = 0;
paused_ = false;
pause_sprite_ = noone;

globalvar k_left;
globalvar k_right;
globalvar k_jump;
globalvar hold_k_jump;
globalvar release_k_jump;
globalvar k_crouch;

room_speed = 60;
globalvar delta;
delta = 1;