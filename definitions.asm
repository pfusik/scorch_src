;   @com.wudsn.ide.asm.mainsourcefile=scorch.asm

screenheight = 200
screenBytes = 40
screenwidth = screenBytes*8 ; Max screenwidth = 512!!!
margin = 48 ;mountain drawing Y variable margin
display = $1010 ;screen takes $2K due to clearing routine
MaxPlayers = 6
maxOptions = 7  ;number of all options
PMOffset = $23 ; P/M to graphics offset


;Weapon prices (*10 on screen)
price_Baby_Missile___ = 0      ;_0
price_Missile________ = 96     ;_1
price_Baby_Nuke______ = 111    ;_2
price_Nuke___________ = 144    ;_3
price_LeapFrog_______ = 192    ;_4
price_Funky_Bomb_____ = 293    ;_5
price_MIRV___________ = 456    ;_6
price_Death_s_Head___ = 337    ;_7
price_Napalm_________ = $ffff ;496    ;_8
price_Hot_Napalm_____ = $ffff ;511    ;_9
price_Tracer_________ = 102    ;_10
price_Smoke_Tracer___ = 291    ;_11
price_Baby_Roller____ = 689    ;_12
price_Roller_________ = 600    ;_13
price_Heavy_Roller___ = 592    ;_14
price_Riot_Charge____ = 330    ;_15
price_Riot_Blast_____ = 341    ;_16
price_Riot_Bomb______ = 369    ;_17
price_Heavy_Riot_Bomb = 322    ;_18
price_Baby_Digger____ = 336    ;_19
price_Digger_________ = 276    ;_20
price_Heavy_Digger___ = 253    ;_21
price_Baby_Sandhog___ = 218    ;_22
price_Sandhog________ = 191    ;_23
price_Heavy_Sandhog__ = 305    ;_24
price_Dirt_Clod______ = 104    ;_25
price_Dirt_Ball______ = 130    ;_26
price_Ton_of_Dirt____ = 171    ;_27
price_Liquid_Dirt____ = 530    ;_28
price_Dirt_Charge____ = 581    ;_29
price_Earth_Disrupter = $ffff ;430    ;_30
price_Plasma_Blast___ = $ffff ;274    ;_31
price_Laser__________ = 577    ;_32
price______________33 = 0
price______________34 = 0
price______________35 = 0
price______________36 = 0
price______________37 = 0
price______________38 = 0
price______________39 = 0
price______________40 = 0
price______________41 = 0
price______________42 = 0
price______________43 = 0
price______________44 = 0
price______________45 = 0
price______________46 = 0
price______________47 = 0   
price_White_Flag_____ = $0        ;_48_($30)
price_Heat_Guidance__ = $ffff     ;_49            
price_Bal_Guidance___ = $ffff     ;_50            
price_Horz_Guidance__ = $ffff     ;_51            
price_Vert_Guidance__ = $ffff     ;_52            
price_Lazy_Boy_______ = $ffff     ;_53            
price_Parachute______ =   234     ;_54            
price_StrongParachute =  1000     ;_55            
price_Mag_Deflector__ =   245     ;_56            
price_Shield_________ =   112     ;_57            
price_Force_Shield___ =   268     ;_58            
price_Heavy_Shield___ =   375     ;_59            
price_Super_Mag______ = $ffff     ;_60            
price_Auto_Defense___ =   512     ;_61            
price_Fuel_Tank______ = $ffff     ;_62            
price_Contact_Trigger = $ffff     ;_63
;Weapon indexes (numbers)
ind_Baby_Missile___ = 0
ind_Missile________ = 1
ind_Baby_Nuke______ = 2
ind_Nuke___________ = 3
ind_LeapFrog_______ = 4
ind_Funky_Bomb_____ = 5
ind_MIRV___________ = 6
ind_Death_s_Head___ = 7
ind_Napalm_________ = 8
ind_Hot_Napalm_____ = 9
ind_Tracer_________ = 10
ind_Smoke_Tracer___ = 11
ind_Baby_Roller____ = 12
ind_Roller_________ = 13
ind_Heavy_Roller___ = 14
ind_Riot_Charge____ = 15
ind_Riot_Blast_____ = 16
ind_Riot_Bomb______ = 17
ind_Heavy_Riot_Bomb = 18
ind_Baby_Digger____ = 19
ind_Digger_________ = 20
ind_Heavy_Digger___ = 21
ind_Baby_Sandhog___ = 22
ind_Sandhog________ = 23
ind_Heavy_Sandhog__ = 24
ind_Dirt_Clod______ = 25
ind_Dirt_Ball______ = 26
ind_Ton_of_Dirt____ = 27
ind_Liquid_Dirt____ = 28
ind_Dirt_Charge____ = 29
ind_Earth_Disrupter = 30
ind_Plasma_Blast___ = 31
ind_Laser__________ = 32
ind______________33 = 0
ind______________34 = 0
ind______________35 = 0
ind______________36 = 0
ind______________37 = 0
ind______________38 = 0
ind______________39 = 0
ind______________40 = 0
ind______________41 = 0
ind______________42 = 0
ind______________43 = 0
ind______________44 = 0
ind______________45 = 0
ind______________46 = 0
ind______________47 = 0   
ind_White_Flag_____ = 48
ind_Heat_Guidance__ = 49            
ind_Bal_Guidance___ = 50            
ind_Horz_Guidance__ = 51            
ind_Vert_Guidance__ = 52            
ind_Lazy_Boy_______ = 53            
ind_Parachute______ = 54            
ind_StrongParachute = 55            
ind_Mag_Deflector__ = 56            
ind_Shield_________ = 57            
ind_Force_Shield___ = 58            
ind_Heavy_Shield___ = 59            
ind_Super_Mag______ = 60            
ind_Auto_Defense___ = 61            
ind_Fuel_Tank______ = 62            
ind_Contact_Trigger = 63
;--------------------------------
; names of RMT instruments (sfx)
;--------------------------------
sfx_set_power_1 = $00 ;A
sfx_set_power_2 = $01 ;b
sfx_lightning   = $02 ;c
sfx_dunno       = $03 ;d
sfx_nuke        = $04 ;e
sfx_baby_missile= $05 ;f
sfx_death_begin = $06 ;g
sfx_plasma_1_2  = $07 ;h
sfx_plasma_2_2  = $08 ;i
sfx_napalm      = $09 ;j
sfx_dirt_charge = $0a ;k
sfx_missile_hit = $0b ;l
sfx_funky_hit   = $0c ;m
sfx_shield_on   = $0d ;n
sfx_shield_off  = $0e ;o
sfx_parachute   = $0f ;p
sfx_smoke_cloud = $10 ;q
sfx_riot_blast  = $11 ;r
sfx_sandhog     = $12 ;s
sfx_dirt_chrg_s = $13 ;t
sfx_digger      = $14 ;u
sfx_silencer    = $15 ;v
sfx_next_player = $16 ;w
sfx_purchase    = $17 ;x
sfx_keyclick    = $18 ;y
sfx_shoot       = $19 ;z
sfx_seppuku     = $1a ;1
sfx_liquid_dirt = $1b ;2
