local self_ID = "MiG-31BM"
declare_plugin(self_ID,
{
displayName     = _("MiG-31M/BM Foxhound"),
developerName   = _("Foxhound Gang"),

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-31M/BM"),

version		 = "1.1",
state		 = "installed",
info		 = _("MiG-31M/BM Foxhound. Originally Edited by Robert, Updated and repaired by WoodenPlankGames and StuntPuppy"),

Skins	=
	{
		{
		    name	= _("MiG-31BM"),
			dir		= "Theme"
		},
	},
	Missions =
	{
		{
			name		    = _("MiG-31BM"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("MiG-31BM"),
			type		= "MiG-31BM",
		},
	},	
InputProfiles =
	{
		["MiG-31BM"] = current_mod_path .. '/Input/MiG-31BM/',
	},
})
mount_vfs_texture_path(current_mod_path.."/Theme/ME")--for simulator loading window
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_model_path    (current_mod_path.."/Cockpit/Shape")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/MiG-31-CPT-TEXTURES")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
----------------------------------------------------------------------------------------
make_flyable('MiG-31BM', current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 4}, current_mod_path..'/Entry/comm.lua')
----------------------------------------------------------------------------------------
dofile(current_mod_path.."/Entry/Views.lua")
dofile(current_mod_path.."/Entry/MiG-31BM.lua")
dofile(current_mod_path.."/Scripts/Weapons.lua")
make_view_settings('MiG-31BM', ViewSettings, SnapViews)
plugin_done()
