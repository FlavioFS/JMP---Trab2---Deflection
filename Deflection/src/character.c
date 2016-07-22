#include "character.h"
#include <stdlib.h>

Character * init_character (const SpriteDefinition * spr_def, fix32 mov_spd)
{
	Character * c = (Character*)malloc(sizeof(Character));
	
	c->pal_index = PAL2;
	
	SPR_initSprite(c->sprite, spr_def, 0, 0,
				   TILE_ATTR(c->pal_index, 0, 0, 0));
				   
	c->position.x = 0.0;
	c->position.y = 0.0;
	
	c->diag_move_spd = mov_spd;
	c->lin_move_spd  = fix32Mul(mov_spd, FIX32(1.41));
	
	return c;
}

void update_character_onscreen(Character * c)
{
	c->sprite->x = fix32ToInt(c->position.x);
	c->sprite->y = fix32ToInt(c->position.y);
	
	SPR_update(c->sprite, 1);
}

void set_character_position(Character * c, fix32 x, fix32 y)
{
	c->position.x = x;
	c->position.y = y;
}

void set_character_palette(Character * c, u16 pal)
{
	SPR_setAttribut(c->sprite,
				  TILE_ATTR(pal, 0, 0, 0));
}

void move_character (Character * c, u16 dir_input)
{
	if (dir_input == 0)
		return;
	
	// in case of diagonal movement
	if (dir_input & (BUTTON_LEFT | BUTTON_RIGHT) & (BUTTON_DOWN | BUTTON_UP))
	{
		if (dir_input & BUTTON_LEFT)
		{
			c->position.x -= c->diag_move_spd;
		}
		else if (dir_input & BUTTON_RIGHT)
		{
			c->position.x += c->diag_move_spd;
		}
		
		if (dir_input & BUTTON_UP)
		{
			c->position.y -= c->diag_move_spd;
		}
		else if (dir_input & BUTTON_DOWN)
		{
			c->position.y += c->diag_move_spd;
		}
	}
	else
	{
		if (dir_input & BUTTON_LEFT)	
		{
			c->position.x -= c->lin_move_spd;
		}
		else if (dir_input & BUTTON_RIGHT)	
		{
			c->position.x += c->lin_move_spd;
		}

		else if (dir_input & BUTTON_UP)		
		{
			c->position.y -= c->lin_move_spd;
		}
		else if (dir_input & BUTTON_DOWN)
		{
			c->position.y += c->lin_move_spd;
		}
	}
}