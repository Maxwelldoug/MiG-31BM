                                                               --WEAPONS AND OTHER FOR SU-57--
							--Credits go to Eagly Dynamics For the original missile Codes in which i tuned for the SU-57--

              --Made by CubanAce, R-37 repurposed for MiG-31BM with his permission. WIP, do not expect perfection.--

local RVV_BD =   {
		category		= CAT_AIR_TO_AIR,
		name			= "RVV-BD", -- R-37
		user_name		= _("RVV-BD"),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort = 0,
        Head_Type = 6,
		sigma = {10, 10, 10},
        M = 600.0,
        H_max = 40000.0,
        H_min = 10.0,
        Diam = 380.0,
        Cx_pil = 3,
        D_max = 95000.0, --Maximum Launch range at low altitude--
        D_min = 1000.0,  --Minimum Launch range at low altitude--
        Head_Form = 1,
        Life_Time = 240.0,
        Nr_max = 12,
        v_min = 140.0,    -- minimum speed
        v_mid = 960.0,    -- Average Speed
        Mach_max = 6.0,
        t_b = 0.1,
        t_acc = 6.0,
        t_marsh = 100.0,
        Range_max = 280000.0,
        H_min_t = 20.0,
        Fi_start = 0.3,
        Fi_rak = 3.14152,
        Fi_excort = 0.87,
        Fi_search = 0.87,
        OmViz_max = 0.35,
		warhead = enhanced_a2a_warhead(60.0),
		exhaust = { 1, 1, 1, 1 },
        X_back = -1.555,
        Y_back = -0.193,
        Z_back = 0.0,
        Reflection = 0.081,
        KillDistance = 20.0,
		ccm_k0 = 0.1,
		shape_table_data =
		{
			{
				name	 = "RVV-BD",
				file	 = "RVV-BD",
				life	 = 1,
				fire	 = { 0, 1},
				username = "RVV-BD",
				index = WSTYPE_PLACEHOLDER,
			},
		},
		ModelData = {   58 ,  -- model params count
						1.1 ,   -- characteristic square (характеристическая площадь)

						-- параметры зависимости Сx
						0.07 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.08 , -- Cx_k1 высота пика волнового кризиса
						0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.012, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))

						-- параметры зависимости Cy
						0.6 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.3	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом

						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей

					-- Engine data. Time, fuel flow, thrust.
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,	   -1.0,	6.0,  		60.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	30.0,		3.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	75000.0,	12000.0,	0.0,			0.0,		0.0,           -- thrust, newtons

						 1.0e9, -- таймер самоликвидации, сек
						 200.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 2.5, -- время задержки включения управления (маневр отлета, безопасности), сек
						 80000.0, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 80000.0, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
						 0.15,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 0.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 0.10, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 0.20, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 280000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
						 115000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч, м
						 145000.0, -- дальность ракурс 	180 град, Н=1000м, V=900км/ч, м
						 0.2, -- Уменьшение разрешенной дальности пуска при отклонении вектора скорости носителя от линии визирования цели.
						 0.7, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в нижнюю полусферу. Уменьшение дальности при стрельбе вниз.
						 2.4, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в верхнюю полусферу. Увеличение дальности при стрельбе вверх.
						-3.0, -- Вертикальная плоскость. Угол перегиба кривой разрешенной дальности, верхняя - нижняя полусфера.
						 0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
						 1.0,
						 1.0,
						 1.0,



						 0.2,
						 0.6,
						 1.4,
						-3.0,
						 0.5,
					},
    }

declare_weapon(RVV_BD)


declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{RVV-BD}",
	Picture	=	"RVV-BD.png",
	wsTypeOfWeapon	=	RVV_BD.wsTypeOfWeapon,
	displayName	=	_("RVV-BD"),
	attribute	=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	Count			=	1,
	Weight			=	600,
	Elements	=
	{
		{

			ShapeName	=	"RVV-BD",
			Position	=	{0,	0,	0}
		},
	}, -- end of Elements

declare_loadout(
    {
        category        = CAT_FUEL_TANKS,
        CLSID            = "{SU_57Tank}",
        attribute        =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPEPLACEHOLDER},
        Picture            = "Su57Tank.png",
        displayName        = ("Su-57 Fuel Tank"),
        Weight_Empty    = 50, --kg
        Weight            = 60 +  3.083 * 487, --kg
        Cx_pil            = 0.00141476,
        shape_table_data =
        {
            {
                name     = "SU_57Tank",
                file    = "SU_57Tank";
                life    = 1;
                fire    = { 0, 1};
                username    = "SU_57Tank";
                index    = WSTYPE_PLACEHOLDER;
            },
        },
        Elements    =
        {
            {
                ShapeName    = "SU_57Tank",
            },
        },
    }
)
})

local RVV_AE = {

		category     = CAT_AIR_TO_AIR,
        Name         = RVV_AE, --R-77 RamJet
		user_name		= _("RVV-AE"),
		display_name = _('RVV-AE'),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort = 0,
        Head_Type = 6,
		sigma = {10, 10, 10},
        M = 250.0,
        H_max = 40000.0,
        H_min = 10.0,
        Diam = 380.0,
        Cx_pil = 3,
        D_max = 95000.0,
        D_min = 1000.0,
        Head_Form = 1,
        Life_Time = 240.0,
        Nr_max = 12,
        v_min = 140.0,
        v_mid = 960.0,
        Mach_max = 4.5,
        t_b = 0.1,
        t_acc = 6.0,
        t_marsh = 100.0,
        Range_max = 280000.0,
        H_min_t = 20.0,
        Fi_start = 0.3,
        Fi_rak = 3.14152,
        Fi_excort = 0.87,
        Fi_search = 0.87,
        OmViz_max = 0.35,
		warhead = enhanced_a2a_warhead(25.0),
		exhaust = { 1, 1, 1, 1 },
        X_back = -1.333,
        Y_back = -0.193,
        Z_back = 0.0,
        Reflection = 0.081,
        KillDistance = 20.0,
		ccm_k0 = 0.1,
		shape_table_data =
		{
			{
				name	 = "RVV-AE",
				file	 = "RVV-AE",
				life	 = 1,
				fire	 = { 0, 1},
				username = "RVV-AE",
				index = WSTYPE_PLACEHOLDER,
			},
		},

		ModelData = {   58 ,  -- model params count
						0.6 ,   -- characteristic square (характеристическая площадь)

						-- параметры зависимости Сx
						0.07 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.08 , -- Cx_k1 высота пика волнового кризиса
						0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.012, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))

						-- параметры зависимости Cy
						0.6 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.3	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом

						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей

					-- Engine data. Time, fuel flow, thrust.
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,	   -1.0,	6.0,  		60.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	15.00,		3.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	23000.0,	10000.0,	0.0,			0.0,		0.0,           -- thrust, newtons

						 1.0e9, -- таймер самоликвидации, сек
						 200.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 2.5, -- время задержки включения управления (маневр отлета, безопасности), сек
						 80000.0, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 80000.0, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
						 0.15,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 0.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 0.10, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 0.20, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 160000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
						 100000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч
						 95000.0, -- дальность ракурс 	180(навстречу) град, Н=1000м, V=900км/ч
						 0.2, -- Уменьшение разрешенной дальности пуска при отклонении вектора скорости носителя от линии визирования цели.
						 0.7, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в нижнюю полусферу. Уменьшение дальности при стрельбе вниз.
						 1.0, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в верхнюю полусферу. Увеличение дальности при стрельбе вверх.
						-3.0, -- Вертикальная плоскость. Угол перегиба кривой разрешенной дальности, верхняя - нижняя полусфера.
						 0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
					},
	}


declare_weapon(RVV_AE)

declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{RVV-AE}",
	Picture	=	"RVV-AE.png",
	wsTypeOfWeapon	=	RVV_AE.wsTypeOfWeapon,
	displayName	=	_("RVV-AE"),
	attribute	=	{4,	4,	32,	103,	WSTYPE_PLACEHOLDER},
	Count			=	1,
	Weight			=	250,
	Elements	=
	{
		{

			ShapeName	=	"RVV-AE",
			Position	=	{0,	0,	0}
		},
	}, -- end of Elements
})

local RVV_M = {

		category     = CAT_AIR_TO_AIR,
        Name         = RVV_M, --K-77M
		user_name		= _("RVV-M"),
		display_name = _('RVV-M'),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort = 0,
        Head_Type = 2,
		sigma = {10, 10, 10},
        M = 190.0,
        H_max = 24400.0,
        H_min = 15.0,
        Diam = 380.0,
        Cx_pil = 5,
        D_max = 60000.0,
        D_min = 1000.0,
        Head_Form = 1,
        Life_Time = 300.0,
        Nr_max = 12,
        v_min = 140.0,
        v_mid = 800.0,
        Mach_max = 4.5,
        t_b = 0.0,
        t_acc = 6.0,
        t_marsh = 40.0,
        Range_max = 140000.0,
        H_min_t = 20.0,
        Fi_start = 0.3,
        Fi_rak = 3.14152,
        Fi_excort = 0.87,
        Fi_search = 0.87,
        OmViz_max = 0.35,
        warhead = enhanced_a2a_warhead(22.0),
        exhaust = { 1, 1, 1, 1 },
        X_back = -1.222,
        Y_back = -0.111,
        Z_back = 0.0,
        Reflection = 0.076,
        KillDistance = 15.0,
		ccm_k0 = 0.0,
		shape_table_data =
		{
			{
				name	 = "RVV-M",
				file	 = "RVV-M",
				life	 = 1,
				fire	 = { 0, 1},
				username = "RVV-M",
				index = WSTYPE_PLACEHOLDER,
			},
		},

		ModelData = {   58 ,  -- model params count
						1.1 ,   -- characteristic square (характеристическая площадь)

						-- параметры зависимости Сx
						0.07 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.08 , -- Cx_k1 высота пика волнового кризиса
						0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.012, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))


						-- параметры зависимости Cy
						0.6 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.3	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом

						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей

					-- Engine data. Time, fuel flow, thrust.
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,	   -1.0,	3.0,  		50.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	15.0,		3.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	35000.0,	30000.0,	0.0,			0.0,		0.0,           -- thrust, newtons

						 1.0e9, -- таймер самоликвидации, сек
						 120.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 2.5, -- время задержки включения управления (маневр отлета, безопасности), сек
						 80000.0, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 80000.0, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
						 0.15,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 280000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
						 115000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч
						 100000.0, -- дальность ракурс 	180(навстречу) град, Н=1000м, V=900км/ч
						 1.0,
						 1.0,
						 1.0,
						 0.2,
						 0.6,
						 1.4,
						-3.0,
						 0.5,
					},
	}


declare_weapon(RVV_M)

declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{RVV-M}",
	Picture	=	"RVV-M.png",
	wsTypeOfWeapon	=	RVV_M.wsTypeOfWeapon,
	displayName	=	_("RVV-M"),
	attribute	=	{4,	4,	32,	104,	WSTYPE_PLACEHOLDER},
	Count			=	1,
	Weight			=	190,
	Elements	=
	{
		{

			ShapeName	=	"RVV-M",
			Position	=	{0,	0,	0}
		},
	}, -- end of Elements
})

local RVV_L =   {
		category		= CAT_AIR_TO_AIR,
		name			= "RVV-L", -- KS-172
		user_name		= _("RVV-L"),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort 			= 1,
        Head_Type = 6,
		sigma = {10, 10, 10},
        M = 748.0,							--gross weight in kg
        H_max = 28000.0,					--Maximum altitude
        H_min = 10.0,						--minimum flight altitude
        Diam = 380.0,						--Case diameter in mm
        Cx_pil = 5,							--Cx as a suspension
        D_max = 40000.0,					--maximum launch range at low altitude
        D_min = 6000.0,						--the minimum launch range
        Head_Form = 1,
        Life_Time = 360.0,
        Nr_max = 12,						--Maximum Overload at turns
        v_min = 140.0,						--Minimum speed
        v_mid = 800.0,						--average speed
        Mach_max = 4.0,						--The maximum Mach number
        t_b = 0.1,							--the engine switching
        t_acc = 6.0,						--amount of accelerator time
        t_marsh = 25.0,						--While working in the marching mode
        Range_max = 120000.0,				--maximum launch range at the maximum height
        H_min_t = 25.0,						--the minimum height above the target terrain, m
        Fi_start = 0.3,
        Fi_rak = 3.14152,
        Fi_excort = 0.87,
        Fi_search = 0.1,
        OmViz_max = 0.35,
        warhead = simple_aa_warhead(50.0),--KG--HE fragmentation warhead
        exhaust = { 1, 1, 1, 1 },
        X_back = -1.888, --Forward/Back Booster Animation.
        Y_back = -0.1,    --Up/Down Booster Animation.
        Z_back = 0.0,     --Left/Right Booster Animation.
        Reflection = 0.079,
        KillDistance = 12.0,
		shape_table_data =
		{
			{
				name	 = "RVV-L",
				file	 = "RVV-L",
				life	 = 1,
				fire	 = { 0, 1},
				username = "RVV-L",
				index = WSTYPE_PLACEHOLDER,
			},
		},
		ModelData = {   58 ,  -- model params count
						1.1 ,   -- characteristic square (характеристическая площадь)

						-- параметры зависимости Сx
						0.07 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.08 , -- Cx_k1 высота пика волнового кризиса
						0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.012, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))

						-- параметры зависимости Cy
						0.6 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.3	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом

						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей

					-- Engine data. Time, fuel flow, thrust.
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,		-1.0,	9.0,  		15.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	20.0,		3.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	70000.0,	12000.0,	0.0,			0.0,		0.0,           -- thrust, newtons

						 1.0e9, -- таймер самоликвидации, сек
						 120.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 2.5, -- время задержки включения управления (маневр отлета, безопасности), сек
						 80000.0, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 80000.0, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
						 0.15,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 127600.0,
						 70000.0,
						 50000.0,
						 0.2,
						 0.6,
						 1.4,
						-3.0,
						0.5,
					},
    }

declare_weapon(RVV_L)


declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{RVV-L}",
	Picture	=	"RVV-L.png",
	wsTypeOfWeapon	=	RVV_L.wsTypeOfWeapon,
	displayName	=	_("RVV-L"),
	attribute	=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	Count			=	1,
	Weight			=	748,
	Elements	=
	{
		{

			ShapeName	=	"RVV-L",
			Position	=	{0,	-0,	0}
		},
	}, -- end of Elements

})


local KH_59MK2 = {

	category		= CAT_MISSILES,
	name			= "KH_59MK2",
	user_name		= _("Kh-59MK2"),
	wsTypeOfWeapon	= {wsType_Weapon, wsType_Missile, wsType_AS_Missile, WSTYPE_PLACEHOLDER},
	scheme			= "anti_radiation_missile",
	class_name		= "wAmmunitionSelfHoming",
	model			= "kh-59mk2",
	NatoName		= "(AS-22)",

	shape_table_data =
	{
		{
			name	 = "kh-59mk2",
			file	 = "kh-59mk2",
			life	 = 1,
			fire	 = { 0, 1},
			username = _("KH_59MK2"),
			index	 = WSTYPE_PLACEHOLDER,
		},
	},

		Escort = 0,
		Head_Type = 3,
		sigma = {5, 5, 5},
		M = 770.0,
		H_max = 300.0,
		H_min = 35,
		Diam = 400.0,
		Cx_pil = 8.0,
		D_max = 285000.0,
		D_min = 10000.0,
		Head_Form = 1,
		Life_Time = 1800.0,
		Nr_max = 18,
		v_min = 180.0,
		v_mid = 275.0,
		Mach_max = 0.9,
		t_b = 0.0,
		t_acc = 1.0,
		t_marsh = 1200.0,
		Range_max = 285000.0,
		H_min_t = 0.0,
		Fi_start = 1,5709,
		Fi_rak = 3.14152,
		Fi_excort = 1,0472,
		Fi_search = 99.9,
		OmViz_max = 99.9,
		warhead = antiship_penetrating_warhead(320, 370),
		-- No exhaust (turbo)
		X_back = -2.0,
		Y_back = -0.2,
		Z_back = 0.0,
		Reflection = 0.02,
		KillDistance = 0.0,
		add_attributes = {"Cruise missiles"},

--Not required since forced LA (Alt + W ) is used.
--Launch Distance Data
		LaunchDistData =
		{
			19,		9,

					100,	150,	200,	250,	300,	350,	400,	450,	500,

			100,	26000,	29000,	31000,	35000,	38000,	41000,	44000,	48000,	52000,
			200,	27000,	29000,	32000,	35000,	39000,	41000,	45000,	48000,	53000,
			400,	27000,	30000,	33000,	36000,	39000,	42000,	46000,	50000,	53000,
			700,	29000,	31000,	34000,	37000,	40000,	44000,	48000,	51000,	55000,
			1000,	30000,	33000,	36000,	39000,	42000,	46000,	49000,	53000,	57000,
			2000,	36000,	38000,	40000,	43000,	47000,	52000,	54000,	58000,	64000,
			3000,	41000,	43000,	46000,	49000,	53000,	57000,	61000,	65000,	140000,
			4000,	49000,	50000,	53000,	55000,	60000,	65000,	129000,	135000,	144000,
			5000,	57000,	58000,	60000,	64000,	67000,	128000,	135000,	143000,	152000,
			6000,	62000,	66000,	70000,	73000,	128000,	134000,	141000,	151000,	162000,
			7000,	86000,	98000,	111000,	126000,	132000,	139000,	149000,	160000,	172000,
			8000,	93000,	106000,	121000,	130000,	136000,	146000,	157000,	168000,	179000,
			9000,	101000,	115000,	130000,	138000,	143000,	153000,	164000,	175000,	186000,
			10000,	110000,	125000,	137000,	148000,	154000,	160000,	171000,	182000,	225000,
			11000,	117000,	130000,	143000,	154000,	169000,	173000,	177000,	215000,	232000,
			12000,	120000,	135000,	146000,	160000,	174000,	190000,	207000,	224000,	239000,
			14000,	129000,	147000,	157000,	171000,	186000,	202000,	218000,	235000,	250000,
			16000,	133000,	149000,	164000,	179000,	194000,	210000,	228000,	242000,	258000,
			18000,	133000,	149000,	166000,	182000,	197000,	213000,	231000,	247000,	266000,
		},

		MinLaunchDistData =
		{
			25,		9,

					100,	150,	200,	250,	300,	350,	400,	450,	500,

			200,	7000,	7000,	8000,	9000,	10000,	10000,	11000,	12000,	13000,
			300,	6000,	7000,	8000,	9000,	10000,	10000,	11000,	12000,	13000,
			400,	6000,	7000,	8000,	9000,	9000,	10000,	11000,	12000,	13000,
			1000,	6000,	7000,	8000,	8000,	9000,	10000,	11000,	12000,	13000,
			2000,	5000,	5000,	5000,	5000,	6000,	6000,	11000,	12000,	13000,
			3000,	5000,	6000,	6000,	7000,	7000,	8000,	8000,	8000,	9000,
			4000,	6000,	7000,	7000,	8000,	8000,	9000,	9000,	10000,	10000,
			5000,	7000,	8000,	8000,	9000,	10000,	10000,	11000,	11000,	12000,
			6000,	8000,	9000,	9000,	10000,	11000,	12000,	12000,	13000,	13000,
			7000,	9000,	10000,	11000,	11000,	12000,	13000,	14000,	14000,	15000,
			8000,	10000,	11000,	12000,	13000,	13000,	14000,	15000,	16000,	17000,
			9000,	11000,	12000,	13000,	14000,	15000,	16000,	17000,	17000,	18000,
			10000,	12000,	13000,	14000,	15000,	16000,	17000,	18000,	19000,	20000,
			11000,	13000,	14000,	16000,	17000,	18000,	19000,	20000,	21000,	22000,
			12000,	14000,	16000,	17000,	18000,	19000,	20000,	22000,	23000,	24000,
			13000,	16000,	17000,	18000,	20000,	21000,	22000,	23000,	25000,	26000,
			14000,	17000,	19000,	20000,	21000,	23000,	24000,	25000,	27000,	28000,
			15000,	18000,	20000,	22000,	23000,	24000,	26000,	27000,	29000,	30000,
			16000,	20000,	22000,	23000,	25000,	26000,	28000,	29000,	31000,	32000,
			17000,	21000,	23000,	25000,	27000,	28000,	30000,	31000,	33000,	35000,
			18000,	23000,	25000,	27000,	28000,	30000,	32000,	33000,	35000,	37000,
			19000,	24000,	26000,	28000,	30000,	32000,	34000,	36000,	37000,	39000,
			20000,	26000,	28000,	30000,	32000,	34000,	36000,	38000,	40000,	42000,
			21000,	27000,	30000,	32000,	34000,	36000,	38000,	40000,	42000,	44000,
			22000,	29000,	31000,	34000,	36000,	38000,	40000,	42000,	44000,	46000,
		},
--]]

-- Missile Flight Model Data
	fm = {
		mass		= 770.0,
		caliber		= 0.400,
		cx_coeff	= {1, 0.3, 0.65, 0.010, 1.6},
		L			= 4.2,
		I			= 1 / 12 * 770.0 * 4.2 * 4.2, -- 1131.9 moment of inertia
		Ma			= 0.3,
		Mw			= 1.116,
		wind_sigma	= 0.0,
		wind_time	= 1000.0,
		Sw			= 1.2,
		dCydA		= {0.07, 0.036},
		A			= 0.06,
		maxAoa		= 0.26,
		finsTau		= 1.25,	-- !	размах крыла / wingspan
		Ma_x		= 2,
		Ma_z		= 2,
		Kw_x		= 0.05,
		addDeplSw		= 1.0,
		wingsDeplDelay	= 1.0,
	},

-- Missile Engine Data
	controller = {
		boost_start = 0.001,
		march_start = 1.001,
	},

	booster = {
		impulse								= 250,
		fuel_mass							= 10.0,
		work_time							= 1.0,
		boost_time							= 0,
		boost_factor						= 0,
		nozzle_position						= {{0, 0, 0}},
		nozzle_orientationXYZ				= {{0.0, -1.0, 0.0}},
		tail_width							= 0.0,
		smoke_color							= {0.0, 0.0, 0.0},
		smoke_transparency					= 0.0,
		custom_smoke_dissipation_factor		= 0.0,
	},

	march = {
		impulse								= 500,
		fuel_mass							= 320.0,
		work_time							= 1200,
		boost_time							= 0,
		boost_factor						= 0,
		nozzle_position						= {{-1.0, -0.2, 0}},
		nozzle_orientationXYZ				= {{0.0, 0.0, 0.0}},
		tail_width							= 0.0,
		smoke_color							= {0.1, 0.1, 0.1},
		smoke_transparency					= 0.3,
		custom_smoke_dissipation_factor		= 0.1,
	},

-- Missile Radar Homing Data
	radio_seeker = {
		FOV					= math.rad(90),
		op_time				= 1500,
		keep_aim_time		= 5,
		pos_memory_time		= 200,
		sens_near_dist		= 300.0,
		sens_far_dist		= 300000.0,
		err_correct_time	= 2.5,
		err_val				= 0.0025,
		calc_aim_dist		= 500000,
		blind_rad_val		= 0.1,
		blind_ctrl_dist		= 2100,
		aim_y_offset		= 3.0,
	},

	simple_seeker =	{
		sensitivity = 0,
		delay		= 0.0,
		FOV			= math.rad(90),
		maxW		= 500,
		opTime		= 9999,
	},

	simple_gyrostab_seeker = {
		omega_max	= math.rad(45)
	},

	fuze_proximity = {
		ignore_inp_armed	= 1,
		arm_delay			= 10,
		radius				= 0,
	},

-- Missile Flight Control Data
	autopilot = {
		delay			 = 1.0,
		K				 = 300.0,
		Kg				 = 5.0,
		Ki				 = 0.0,
		finsLimit		 = 0.5,
		useJumpByDefault = 0,
		J_Power_K		 = 1.2,
		J_Diff_K		 = 0.3,
		J_Int_K			 = 0.0,
		J_Angle_K		 =  math.rad(15),
		J_FinAngle_K	 =  math.rad(25),
		J_Angle_W		 = 3.5,
	},

	start_helper = {
		delay				= 1.0,
		power				= 0.1,
		time				= 1,
		use_local_coord		= 0,
		max_vel				= 200,
		max_height			= 100,
		vh_logic_or			= 0,
	},

	warhead		= antiship_penetrating_warhead(310, 370),
	warhead_air = antiship_penetrating_warhead(310, 370),
}

declare_weapon(KH_59MK2, { mass = 770 })

declare_loadout(
	{
		category		= CAT_MISSILES,
		Picture			= "KH-59MK2.png",
		displayName		= KH_59MK2.user_name,
		Weight			= KH_59MK2.mass,
		CLSID			= "{KH_59MK2}",
		attribute		= KH_59MK2.wsTypeOfWeapon,
		Count			= 1,
		Cx_pil			= 0.001,
		ejectImpulse	= 5000,
		Elements		=
		{
			[1]	=
			{
				DrawArgs	=
				{
					[1]	=	{1,	1},
					[2]	=	{2,	1},
				}, -- end of DrawArgs
				Position	=	{0,	0,	0},
				ShapeName	=	"KH-59MK2",
					},
		}, -- end of Elements
	}
)
