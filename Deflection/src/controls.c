#include <genesis.h>
#include "physics.h"
#include "controls.h"

void control_character(Character * c, u16 joy_id)
{
	static const mask_directionals = (BUTTON_UP   |
									  BUTTON_DOWN |
									  BUTTON_LEFT |
									  BUTTON_RIGHT);

	u16 joy_state = JOY_readJoypad(joy_id);
	joy_state 	  = JOY_readJoypad(joy_id); // debounce
<<<<<<< HEAD

	u16 dir_input = joy_state & mask_directionals;

	if (dir_input & (BUTTON_LEFT | BUTTON_RIGHT) && dir_input & (BUTTON_DOWN | BUTTON_UP))
	{
		if (dir_input & BUTTON_LEFT)
		{
			c->position.x = fix32Sub(c->position.x, c->diag_move_spd);
		}
		else if (dir_input & BUTTON_RIGHT)
		{
			c->position.x = fix32Add(c->diag_move_spd, c->position.x);
		}

		if (dir_input & BUTTON_UP)
		{
			c->position.y = fix32Sub(c->position.y, c->diag_move_spd);
		}
		else if (dir_input & BUTTON_DOWN)
		{
			c->position.y = fix32Add(c->position.y, c->diag_move_spd);
		}
	}
	else
	{
		if (dir_input & BUTTON_LEFT)
		{
			c->position.x = fix32Sub(c->position.x, c->lin_move_spd);
		}
		else if (dir_input & BUTTON_RIGHT)
		{
			c->position.x = fix32Add(c->lin_move_spd, c->position.x);
		}

		else if (dir_input & BUTTON_UP)
		{
			c->position.y = fix32Sub(c->position.y, c->lin_move_spd);
		}
		else if (dir_input & BUTTON_DOWN)
		{
			c->position.y = fix32Add(c->position.y, c->lin_move_spd);
		}
	}
}
