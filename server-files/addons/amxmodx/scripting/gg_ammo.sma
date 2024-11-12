#include <amxmodx>
#include <fakemeta_util>
#include <cstrike2>

//pcvars
new gpc_enable, gpc_ffa

//plugin stuff
new dummy[1]

new WeaponsMaxClips[] =
{
	-1, 13, -1, 10,  1,  7,  1,  30, 30,  1,  30,  20,  25, 30, 35, 25, 
	12,  20, 10,  30, 100,  8, 30,  30, 20,  2,  7, 30, 30, -1,  50
}

new gmsgidCurWeapon

public plugin_init()
{
	register_plugin("GunGame AMMO", "2.2", "Prayer")
	
	gpc_enable = register_cvar("gg_ammo", "1")
	gpc_ffa = register_cvar("gg_ammo_ffa", "0")
	
	register_event("DeathMsg", "EVENT_DeathMsg", "a")
	
	gmsgidCurWeapon = get_user_msgid("CurWeapon")
}

public EVENT_DeathMsg()
{
	if(!get_pcvar_num(gpc_enable))
		return 0
	
	static killer
	killer = read_data(1)
	
	if(!is_user_alive(killer) || pev(killer, pev_iuser1))
		return 0
	
	if(get_pcvar_num(gpc_ffa))
	{
		refill_ammo(killer)
		
		return 0
	}
	
	new victim = read_data(2)
	
	if(is_user_connected(victim) && (get_user_team(killer) != get_user_team(victim)))
	{
		refill_ammo(killer)
	}
	
	return 0
}

refill_ammo(id)
{
	new weapon = get_user_weapon(id, dummy[0], dummy[0])
	
	switch(weapon)
	{
		case CSW_KNIFE, CSW_HEGRENADE, CSW_FLASHBANG, CSW_SMOKEGRENADE:
		{
			return
		}
	}
	
	new ent = fm_get_user_weapon_entity(id, weapon)
	
	if(pev_valid(ent))
	{
		set_pdata_int(ent, OFFSET_CLIPAMMO, WeaponsMaxClips[weapon], EXTRAOFFSET_WEAPONS)
		
		message_begin(MSG_ONE, gmsgidCurWeapon, _, id)
		write_byte(1)
		write_byte(weapon)
		write_byte(WeaponsMaxClips[weapon])
		message_end()
	}
}
