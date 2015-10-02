/// UpdateObjects(servery, clienty, )
///
/// update the positions of all the objects in the game

var _servery, _clienty, _ballx, _bally, _serverScore, _clientScore;

_servery =      argument[0];
_clienty =      argument[1];
_ballx =        argument[2];
_bally =        argument[3];
_serverScore =  argument[4];
_clientScore =  argument[5];


obj_server_paddle.y = _servery;
obj_client_paddle.y = _clienty;

obj_ball.x = _ballx;
obj_ball.y = _bally;

obj_ball.server_score = _serverScore;
obj_ball.client_score = _clientScore;


