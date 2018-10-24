_camera = camera_create();
view_camera[0] = _camera;

if(instance_exists(oPlayer))
	_follow = oPlayer;
else
	_follow = oEnemyGreen;
	
_latency = 0.045;

_vWidth = 320;
_vHeight = 180;

_vWidthHalf = _vWidth / 2;
_vHeightHalf = _vHeight / 2;

_screenshakeX = 0;
_screenshakeY = 0;
_screenshakeDuration = 0;

var view_lookat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var project_ortho = matrix_build_projection_ortho(_vWidth, _vHeight, -99999, 99999);

camera_set_view_mat(_camera, view_lookat);
camera_set_proj_mat(_camera, project_ortho);