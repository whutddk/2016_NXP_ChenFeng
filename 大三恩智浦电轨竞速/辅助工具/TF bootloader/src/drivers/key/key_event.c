#include "key_event.h"
#include "include.h"
#include "OLED.h"


void deal_key_event()
{
    KEY_MSG_t keymsg;

    while(get_key_msg(& keymsg))     //获得按键就进行处理
    {
        if(keymsg.status == KEY_DOWN)
        {
            switch(keymsg.key)
            {
            case KEY_UPP:    				
                             break;

            case KEY_DOWNN:
                             break;

            case KEY_L:		
                             break;

            case KEY_R:
                             break;

            case KEY_OK:	
                             break;

            default:         break;
            }
        }
        else if(keymsg.status == KEY_HOLD)
        {
            switch(keymsg.key)
            {
            case KEY_UPP:
                             break;

            case KEY_DOWNN:
                             break;

            case KEY_L:
                             break;

            case KEY_R:		
                             break;

			case KEY_OK:			
			                break;
				
            default:        break;
            }
        }	
    }
}

