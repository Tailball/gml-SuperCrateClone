event_inherited();

_maxHspd = 1.85;
_maxVspd = 1.8;

_hp = 3;

//reset from spawn/kill state
_state = enemyStates.walking;
_hitMarker = 0;
_hspd = 0;
_vspd = 0;
_direction = choose(-1, 1);
_hasFallen = false;