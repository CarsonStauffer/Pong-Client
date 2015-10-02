/// Handle data from server

var buffer = argument[0];

var msgid = buffer_read(buffer, buffer_u8);
/*
 *  1 = ping
 *  3 = locations + step changes
 */

switch(msgid) {
    case 1:
        var time = buffer_read(buffer, buffer_u32);
        Ping = current_time - time;
        break;
    case 3:
        var _servery, _clienty, _ballx, _bally, _serverScore, _clientScore;
        
        // Read server paddle location
        _servery = buffer_read(buffer, buffer_u32);
        
        // Read client paddle location
        _clienty = buffer_read(buffer, buffer_u32);
        
        // Read ball location
        _ballx = buffer_read(buffer, buffer_u32);
        _bally = buffer_read(buffer, buffer_u32);
        
        // Read the score
        _serverScore = buffer_read(buffer, buffer_u8);
        _clientScore = buffer_read(buffer, buffer_u8);
        
        UpdateObjects(_servery, _clienty, _ballx, _bally, _serverScore, _clientScore);
        break;
    
}
