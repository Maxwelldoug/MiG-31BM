declare_plugin("MiG-31",
{
displayName     = _("MiG-31 Foxhound "),
developerName   =   "Eagle Dynamics",

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("MiG-31"),

version		 = "1.5.6",
state		 = "installed",
info		 = _("MiG-31 Foxhound. Originally Edited by Robert, Updated and repaired by WoodenPlankGames"),

Skins	=
	{
		{
		    name	= _("MiG-31"),
			dir		= "Theme"
		},
	},
LogBook =
	{
		{
			name		= _("MiG-31"),
			type		= "MiG-31",
		},
	},	
InputProfiles =
	{
		["mig-31"] = current_mod_path .. '/Input',
	},
})
mount_vfs_texture_path(current_mod_path.."/Theme/ME")--for simulator loading window
mount_vfs_model_path    (current_mod_path.."/Cockpit/Shape")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/MiG-31-CPT-TEXTURES")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
----------------------------------------------------------------------------------------
make_flyable('MiG-31', current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 3}, current_mod_path..'/Entry/comm.lua')
----------------------------------------------------------------------------------------
dofile(current_mod_path.."/Entry/Views.lua")
dofile(current_mod_path.."/Entry/MiG-31.lua")
dofile(current_mod_path.."/Scripts/Weapons.lua")
make_view_settings('MiG-31', ViewSettings, SnapViews)
plugin_done()
